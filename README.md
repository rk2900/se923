系统管理子系统-软工923寝室集体项目
github地址：https://github.com/rk2900/se923
说明：目前还没做IE适配，并且功能除了基础框架，其余较弱。

[ 命令行使用指南 ]

    1 cd WebSites/                                      #进入本机需要存放网页文件的目录
    2 git clone https://github.com/rk2900/se923.git     #自动在当前目录建立文件夹存放这些文件
    4 git pull                                          #每次自己提交代码、写代码前需要pull 把别人的修改应用到本地
    3 git status                                        #查看修改或添加的文件列表
    4 git commit                                        #保存修改节点，-a 添加原先没有的文件 -m 将修改过的文件git 
                                                            例如：git commit -am "First Edit Comments" 表示添加、修改文件到git，
                                                            引号里是随便加的给协同开发者看的东西
    5 git push                                          #最终确定提交代码，例如：git push origin master
                                                            即可上传到origin服务器的master主干目录

======

[ 介绍 ]

    这是一套使用ThinkPHP3.X开发的后台管理系统，用以支持 [在线支付系统] 。

[ 安装方法 ]

    1 创建MYSQL数据库，导入 0527_rk.sql 注意新建一个数据库test，后面要用
    2 根据你的数据库，配置config.php “db_host db_name db_user db_pwd db_port” 
    2 host写你本机localhost 数据库名 数据库用户名 数据库密码 数据库端口，依次填好
	3 后台入口 /admin
	4 后台帐号密码 admin 123456 数据库配置错误会报错返回

[ 目录结构 ]

    |-admin     后台入口跳转路径
    |-Core      系统核心
    |  ├Common      项目公共文件目录
    |  ├Conf        项目配置目录
    |  | ├Admin/config.php      项目后台配置文件
    |  | └Home/config.php       项目前台配置文件
    |  |
    |  ├Lang        项目多语言包目录
    |  | ├en-us         英文言包目录
    |  | └zh-cn         中文言包目录
    |  |
    |  ├Lib         项目类库目录
    |  | ├Action        控制器
    |  | └Model         模型
    |  |
    |  ├config.php      项目配置文件
    |  ├define.php      项目路径常量配置文件
    |  └tags.php        项目扩展行为调用配置文件
    |
    |-Public    公共静态文件目录
    |  ├Admin       后台公共静态目录
    |  ├Home        前台公共静态目录
    |  ├js          公共JS目录
    |  └tips        信息提示跳转页面
    |
    |-Temp      系统缓存目录
    |-Template  项目模板目录
    |  ├Admin/default       后台模板目录
    |  └Home/default        前台模板目录
    |
    |-config.php    网站配置文件
    └-index.php     系统入口文件