### docker版部署
- cd /root/SOGT_HTML/src
- vim index.js
- 修改global.config中的APP_URL为服务器的api接口，HOME改为http服务器的域名，并保存
- 根据需要对其他文件进行修改（见“修改建议”）
- cd ..
- npm run build
- cd build/
- mv ./* /var/www/html
- cd /var/www/
- chown -R www-data:www-data html/


###（如果使用docker，请忽视这里）怎样部署
1. 安装npm（开发时所用版本为nodejs8.9.3、npm5.5.1）
1. 克隆所有文件至本地
1. 使用npm start开启调试服务器
1. 打开src/index.js，修改global.config中的APP_URL为服务器的api接口，HOME改为http服务器的域名
1. 根据需要对文件进行修改（见“修改建议”）
1. 使用npm run build进行编译
1. 用mv build/* /var/www/html 将/build文件夹内的文件送至http服务器的DocumentRoot（即/var/www/html）下
2. 进入/var/www 
3. chown -R www-data:www-data html/修改用户权限

###修改建议
1. 文件结构请见tree.txt
2. 修改title：在/public/index.html中，修改title标签。
3. 修改bar标签：/src/SideComponent/Navbar.js，修改第56行
4. 修改首页图片：/src/Pages/Face/FaceCard.js，第46行，将连接替换
5. 修改favicon：在/public中的favicon.ico，随意替换。
6. 二次开发：
  > 前置技能：html+css+js基础，reactJs+react-router+webpack+babel技术栈
  > 在src/Pages中，是各个路由所显示的组件，可以根据需求进行修改
  > - Face-首页
  > - Inbox-收件箱
  > - Draft-新消息，其中富文本编辑器使用braft-editor
  > - Person-个人信息
  > - Organization-组织管理
  > 在src/Network中，是登录组件，可以根据需求进行修改
  > 建议的优化：
  > - 使用redux、mobx或其他工具来管理数据
  > - 重新设计UI


###开发环境与相关链接
- nodejs 8.9.3 (npm5.5.1) https://nodejs.org/en/
- react 16.1.1 https://reactjs.org/
- react-router 4.2  https://reacttraining.com/react-router/web/example/basic
- material-ui-next 1.0.0-beta.21  https://material-ui-next.com/
- braft-editor 1.1.6 https://github.com/margox/braft-editor/