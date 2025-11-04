# 鸿蒙工具集 (Toolkit for HarmonyOS)

面向 HarmonyOS Next 开发者的企业级工具库集合,提供网络通信、数据存储、日志调试、安全加密等核心功能。

## 项目简介

鸿蒙工具集采用 **混合架构 (核心 + 扩展)** 设计,按功能域拆分为多个独立的 HAR 包,开发者可按需引入,最大化减少应用包体积。

### 设计原则

- **零冗余**: 每个工具类都经过实战验证,避免"大而全"的臃肿设计
- **高性能**: 满足学途项目的性能要求 (页面加载<3秒, API响应<2秒)
- **类型安全**: 完整的 TypeScript 类型定义,编译期错误检查
- **文档完善**: 每个方法提供详细的 JSDoc 注释和使用示例

## 模块列表

### 第一阶段 - 已发布

| 包名                                   | 说明      | 依赖 | 状态    |
|--------------------------------------|---------|----|-------|
| [@mqxu/toolkit_core](./toolkit_core) | 核心基础工具包 | 无  | ✅ 已完成 |

### 第二阶段 - 计划中

- @mqxu/toolkit_storage (数据存储模块)
- @mqxu/toolkit_security (安全加密模块)
- @mqxu/toolkit_logger (日志调试模块)
- @mqxu/toolkit_network (网络通信模块)

### 第三阶段 - 计划中

- @mqxu/toolkit_ui (UI 组件模块)
- @mqxu/toolkit_utils (工具类模块)
- @mqxu/toolkit_i18n (国际化模块)
- @mqxu/toolkit_animation (动画模块)

## 快速开始

### 安装

```bash
# 安装核心包 (必选)
ohpm install @mqxu/toolkit_core

# 按需安装扩展包
ohpm install @mqxu/toolkit_network
ohpm install @mqxu/toolkit_logger
```

### 基础使用

```typescript
import { StringUtils, DateUtils, MathKit } from '@mqxu/toolkit_core';

// 核心工具
const uuid = StringUtils.generateUUID();
const masked = StringUtils.maskPhone('13812345678'); // "138****5678"
const formatted = DateUtils.format(new Date(), 'yyyy-MM-dd HH:mm:ss');
const percent = MathKit.percentage(45, 100); // 45
```

## 项目结构

```
toolkit/
├── toolkit_core/        # 核心工具包
├── entry/               # 示例应用
└── build-profile.json5
```

## 许可证

Apache-2.0


