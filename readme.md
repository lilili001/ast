## 分支记录
1. dev: 基础后台功能完成,下单流程完成
1. dev-2018-08-31:
    - 后台产品模块流程优化 ☑ 2018-09-03
    - 产品批量上传功能 ☑ 2018-09-05
    - 后台尺码编辑 ☑ 2018-09-10
    - 前台用户中心, 后台订单流程优化, 订单逻辑整理 ☑ 2018-09-11
    
    - 优惠券
    - 前台登陆注册页面
    - 产品tag
    - 产品咨询
    - google流量分析工具
    - 前台ui(pc,移动)
    - 订单运费模板设置
    - 前后台翻译
    
## passport 入口
1. 登陆：auth/login 
    > 前后台登陆使用一个表
2. 后台入口：backend

## 已完成功能
后台：
产品,分类, 属性, 属性集, 多语言, 多货币, 订单, 物流跟踪, 社会化登陆, 博客

## 发布注意事项
核心模块core用的是3.5.3, 高版本的模块会有兼容问题
静态资源 ```php artisan stylist:publish```的目的是将主题下assets下的目录发布到public文件夹

如果发布的目录不对 注意查看主题下assets下的目录对不对 有时候因为第三方包更新了 所以发布的时候要注意看看 引用文件的路径是否正确

### 安装步骤：

首先要保障各模块发布完毕：
user
media
attribute
page
product
sale
supplier
currency

1. git clone https://github.com/lilili001/ast.git
2. composer install
3. 进入根目录 主题目录 npm install
4. 拷贝产品图片目录至 public/assets/