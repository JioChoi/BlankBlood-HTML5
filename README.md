# Blank Blood — HTML5 Port

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/your-repo/pulls)
[![GameMaker Studio 2](https://img.shields.io/badge/GameMaker-Studio%202-blue.svg)](https://gamemaker.io)
[![HTML5](https://img.shields.io/badge/Platform-HTML5-orange.svg)](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5)

> **Original game:** [Blank Blood by sakifox](https://hungry-foxtail.sakura.ne.jp/top.html)

---

## Overview

This project is an HTML5 port of **Blank Blood**, a ryona indie game originally developed by **sakifox** using GameMaker 8. The port makes the game fully playable in any modern web browser without plugins or additional software.

🎮 **[Play it now in your browser →](https://jiochoi.github.io/BlankBlood/html5-build/)**

---

## Repository Structure

| Directory      | Description                                 |
| -------------- | ------------------------------------------- |
| `BlankBlood/`  | GameMaker Studio 2 project source files     |
| `html5-build/` | Compiled HTML5 build ready for browser play |

---

## Porting Process

The porting pipeline consisted of three stages:

1. **Decompilation** — The original GameMaker 8 binary was decompiled using [GM8 Decompiler](https://github.com/OpenGMK/GM8Decompiler).
2. **Migration to GMS 1.4** — The decompiled project was imported into GameMaker Studio 1.4.9999.
3. **Migration to GMS 2** — The project was then upgraded to GameMaker Studio 2, from which the HTML5 export was produced.

---

## Changes from the Original

Several modifications were required to ensure compatibility with the HTML5 runtime:

- **Removed `io_handle()` calls** — These caused an infinite loop under the HTML5 target and were safely removed.
- **Converted GIF sprites to PNG** — All `.gif` assets were replaced with `.png` equivalents to ensure proper transparency and frame animation support in HTML5.
- **Miscellaneous code fixes** — Various minor adjustments were made throughout the codebase to resolve HTML5-specific incompatibilities.

---

## Contributing

Contributions are welcome and appreciated! Whether it's a bug fix, a compatibility improvement, or a code cleanup — all pull requests are considered.

### How to Contribute

1. **Fork** this repository
2. **Create a branch** for your change
   ```
   git checkout -b fix/your-fix-name
   ```
3. **Make your changes** in the `BlankBlood/` GameMaker Studio 2 project
4. **Test** by exporting an HTML5 build and verifying it in a browser
5. **Commit** with a clear message
   ```
   git commit -m "fix: describe what you changed"
   ```
6. **Open a Pull Request** and describe what you changed and why

### Reporting Issues

Found a bug? [Open an issue](https://github.com/your-repo/issues) and include:

- Your browser name and version
- Steps to reproduce the problem
- What you expected vs. what actually happened

---

## Background & Motivation

The original goal of this project was to port **Crackle Cradle** to HTML5. However, that game's architecture proved incompatible with GameMaker Studio 2 — specifically its use of dynamic code execution and runtime object creation, neither of which are supported under the GMS2 HTML5 export pipeline.

**Blank Blood** was chosen as an alternative due to its simpler structure and absence of those unsupported patterns, making it a suitable candidate for a complete and stable HTML5 port.

---

## Controls

### Ryoko

| Action        | Key       |
| ------------- | --------- |
| Move Up       | `I`       |
| Move Down     | `K`       |
| Move Left     | `J`       |
| Move Right    | `L`       |
| Attack        | `Z`       |
| Jump          | `X`       |
| Key 3         | `C`       |
| Change Weapon | `↓` + `C` |

### Nana

| Action        | Key                |
| ------------- | ------------------ |
| Move Up       | `W`                |
| Move Down     | `S`                |
| Move Left     | `A`                |
| Move Right    | `D`                |
| Attack        | Left Mouse Button  |
| Aim           | Mouse              |
| Reload        | Right Mouse Button |
| Change Weapon | `↓` + Right Click  |

### Global

| Action                     | Key              |
| -------------------------- | ---------------- |
| Save / Health Regeneration | `Ctrl` + `Enter` |
| Debug Mode                 | `Delete`         |
| Change Character           | `Space`          |

---

## Browser Compatibility

| Browser         | Status       |
| --------------- | ------------ |
| Chrome / Edge   | ✅ Supported |
| Firefox         | ✅ Supported |
| Safari          | ✅ Supported |
| Mobile browsers | ✅ Supported |

---

## Credits

- **Original game:** [sakifox](https://hungry-foxtail.sakura.ne.jp/top.html)
- **Decompilation tool:** [GM8 Decompiler by OpenGMK](https://github.com/OpenGMK/GM8Decompiler)
- **Port:** _(your name or handle here)_
