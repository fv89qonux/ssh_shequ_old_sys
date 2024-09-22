## 本项目实现的最终作用是基于SSH社区养老院管理系统
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 仓库管理
 - 养老院员工管理
 - 养老院护工管理
 - 养老院设备管理
 - 养老院食物管理
 - 出入库管理
 - 床位管理
 - 探视来访信息
 - 接待管理
 - 管理员登录
 - 老人外出登记
 - 老人管理
 - 费用管理
### 第2个角色为老人子女角色，实现了如下功能：
 - 修改查看老人个人信息
 - 查看护工信息
 - 老人子女登录
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_shequ_old_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [admin](#admin) |  |
| [appointment](#appointment) | 预约登记表 |
| [bed](#bed) | 床 |
| [bed_type](#bed_type) | 床位类型 |
| [candicate](#candicate) |  |
| [consult](#consult) | 咨询登记表 |
| [device](#device) | 设备使用情况 |
| [diet](#diet) | 饮食 |
| [evaluate](#evaluate) |  |
| [health](#health) |  |
| [info](#info) |  |
| [msg](#msg) |  |
| [nurse](#nurse) | 护工管理 |
| [oper_reper](#oper_reper) | 入库/出库管理 |
| [outlog](#outlog) | 外出 |
| [register](#register) | 入住登记 |
| [repertory](#repertory) | 仓库 |
| [staff](#staff) | 员工 |
| [user](#user) | 用户表 |
| [visit](#visit) | 探视 |
| [voluntor](#voluntor) |  |

**表名：** <a id="admin">admin</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | account |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 账户  |
|  3   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |

**表名：** <a id="appointment">appointment</a>

**说明：** 预约登记表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    N     |  N   |       | '姓名'  |
|  3   | phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | '手机号'  |
|  4   | content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  5   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="bed">bed</a>

**说明：** 床

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | userid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  3   | type |   int   | 10 |   0    |    Y     |  N   |   NULL    | 床类型  |
|  4   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="bed_type">bed_type</a>

**说明：** 床位类型

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | price |   decimal   | 9 |   2    |    Y     |  N   |   NULL    | 价格  |

**表名：** <a id="candicate">candicate</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | btime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  3   | userName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | userid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | voluntorId |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="consult">consult</a>

**说明：** 咨询登记表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | '咨询访客姓名'  |
|  3   | content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | '咨询内容'  |
|  4   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  5   | phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |

**表名：** <a id="device">device</a>

**说明：** 设备使用情况

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | userId |   int   | 10 |   0    |    Y     |  N   |   NULL    | 老人id  |
|  4   | state |   int   | 10 |   0    |    Y     |  N   |   NULL    | 0使用中1使用完成  |
|  5   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="diet">diet</a>

**说明：** 饮食

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  4   | price |   decimal   | 20 |   2    |    Y     |  N   |   NULL    | 价格  |

**表名：** <a id="evaluate">evaluate</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | time |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  3   | txt |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | userName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="health">health</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | age |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | height |   double   | 9 |   2    |    Y     |  N   |   NULL    |   |
|  4   | weight |   double   | 9 |   2    |    Y     |  N   |   NULL    |   |
|  5   | water |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | heart |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | isDrinking |   tinyint   | 4 |   0    |    Y     |  N   |   NULL    |   |
|  8   | uid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="info">info</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | UserId |   int   | 10 |   0    |    N     |  N   |   0    | 老人id  |
|  3   | bedId |   int   | 10 |   0    |    N     |  N   |   0    | 床位id  |
|  4   | state |   int   | 10 |   0    |    N     |  N   |   0    | 是否缴费0未缴1已缴  |
|  5   | amount |   decimal   | 9 |   2    |    Y     |  N   |   NULL    | 缴费金额  |
|  6   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 入住时间  |
|  7   | exit_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 离院时间  |

**表名：** <a id="msg">msg</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |
|  3   | creator |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | img |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | summmary |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | time |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  7   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | type |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="nurse">nurse</a>

**说明：** 护工管理

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | userId |   int   | 10 |   0    |    Y     |  N   |   NULL    | 老人id  |
|  4   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="oper_reper">oper_reper</a>

**说明：** 入库/出库管理

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | rid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 仓库id  |
|  3   | sid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 员工id  |
|  4   | type |   int   | 10 |   0    |    Y     |  N   |   NULL    | 0入库1出库  |
|  5   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="outlog">outlog</a>

**说明：** 外出

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | userId |   int   | 10 |   0    |    Y     |  N   |   NULL    | 老人id  |
|  3   | withName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 陪同人姓名  |
|  4   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="register">register</a>

**说明：** 入住登记

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    N     |  N   |       | 姓名  |
|  3   | age |   int   | 10 |   0    |    N     |  N   |       | 年龄  |
|  4   | sex |   int   | 10 |   0    |    N     |  N   |       | 性别  |
|  5   | remark |   varchar   | 255 |   0    |    N     |  N   |   '无'    |   |
|  6   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="repertory">repertory</a>

**说明：** 仓库

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 仓库名称  |
|  3   | sid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 员工id  |

**表名：** <a id="staff">staff</a>

**说明：** 员工

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | age |   int   | 10 |   0    |    Y     |  N   |   NULL    | 年龄  |
|  4   | phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 手机号码  |
|  5   | position |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 职位  |
|  6   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="user">user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | age |   int   | 10 |   0    |    Y     |  N   |   NULL    | 年龄  |
|  4   | sex |   int   | 10 |   0    |    Y     |  N   |   NULL    | 性别  |
|  5   | bedId |   int   | 10 |   0    |    Y     |  N   |   NULL    | 床位号  |
|  6   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  7   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |

**表名：** <a id="visit">visit</a>

**说明：** 探视

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | userId |   int   | 10 |   0    |    Y     |  N   |   NULL    | 老人id  |
|  4   | relation |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 关系  |
|  5   | create_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  6   | exit_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 离开时间  |

**表名：** <a id="voluntor">voluntor</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | aendTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  3   | astartTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  4   | creaor |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | endTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  7   | ftime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  8   | imgurl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | jnum |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  10   | phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | projectArea |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | startTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  13   | tdesc |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  15   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

