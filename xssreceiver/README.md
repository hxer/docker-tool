
## 源码

[github BlueLotus_XSSReceiver][1]

## install

code/config.php，指定xss数据、我的js、js模板的存放目录，以及数据是否启用加密、加密密码、与加密方法（详细说明见文件注释）

```
define('PASS', '2a05218c7aa0a6dbd370985d984627b8');
define('DATA_PATH', 'data');
define('JS_TEMPLATE_PATH', 'template');
define('MY_JS_PATH', 'myjs');
define('ENABLE_ENCRYPT', true);
define('ENCRYPT_PASS', "bluelotus");
define('ENCRYPT_TYPE', "RC4");
```

* PASS为登录密码，可用

```
php -r "$salt='!KTMdg#^^I6Z!deIVR#SgpAI6qTN7oVl';$key='你的密码';$key=md5($salt.$key.$salt);$key=md5($salt.$key.$salt);$key=md5($salt.$key.$salt);echo $key;"

生成密码hash
```

* 赋予DATA_PATH，MY_JS_PATH，JS_TEMPLATE_PATH对应的目录写权限

* 当有请求访问/index.php?a=xxx&b=xxxx，所有携带数据包括get，post，cookie，httpheaders，客户端信息都会记录

* 可访问admin.php登录查看记录的数据，初始登录密码bluelotus

## 后台登录 --xss

```
http://xxx/admin.php
```

## docker

```
docker run --name xss -d -p 8000:80 janes/xss-receiver
```

[1]: https://github.com/firesunCN/BlueLotus_XSSReceiver