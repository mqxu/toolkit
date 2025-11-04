# 更新日志 (Changelog)

本文档记录了鸿蒙工具集 (Toolkit for HarmonyOS) 的所有重要变更。

版本号遵循 [语义化版本规范](https://semver.org/lang/zh-CN/)。

## [1.0.1] - 2025-11-04

### 修复 (Fixed)

- 📦 完善 oh-package.json5 配置文件
  - 添加完整的项目元信息 (name, version, description)
  - 添加 homepage 和 repository 信息
  - 添加 keywords 关键词
  - 添加 bugs 问题反馈地址

### 新增 (Added)

- 📚 创建 example 示例目录,提供完整的使用示例
  - StringUtils 字符串工具示例 (18 个方法演示)
  - DateUtils 日期工具示例 (23 个方法演示)
  - MathKit 数学工具示例 (21 个方法演示)
  - DeviceInfo 设备信息工具示例 (15 个方法演示)
  - JsonConverter JSON 转换工具示例 (8 个方法演示)
- 📝 添加 example/README.md 示例说明文档
- 📋 创建 CHANGELOG.md 更新日志文件

### 改进 (Changed)

- ✨ 所有示例代码均可直接运行
- 📖 每个示例都包含详细的注释和使用说明
- 🎨 示例代码采用可视化展示,便于理解

---

## [1.0.0] - 2025-11-04

### 新增 (Added)

- 🎉 初始版本发布
- ✨ 添加核心工具包 `@mqxu/toolkit_core`
- 📦 发布 5 个核心工具类:
  - `StringUtils` - 字符串工具类
  - `DateUtils` - 日期工具类
  - `MathKit` - 数学工具类
  - `DeviceInfo` - 设备信息工具类
  - `JsonConverter` - JSON 转换工具类
- 📚 添加完整的 API 文档
- 📝 添加完整的使用示例 (example 目录)
- 🧪 添加单元测试覆盖

### 功能详情

#### StringUtils (字符串工具类)
- 判空检查: `isEmpty()`, `isNotEmpty()`
- 字符串验证: `isPhone()`, `isEmail()`, `isIdCard()`, `isUrl()`
- 字符串脱敏: `maskPhone()`, `maskEmail()`, `maskIdCard()`
- UUID 生成: `generateUUID()`
- 字符串转换: `capitalize()`, `toUpperCase()`, `toLowerCase()`
- 字符串截取: `truncate()`

#### DateUtils (日期工具类)
- 日期格式化: `format()`, `formatTimestamp()`
- 日期解析: `parse()`
- 相对时间: `timeAgo()`
- 日期计算: `addDays()`, `addMonths()`, `addYears()`
- 日期差值: `diffDays()`, `diffHours()`, `diffMinutes()`
- 日期判断: `isToday()`, `isSameDay()`
- 获取日期信息: `getYear()`, `getMonth()`, `getDay()`, `getWeekDay()`

#### MathKit (数学工具类)
- 数值格式化: `formatNumber()`, `formatCurrency()`
- 百分比计算: `percentage()`
- 数值范围限制: `clamp()`
- 随机数生成: `random()`
- 数值四舍五入: `round()`
- 文件大小格式化: `formatFileSize()`
- 数值求和: `sum()`
- 数值平均值: `average()`
- 最大值和最小值: `max()`, `min()`

#### DeviceInfo (设备信息工具类)
- 获取设备品牌: `getBrand()`
- 获取设备型号: `getModel()`
- 获取系统版本: `getOSVersion()`
- 获取设备类型: `getDeviceType()`
- 获取屏幕信息: `getScreenWidth()`, `getScreenHeight()`, `getScreenDensity()`
- 获取语言和地区: `getLanguage()`, `getRegion()`
- 获取完整设备信息: `getFullInfo()`
- 判断设备类型: `isPhone()`, `isTablet()`

#### JsonConverter (JSON 转换工具类)
- 对象转 JSON 字符串: `toJson()`
- JSON 字符串转对象: `parse()`
- 深拷贝: `deepClone()`
- 判断是否为有效 JSON: `isValidJson()`

### 技术规范

- 最低 API 版本: API 17
- 开发语言: ArkTS (TypeScript 超集)
- 代码规范: 严格类型检查,禁止使用 any
- 测试覆盖: 单元测试覆盖率 > 80%
- 文档完善: 所有方法提供详细的 JSDoc 注释

### 项目结构

```
toolkit/
├── toolkit_core/        # 核心工具包
├── entry/               # 示例应用
├── example/             # 使用示例
├── README.md            # 项目说明
├── CHANGELOG.md         # 更新日志 (本文件)
├── LICENSE              # 许可证
└── oh-package.json5     # 依赖配置
```

---

## 未来计划

### [1.1.0] - 计划中

#### 新增功能
- 🔐 `@mqxu/toolkit_security` - 安全加密模块
  - AES/RSA 加密解密
  - MD5/SHA 哈希计算
  - Base64 编码解码
  - 密码强度验证

- 💾 `@mqxu/toolkit_storage` - 数据存储模块
  - Preferences 封装
  - 文件操作工具
  - 缓存管理
  - 数据持久化

- 📊 `@mqxu/toolkit_logger` - 日志调试模块
  - 分级日志输出
  - 日志文件管理
  - 性能监控
  - 错误追踪

### [1.2.0] - 计划中

#### 新增功能
- 🌐 `@mqxu/toolkit_network` - 网络通信模块
  - HTTP 请求封装
  - WebSocket 支持
  - 请求拦截器
  - 响应拦截器
  - 错误处理

### [2.0.0] - 计划中

#### 新增功能
- 🎨 `@mqxu/toolkit_ui` - UI 组件模块
- 🔧 `@mqxu/toolkit_utils` - 工具类模块
- 🌍 `@mqxu/toolkit_i18n` - 国际化模块
- ✨ `@mqxu/toolkit_animation` - 动画模块

---

## 版本说明

### 版本号格式

遵循 [语义化版本规范](https://semver.org/lang/zh-CN/):

- **主版本号 (MAJOR)**: 不兼容的 API 修改
- **次版本号 (MINOR)**: 向下兼容的功能性新增
- **修订号 (PATCH)**: 向下兼容的问题修正

### 变更类型说明

- `新增 (Added)`: 新功能
- `变更 (Changed)`: 现有功能的变更
- `弃用 (Deprecated)`: 即将移除的功能
- `移除 (Removed)`: 已移除的功能
- `修复 (Fixed)`: Bug 修复
- `安全 (Security)`: 安全相关的修复

---

## 反馈与支持

如果你在使用过程中遇到问题或有建议,请:

1. 查看 [完整文档](./README.md)
2. 搜索 [Issues](https://github.com/mqxu/toolkit/issues)
3. 提交新的 Issue

## 许可证

Apache-2.0

---

**感谢使用鸿蒙工具集!** 🎉
