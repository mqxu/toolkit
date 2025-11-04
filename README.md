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

// 字符串工具
const uuid = StringUtils.generateUUID();
const masked = StringUtils.maskPhone('13812345678'); // "138****5678"

// 日期工具
const formatted = DateUtils.format(new Date(), 'yyyy-MM-dd HH:mm:ss');
const timeAgo = DateUtils.timeAgo(new Date(Date.now() - 3600000)); // "1小时前"

// 数学工具
const percent = MathKit.percentage(45, 100); // 45
const fileSize = MathKit.formatFileSize(1048576); // "1.00 MB"
```

### 查看完整示例

项目提供了完整的使用示例,包含所有工具类的详细演示:

```bash
# 查看示例目录
cd example/

# 包含以下示例文件:
- string_utils_demo.ets      # 字符串工具示例
- date_utils_demo.ets         # 日期工具示例
- math_kit_demo.ets           # 数学工具示例
- device_info_demo.ets        # 设备信息工具示例
- json_converter_demo.ets     # JSON 转换工具示例
```

详细使用方法请参考 [example/README.md](./example/README.md)

## 核心功能

### StringUtils (字符串工具)

- ✅ 判空检查: `isEmpty()`, `isNotEmpty()`
- ✅ 字符串验证: `isPhone()`, `isEmail()`, `isIdCard()`, `isUrl()`
- ✅ 字符串脱敏: `maskPhone()`, `maskEmail()`, `maskIdCard()`
- ✅ UUID 生成: `generateUUID()`
- ✅ 字符串转换: `capitalize()`, `toUpperCase()`, `toLowerCase()`
- ✅ 字符串截取: `truncate()`

### DateUtils (日期工具)

- ✅ 日期格式化: `format()`, `formatTimestamp()`
- ✅ 日期解析: `parse()`
- ✅ 相对时间: `timeAgo()`
- ✅ 日期计算: `addDays()`, `addMonths()`, `addYears()`
- ✅ 日期差值: `diffDays()`, `diffHours()`, `diffMinutes()`
- ✅ 日期判断: `isToday()`, `isSameDay()`

### MathKit (数学工具)

- ✅ 数值格式化: `formatNumber()`, `formatCurrency()`
- ✅ 百分比计算: `percentage()`
- ✅ 数值范围限制: `clamp()`
- ✅ 随机数生成: `random()`
- ✅ 文件大小格式化: `formatFileSize()`
- ✅ 数值统计: `sum()`, `average()`, `max()`, `min()`

### DeviceInfo (设备信息)

- ✅ 设备信息: `getBrand()`, `getModel()`, `getOSVersion()`
- ✅ 屏幕信息: `getScreenWidth()`, `getScreenHeight()`, `getScreenDensity()`
- ✅ 语言地区: `getLanguage()`, `getRegion()`
- ✅ 完整信息: `getFullInfo()`

### JsonConverter (JSON 转换)

- ✅ 对象转 JSON: `toJson()`
- ✅ JSON 转对象: `parse<T>()`
- ✅ 深拷贝: `deepClone<T>()`
- ✅ JSON 验证: `isValidJson()`

## 项目结构

```
toolkit/
├── toolkit_core/        # 核心工具包
├── entry/               # 示例应用
├── example/             # 使用示例 (新增)
├── README.md            # 项目说明
├── CHANGELOG.md         # 更新日志 (新增)
├── LICENSE              # 许可证
└── build-profile.json5  # 构建配置
```

## 许可证

Apache-2.0


