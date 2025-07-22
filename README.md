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