# SOGT Project with Docker

###  本文档旨在引导您安装并初步配置SOGT的Docker image

## 第一步 配置环境
#### 1. 安装Docker
请根据您的系统安装合适的Docker应用  
参考链接   www.docker.com

#### 2. 安装Git
请根据您的系统安装对应的Git 在接下来的镜像拉取阶段会使用到Git


## 第二步 使用脚本程序管理SOGT镜像
#### 1.使用wget下载配置脚本
```shell
wget https://github.com/LionTao/SOGT/blob/master/sogt.sh
```

#### 2.使用bash脚本控制容器
##### a. 启动脚本
方法一 给予脚本文件执行权限
```shell
(sudo) chmod +x  {path to sogt.sh}/sogt.sh
```
方法二 使用基本命令
```shell
sh sogt.sh
```

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
```
Ctrl+Q+P 
Ctrl+Q
```
来退出容器内部的控制台并让Docker保持后台运行

至此，Docker容器搭建完成

建议您在初次完成配置后使用脚本内的保存功能保存脚本配置，否则在您删除容器后可能需要重新配置您的容器内容
##### c.日常操作
脚本提供容器起停，保存，删除，重启等基本操作



****我们在Ubuntu系统测试通过，其他系统不能保证一定能正确运行****

联系我们 www.sumsc.xin
作者： LionTao  
Email：1024503653@qq.com
