<div align="center">

# Homebrew Tap for Neve

[![Release](https://img.shields.io/github/v/release/MCB-SMART-BOY/neve?include_prereleases&color=blue)](https://github.com/MCB-SMART-BOY/neve/releases)
[![License: MPL-2.0](https://img.shields.io/badge/License-MPL%202.0-brightgreen.svg)](https://github.com/MCB-SMART-BOY/Neve/blob/master/LICENSE)

*A pure functional language for system configuration and package management*

</div>

---

## About / 关于

This is the official Homebrew tap for [Neve](https://github.com/MCB-SMART-BOY/Neve), a pure functional language designed for system configuration and package management.
这是 [Neve](https://github.com/MCB-SMART-BOY/Neve) 的官方 Homebrew tap。Neve 是一门纯函数式语言，专为系统配置与包管理而设计。

## Supported Platforms / 支持平台

| Platform / 平台 | Architecture / 架构 | Status / 状态 |
|:--|:--|:--|
| macOS | Intel (x86_64) | ✅ Supported / ✅ 支持 |
| macOS | Apple Silicon (arm64) | ✅ Supported / ✅ 支持 |

## Installation / 安装

```bash
# Add the tap / 添加 tap
brew tap MCB-SMART-BOY/neve

# Install Neve / 安装 Neve
brew install neve
```

## Upgrade / 升级

```bash
brew update
brew upgrade neve
```

## Uninstall / 卸载

```bash
brew uninstall neve
brew untap MCB-SMART-BOY/neve
```

## Usage / 使用

```bash
neve repl              # Start interactive REPL / 启动交互式 REPL
neve eval "1 + 2"      # Evaluate expression / 求值表达式
neve run file.neve     # Run a file / 运行文件
neve doc               # View documentation / 查看文档
neve doc quickstart    # Quick start guide / 快速入门
```

## Quick Example / 快速示例

```bash
$ neve repl
neve> let greet = fn(name) `Hello, {name}!`
neve> greet("World")
"Hello, World!"
```

## Troubleshooting / 故障排除

**Formula not found / 找不到 formula：**
```bash
brew tap MCB-SMART-BOY/neve
brew update
```

**Permission issues / 权限问题：**
```bash
brew doctor
```

## Links / 链接

- [Neve Repository / 仓库](https://github.com/MCB-SMART-BOY/Neve)
- [Documentation / 文档](https://github.com/MCB-SMART-BOY/Neve/tree/master/docs)
- [Issue Tracker / 问题反馈](https://github.com/MCB-SMART-BOY/Neve/issues)
- [Releases / 版本发布](https://github.com/MCB-SMART-BOY/Neve/releases)

---

<div align="center">

**[Neve](https://github.com/MCB-SMART-BOY/Neve)** · **[License: MPL-2.0](https://github.com/MCB-SMART-BOY/Neve/blob/master/LICENSE)**

</div>
