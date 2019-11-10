# RestaurantManage

这是一个个人练手小项目，是一个酒店餐饮部分的管理系统，该项目的完成参考了java教程的酒店管理系统。

项目配置：jdk1.8+SQL serve2017+Swing

该系统分为4个部分：

1、前台服务（主要由TipWizardFrame.java实现）功能包括：开台点菜、智能化获取菜品、自动结账。

2、后台管理（主要由manage包实现） 功能包括台号管理、菜系管理、菜品管理。

3、结账报表（主要由frame.check_out包、FixedColumnTablePanel.java实现)功能包括年月日的结账报表。

4、系统安全（主要由frame.user包实现）功能包括修改密码用户管理

项目特色：项目中大量使用监听器：KeyListener监听器的使用，使用户操作更便捷。餐台管理的实时更新，依赖于FocusListener监听器对事件的监听。自动结账依赖于TableModelListener监听器，实时反馈价格表变化。

个人总结：这是本人学习java的第一个实操项目。通过完成该项目，熟悉了OOP的编程思维模式，软件工程开展的流程，包括需求分析，系统设计，数据库设计，公共模块、工具组件的设计等。在编程中熟悉了swing包的使用，jdbc编程，以及java特性中的匿名内部类，循环标识符等

