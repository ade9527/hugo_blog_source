---
title: "neovim的安装配置记录"
date: 2018-08-25T23:13:50+08:00
---

记录安装过程和使用的插件安装,及使用中遇到的一些问题.

## 安装neovim
这里有neovim的各种环境下的安装方法:
<https://github.com/neovim/neovim/wiki/Installing-Neovim>

下面是我在ubuntu中的安装步骤,也是按照上面的文档来的,
ubuntu默认的源中没有neovim,需要自己添加(旧版本ubuntu使用 apt-get)
```
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
```

## 插件

### 插件管理工具

### 自动补全工具

### 

## 一些问题

### 使用系统剪切板
neovim默认是支持系统剪切板(`+`寄存器)的,但使用时发现并不能正常使用,从网上搜到还需要安装下面三种软件包中的一个,才能正常使用:
1. xclip
2. xsel (newer alternative to xclip)
3. pbcopy/pbpaste (only for Mac OS X)

然后重新打开就可以了.另外我还将`+`寄存器的操作绑定到Ctrl-c Ctrl-v,在`~/.config/nvim/init.vim`中添加下面代码:
```
map <C-c> "+yy
map <C-v> "+p
```
可以在`NORMAL`模式中使用`Ctrl-c` `Ctrl-v`, `Ctrl-c`使用时可以在之前输入数字表示要复制多少行,或者在`VISUAL`模式中选中后使用.


## 配置文件
最后附上我的配置文件:
[~/.config/nvim/init.vim](https://github.com/ade9527/hugo_blog_source/blob/master/static/tool_configs/init.vim)
