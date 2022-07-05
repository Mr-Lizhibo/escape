import json
import requests
import _thread
import time

def is_stock(code):
    params={
        #车的型号
        'sku': 2252111125, #size  xs
        'shopno': code,
        # 需要定期更换user_id
        # 'user_id': 'RkJEODM1MjFENEZBNzU5MTE3RTUzMzBDMjlBNDNFNTAxQzgxRTJBNjY3MjE0MTdERTlDQkE3MTQ3NjA2NjM0Q0IwNDc0NEZBQTNEN0Q2OTI1QjE1RUMwNUU1NDBFNzA4NEExMEQyRkE1NjQ1MzNFRUE4QUIxNEVGNjg4NkVDQzQ0MDJFQkI1Qjk4RUFFMjEwRDQ4NTE5RjhCQzk2RUIwNgGIANTGIANT'
        'user_id': 'M0IyNEYwNDE0N0YyNDhBNjY5NkYwMEExRkQ0NDc0OTM2MTUxODlEMjNGRDQwMTAwODJCMUFFNTg5QTZGMzY2MEEwRkJGMzU4MEQ3QkMwMzI0RkI1MEIyRTlGQ0UzNTk4N0JCQTFDQkI5NzkwODBFQTU5RURENzNEMzI0RTVFRkMyNTBFQTk3Njc5QjAzRTNBQTYzMDdFOEY1QTdDNzY1RgGIANTGIANT'
    }
    headers = {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36'
    }
    url='https://e-gw.giant.com.cn/index.php/api/sku_stock'
    response=requests.post(url=url,headers=headers,data=params)
    page_json=response.json()
    if(page_json['status']==1):
        return page_json['data']['stock']
    else:
        print('需要更换userid')
        _thread.exit()


def st(threadName,deplay,page,per_page):
    url='https://e-gw.giant.com.cn/index.php/api/store_list'
    headers = {
        'server': 'nginx',
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36'
    }
    count = 0
    while (count < 1):
        time.sleep(deplay)
        count += 1
        params={
            # 配置筛选条件
            'per_page': per_page, #每页per_page个店铺
            'page': page,         #第page个店铺
            # 'province':'110000', #北京
            # 'province':'440000',# 广东
            # 'province':'130000',# 河北
            # 'city':'1',
        }
        response=requests.post(url=url,headers=headers,data=params)
        if response.status_code!=503:
            res_json = response.json()
            for ls in res_json['data']:
                # 遍历门店
                code = (ls['code'])
                store_name = ls['name']
                stock_num = is_stock(code)
                # print("%s:%s" % (threadName, time.ctime(time.time())), store_name, stock_num, '位置:', ls['addr1'])
                try:
                    if stock_num > 0:
                        print("%s:%s" % (threadName, time.ctime(time.time())), store_name, stock_num, '位置:',ls['addr1'])
                except:
                        print('stock_num is none')
                        print(threadName, '没货')
                        _thread.exit()



# 创建30个多线程,每页100个数据
for tr_num in range(1, 20):
    _thread.start_new_thread(st,('线程: '+str(tr_num),1,tr_num,50))


while 1:
    pass