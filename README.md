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
