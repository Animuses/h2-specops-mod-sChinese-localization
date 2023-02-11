# h2-specops-mod-simplified-Chinese-localization
A simplified chinese translation and font bug fix mod for [h2-mod-specops](https://github.com/fedddddd/h2-specops-mod), which is a mod ported MW2 Spec Ops missions to MW2CR.  
针对为使命召唤：现代战争2战役重制版添加了一些原版特别行动任务的模组[h2-mod-specops](https://github.com/fedddddd/h2-specops-mod)的简体中文本地化模组，同时修复了游戏内的方块字bug

# Why don't use pull request to merge to original repository?
Some fonts in the game such as "bank", "bankshadow", "bankshadowmore" are frequntely used, but these fonts don't have chinese character support, it will trun chinese characters in to blocks. To fix this problem, I must change fonts in lua scripts. By using "objective" the problem solved, I will pull request when this bug is fixed.  
有些经常使用的字体并不支持中文，这会导致游戏内汉字显示为方块，通过修改脚本改变使用的字体，用一个支持汉字显示但是有点丑的字体就能实现几乎所有内容的汉化了。

# Version/版本
当前支持mod版本为 3.0.0

# Installation/安装
* 依照[h2-mod-specops](https://github.com/fedddddd/h2-specops-mod)的说明安装游戏本体
* 下载文件并解压，找到specops文件夹，将文件夹内容替换原mod文件夹
* 启动游戏，进入特别行动，享受汉化

# 对翻译不满意？
我英语不太好，如果你觉得有更适合的翻译可以提issues，欢迎润色但是别咬文嚼字，你也可以自己折腾一下，我在仓库里提供了英文原文以及可以直接打包的文件。

# Preview/预览图

| <img src="assets/menu.png?raw=true" /> |
|:-:|
| 主菜单 |

| <img src="assets/select.png?raw=true" /> |
|:-:|
| 任务选择 |

| <img src="assets/evation.png?raw=true" /> |
|:-:|
| 逃出生天加载 |

| <img src="assets/christo.png?raw=true" /> |
|:-:|
| 基督救世主加载 |

| <img src="assets/sniperfi.png?raw=true" /> |
|:-:|
| 狙击永恒 |

| <img src="assets/timetrial.png?raw=true" /> |
|:-:|
| 限时挑战 |

#