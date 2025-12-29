<div align="center">

# Homebrew Tap for Neve

[![Release](https://img.shields.io/github/v/release/MCB-SMART-BOY/neve?include_prereleases&color=blue)](https://github.com/MCB-SMART-BOY/neve/releases)
[![License: MPL-2.0](https://img.shields.io/badge/License-MPL%202.0-brightgreen.svg)](https://github.com/MCB-SMART-BOY/Neve/blob/master/LICENSE)

*A pure functional language for system configuration and package management*

**[English](#english)** | **[中文](#中文)**

</div>

---

## English

### About

This is the official Homebrew tap for [Neve](https://github.com/MCB-SMART-BOY/Neve), a pure functional programming language designed for system configuration and package management.

### Supported Platforms

| Platform | Architecture | Status |
|:---------|:-------------|:-------|
| macOS | Intel (x86_64) | ✅ Supported |
| macOS | Apple Silicon (arm64) | ✅ Supported |

### Installation

```bash
# Add the tap
brew tap MCB-SMART-BOY/neve

# Install Neve
brew install neve
```

### Upgrade

```bash
brew update
brew upgrade neve
```

### Uninstall

```bash
brew uninstall neve
brew untap MCB-SMART-BOY/neve
```

### Usage

```bash
neve repl              # Start interactive REPL
neve eval "1 + 2"      # Evaluate expression
neve run file.neve     # Run a file
neve doc               # View documentation
neve doc quickstart    # Quick start guide
```

### Quick Example

```bash
$ neve repl
neve> let greet = fn(name) `Hello, {name}!`
neve> greet("World")
"Hello, World!"
```

### Troubleshooting

**Formula not found:**
```bash
brew tap MCB-SMART-BOY/neve
brew update
```

**Permission issues:**
```bash
brew doctor
```

### Links

- [Neve Repository](https://github.com/MCB-SMART-BOY/Neve)
- [Documentation](https://github.com/MCB-SMART-BOY/Neve/tree/master/docs)
- [Issue Tracker](https://github.com/MCB-SMART-BOY/Neve/issues)
- [Releases](https://github.com/MCB-SMART-BOY/Neve/releases)

---

## 中文

### 关于

这是 [Neve](https://github.com/MCB-SMART-BOY/Neve) 的官方 Homebrew tap。Neve 是一门纯函数式编程语言，专为系统配置和包管理而设计。

### 支持平台

| 平台 | 架构 | 状态 |
|:-----|:-----|:-----|
| macOS | Intel (x86_64) | ✅ 支持 |
| macOS | Apple Silicon (arm64) | ✅ 支持 |

### 安装

```bash
# 添加 tap
brew tap MCB-SMART-BOY/neve

# 安装 Neve
brew install neve
```

### 升级

```bash
brew update
brew upgrade neve
```

### 卸载

```bash
brew uninstall neve
brew untap MCB-SMART-BOY/neve
```

### 使用

```bash
neve repl              # 启动交互式 REPL
neve eval "1 + 2"      # 求值表达式
neve run file.neve     # 运行文件
neve doc               # 查看文档
neve doc quickstart    # 快速入门
```

### 快速示例

```bash
$ neve repl
neve> let greet = fn(name) `你好，{name}！`
neve> greet("世界")
"你好，世界！"
```

### 故障排除

**找不到 formula：**
```bash
brew tap MCB-SMART-BOY/neve
brew update
```

**权限问题：**
```bash
brew doctor
```

### 链接

- [Neve 仓库](https://github.com/MCB-SMART-BOY/Neve)
- [文档](https://github.com/MCB-SMART-BOY/Neve/tree/master/docs)
- [问题反馈](https://github.com/MCB-SMART-BOY/Neve/issues)
- [版本发布](https://github.com/MCB-SMART-BOY/Neve/releases)

---

<div align="center">

**[Neve](https://github.com/MCB-SMART-BOY/Neve)** · **[License: MPL-2.0](https://github.com/MCB-SMART-BOY/Neve/blob/master/LICENSE)**

</div>
