# my_lutter

基于GetX 封装的Flutter架构，旨在让开发者快速集成以及开放

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
```
lib/
├── app/
│   ├── bindings/           # 依赖注入绑定
│   │   ├── auth_binding.dart
│   │   └── main_binding.dart
│   ├── modules/            # 功能模块
│   │   ├── auth/           # 登录模块
│   │   │   ├── auth_controller.dart
│   │   │   └── auth_page.dart
│   │   └── main/           # 主模块
│   │       ├── tabs/       # 四个Tab页
│   │       │   ├── home/
│   │       │   ├── explore/
│   │       │   ├── cart/
│   │       │   └── profile/
│   │       ├── main_controller.dart
│   │       └── main_page.dart
│   └── routes/             # 路由管理
│       ├── app_pages.dart
│       └── app_routes.dart
├── data/                   # 数据层
│   ├── local/              # 本地存储
│   │   └── storage_service.dart
│   ├── network/            # 网络请求
│   │   ├── api_service.dart
│   │   ├── base_provider.dart
│   │   └── interceptors.dart
│   └── repositories/       # 仓库
│       └── auth_repository.dart
├── core/                   # 核心工具
│   ├── constants/          # 常量
│   │   └── strings.dart
│   └── utils/              # 工具类
│       └── extensions.dart
└── splash_page.dart        # 启动页
```
```
框架特点

    分层架构:

        视图层: 负责UI展示

        控制器层: 处理业务逻辑

        仓库层: 聚合数据源

        服务层: 提供基础能力(网络、存储)

    状态管理:

        使用GetX的响应式编程(.obs + Obx())

        自动内存管理，无需手动dispose

        细粒度状态更新

    依赖管理:

        GetX Binding自动管理依赖生命周期

        全局服务使用permanent: true保持常驻

        页面级控制器按需创建

    路由管理:

        命名路由系统

        中间件支持(如登录验证)

        平滑的页面过渡动画

    网络模块:

        Dio封装+拦截器

        Token自动管理

        统一错误处理

    本地存储:

        GetStorage轻量级键值存储

        支持对象存储

        自动序列化/反序列化
 
```