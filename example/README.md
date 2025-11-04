# 鸿蒙工具集使用示例

本目录提供了鸿蒙工具集各个模块的完整使用示例。

## 目录结构

```
example/
├── README.md                    # 本文件
├── core_examples.md             # 核心工具包示例
├── string_utils_demo.ets        # 字符串工具示例代码
├── date_utils_demo.ets          # 日期工具示例代码
├── math_kit_demo.ets            # 数学工具示例代码
├── device_info_demo.ets         # 设备信息工具示例代码
└── json_converter_demo.ets      # JSON 转换工具示例代码
```

## 快速开始

### 1. 安装依赖

```bash
ohpm install @mqxu/toolkit_core
```

### 2. 导入模块

```typescript
import { StringUtils, DateUtils, MathKit, DeviceInfo, JsonConverter } from '@mqxu/toolkit_core';
```

### 3. 查看示例

每个工具类都提供了独立的示例文件,你可以:

1. 直接查看 `.ets` 文件中的代码示例
2. 复制代码到你的项目中使用
3. 根据注释理解每个方法的用途和参数

## 示例列表

### 核心工具包 (@mqxu/toolkit_core)

- [字符串工具 (StringUtils)](./string_utils_demo.ets) - 提供字符串处理、验证、转换等功能
- [日期工具 (DateUtils)](./date_utils_demo.ets) - 提供日期格式化、解析、计算等功能
- [数学工具 (MathKit)](./math_kit_demo.ets) - 提供数学计算、格式化等功能
- [设备信息 (DeviceInfo)](./device_info_demo.ets) - 提供设备信息获取功能
- [JSON 转换 (JsonConverter)](./json_converter_demo.ets) - 提供 JSON 序列化和反序列化功能

## 运行示例

### 方式一: 在 entry 模块中运行

1. 将示例代码复制到 `entry/src/main/ets/pages/Index.ets`
2. 运行项目查看效果

### 方式二: 在 DevEco Studio 中直接运行

1. 打开示例文件 (如 `string_utils_demo.ets`)
2. 复制代码到页面组件中
3. 运行预览器查看效果

## 常见问题

### Q: 如何导入特定的工具类?

A: 使用 ES6 的解构导入语法:

```typescript
import { StringUtils } from '@mqxu/toolkit_core';
```

### Q: 类型定义在哪里?

A: 所有工具类都包含完整的 TypeScript 类型定义,IDE 会自动提示。

### Q: 如何查看完整的 API 文档?

A: 请参考各个模块的 README 文档:

- [toolkit_core API 文档](../toolkit_core/README.md)

## 贡献示例

如果你有更好的使用示例,欢迎贡献:

1. Fork 本项目
2. 在 `example/` 目录下添加你的示例
3. 提交 Pull Request

## 反馈与支持

如果你在使用过程中遇到问题,请:

1. 查看 [完整文档](../README.md)
2. 搜索 [Issues](https://github.com/mqxu/toolkit/issues)
3. 提交新的 Issue

## 许可证

Apache-2.0
