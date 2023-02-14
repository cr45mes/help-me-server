# 校园跑腿小程序后端

#### 安装教程

1.新建数据库
数据库文件 help.sql

```
CREATE SCHEMA `help` DEFAULT CHARACTER SET utf8mb4 ;
```

2.修改配置文件
路径 pub/config/config.js

```
  MYSQL: {
    host: "localhost",
    user: "root",
    password: "", //数据库密码
    port: "3306",
    database: "help", //数据库名
    timezone: "+08:00",
    dateStrings: true
  },


  APP_ID: "", //微信小程序APPID，必填
  APP_SECRET: "", //微信小程序APP密钥，必填
  Mch_id: "", //商户号,可以不填，原本是用于调用微信支付，后面直接绕过微信支付，自己实现了支付功能
  Mch_key: "", //商户密钥，可以不填，同上
```

3.安装依赖并启动

```
npm install //或者使用yarn
npm start
```

访问[http://localhost:3337](http://localhost:3337)



