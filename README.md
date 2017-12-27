# SOGT Project with Docker
###### Still in Beta tset (image version:b0.3)
###  本文档旨在引导您安装并初步配置SOGT的Docker image  

# 2017.12.27 （b0.4）修复了管理员无法更改密码的问题  
  
    
    
## 第一步 配置环境
#### 1. 安装Docker
请根据您的系统安装合适的Docker应用  
参考链接   www.docker.com

#### 2. 安装Git
请根据您的系统安装对应的Git 在接下来的镜像拉取阶段会使用到Git


## 第二步 使用脚本程序管理SOGT镜像
#### 1.使用wget下载配置脚本
```shell
wget https://github.com/LionTao/SOGT/raw/master/sogt.sh
```

#### 2.使用bash脚本控制容器
##### a. 启动脚本
方法一 给予脚本文件执行权限(建议使用这种)
```shell
(sudo) chmod +x  {path to sogt.sh}/sogt.sh
(sudo) ./sogt.sh
```
方法二 使用基本命令
```shell
(sudo) bash sogt.sh
```
注意，在Ubuntu下不要使用sh运行此脚本，会报错

##### b. 运行脚本并开始配置
注意：   
当您第一次使用时，请选择“初始化本地镜像(pull)”，  
然后选择“开始运行并进入Docker容器环境”，
当出现  
```shell
root@xxxxxx：
```
时表明您成功进入了容器中。
此时，您可以根据前端文档:[]: 
来个性化配置您的页面。

**特别注意：**
配置完成后请使用：
```shell
Ctrl+Q+P 
Ctrl+Q
```
来退出容器内部的控制台并让Docker保持后台运行

至此，Docker容器搭建完成

建议您在初次完成配置后使用脚本内的保存功能保存脚本配置，否则在您删除容器后可能需要重新配置您的容器内容
##### c.日常操作
脚本提供容器起停，保存，删除，重启等基本操作
Tips:选择重启容器后有时需要尝试敲一下回车以进入容器内部的命令行
管理员首次登录需要注册，管理员学号是：1000000000


#### 高阶指南
建议您自学Docker相关操作避免依赖脚本操作，以获得更好地产品体验  

****我们在Ubuntu系统测试通过，其他系统不能保证一定能正确运行****

联系我们 www.sumsc.xin  
作者:LionTao  
Email：1024503653@qq.com
