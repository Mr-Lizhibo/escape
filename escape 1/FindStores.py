import json
import requests
import _thread
import time
import os

from config import global_config
#导入pymsql模块
import pymysql
#创建连接MYSQL的类
sql_update=[]  #储存sql语句
sql_values=[]  #储存values

# 用户修改sku的值(车的型号)
# sku=global_config.getRaw('config','sku')


def is_stock(code):
    params={
        #车的型号
        'sku': global_config.getRaw('config','sku'), #size
        'shopno': code,
        # 需要定期更换user_id
        'user_id': global_config.getRaw('config','user_id')
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
            # 'province':global_config.getRaw('config','province'),
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
                try:
                    if stock_num > 0:
                        # 实例化数据库
                        # 好不容易写完update语句,发现应该改成insert语句....

                        values=(global_config.getRaw('config','sku'),threadName,time.ctime(time.time()),store_name,ls['addr1'],stock_num)
                        sql_values.append(values)
                        print("%s:%s" % (threadName, time.ctime(time.time())), store_name, stock_num, '位置:',ls['addr1'])
                except:
                        print('stock_num is none')
                        print(threadName, '没货')
                        _thread.exit()
class TestMysql:
    #初始化变量
    def __init__(self,username,host,passwd,database,update_va):
        self.username = username
        self.host = host
        self.passwd = passwd
        self.database = database
        self.update_va = update_va
    # 创建数据库连接
    def conn_mysql(self):
        conn = pymysql.connect(user=self.username, host=self.host, password=self.passwd, db=self.database)
        return conn


    # 关闭数据库的提示信息
    def close_mysql(self):
        print("MySQL is Closed")

    def update_data(self):
        self.conn = self.conn_mysql()
        update_va= self.update_va
        cur = self.conn.cursor()
        insert_sql="INSERT INTO `escape_stock` (`sku`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`) VALUES "
        for ls in update_va:
            ex_sql=insert_sql+str(ls)+";"
            cur.execute(ex_sql)
        self.conn.commit()  # 试了很多次,发现需要commit才行,否则执行不成功...
        cur.close()  #关闭数据库链接
        self.close_mysql()  #提示结束语句

if __name__ == "__main__":
    # 创建30个多线程,每页100个数据
    for tr_num in range(1, 20):
        _thread.start_new_thread(st, ('线程: ' + str(tr_num), 1, tr_num, 50))
    #爬取20s后 存库操作
    time.sleep(40)
    print('爬取时间结束')
    # _thread.exit()

    print('进行存储操作')
    #定义变量
    username = global_config.getRaw('config','username').strip()
    host = global_config.getRaw('config','host').strip()
    passwd = global_config.getRaw('config','passwd')
    database = global_config.getRaw('config','database').strip()
    update_va=sql_values
    #使用try--except
    try:
        #创建TestMysql的实例
        mysql = TestMysql(username,host,passwd,database,update_va)
        mysql.conn_mysql()
        mysql.update_data()
    except pymysql.err.ProgrammingError as e:
        print("Exception Error is %s"%(e))
    except pymysql.err.OperationalError as e:
        print("Exception Error is %s"%(e))

# 摆烂了,到时间自动停止多线程任务
# os.system('python3 mysql连接.py')

# _thread.exit()
#
# while 1:
#     pass


