#tall_ssm
表名	中文含义	介绍
Category	分类表	存放分类信息，如女装，平板电视，沙发等
Property	属性表	存放属性信息，如颜色，重量，品牌，厂商，型号等
Product	产品表	存放产品信息，如LED40EC平板电视机，海尔EC6005热水器
PropertyValue	属性值表	存放属性值信息，如重量是900g,颜色是粉红色
ProductImage	产品图片表	存放产品图片信息，如产品页显示的5个图片
Review	评论表	存放评论信息，如买回来的蜡烛很好用，么么哒
User	用户表	存放用户信息，如斩手狗，千手小粉红
Order	订单表	存放订单信息，包括邮寄地址，电话号码等信息
OrderItem	订单项表	存放订单项信息，包括购买产品种类，数量等

表关系
一	多
Category-分类	Product-产品
Category-分类	Property-属性
Property-属性	PropertyValue-属性值
Product-产品	PropertyValue-属性值
Product-产品	ProductImage-产品图片
Product-产品	Review-评价
User-用户	Order-订单
Product-产品	OrderItem-订单项
User-用户	OrderItem-订单项
Order-订单	OrderItem-订单项
User-用户	Review-评价
经过这个项目，完成了如下的一系列典型场景功能
1. 购物车
立即购买 加入购物车 查看购物车页面 购物车页面操作

2. 订单状态流转
生成订单 确认支付 后台发货 确认收货 评价

3. CRUD 
后台各种功能

4. 分页
后台各种功能

5. 一类产品多属性配置
属性管理

6. 一款产品多图片维护
产品图片管理

7. 产品展示
前台首页 前台产品页

8. 搜索查询-基于elastic search
搜索

9. 登录、注册 - 基于 shiro
注册 登录 退出

10. 登录验证 - 基于 shiro
登录状态拦截器

11. 事务管理
ForeRESTController.对createOrder进行事务管理
等等 。。。

12. 缓存处理（待更新）
全站数据通过 redis 进行了缓存
