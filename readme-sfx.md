
## 前言

基于 `skywind3000/vim-init.vim`, 结合 `skywind3000/vim` 定制的仓库。

断断续续学习vim, 只看文档或者直接拿别人的库是不行的，终究还是要每一个功能自行定制一遍，有开发轮子的能力, 才能给自己一个交待。

vim 工具属于基础能力，基础能力的提升，是提高效率的上限。

## 目标

1. 系统学习vim
2. 定制c/c++开发环境
3. 完善文档

3.1 `skywind3000/vim` 框架及功能
3.2 定制思路

4. 根据自身需求造轮子

## 过程

1. 添加window控制快捷键，这个键位用起来很爽

| 按键    | 说 明    |
| :-----: | ------   | 
| TAB h | 同 CTRL-W h |
| TAB j | 同 CTRL-W j |
| TAB k | 同 CTRL-W k |
| TAB l | 同 CTRL-W l |

先按 TAB键，再按 HJKL 其中一个来跳转窗口。

除了使用原生的 TabPage 切换命令 `1gt`, `2gt`, `3gt` ... 来切换标签页外，定义了如下几个快捷命令：

| 按键    | 说 明    |
| :-----: | ------   |
| \1  | 先按反斜杠 `\`再按 `1`，切换到第一个标签页 |
| \2  | 切换到第二个标签页 |
| ... | ... |
| \9  | 切换到第九个标签页 |
| \0  | 切换到第十个标签页 |
| \t  | 新建标签页，等同于 `:tabnew` |
| \g  | 关闭标签页，等同于 `:tabclose` |
| TAB n | 下一个标签页，同 `:tabnext` |
| TAB p | 上一个标签页，同 `:tabprev` |

还可以使用 ALT+1 到 ALT+9 来切换，前提是终端软件需要配置一下，有些终端 ALT_1 到 ALT_9 被用来切换 connection 的 tab，那么可以把 ALT+SHIFT+1-9 配置成发送字符串：`\0331` 到 `\0339` 等几个不同字符串，其中 `\033` 是 ESC键的编码，这样不影响终端软件的 ALT_1-9 情况下，用 ALT_SHIFT_1-9 来代替。

配置见 `init/init-keymaps.vim` 中 `windows control`

拷贝(默认从`skywind3000/vim`中, 下同) `plugin/vinegar.vim` 插件, 重启vim
使用`<tab>9`打开新标签会报错`Error detected while processing function <SNR>52_open[3]..<SNR>52_log:`, `E117: Unknown function: LogWrite`
拷贝 `init/tools.vim`, 

>注: 方法找不到的问题，使用grep 来搜索代码，后面再配置直接从vim中搜索代码的插件gnutags
```sh
find . -name "*.vim" | xargs grep "function name"
```

2. keymap.vim

快捷编辑几个配置文件

| 按键    | 说 明    |
| :-----: | ------   | 
| <space>hr | 打开~/.vimrc |
| <space>hp | 打开~/.vim/vim/init/init-plugin.vim |
| <space>hk | 打开~/.vim/vim/init/init-keymaps.vim |
| <space>d  | 插入时间 |
| <space>tm | 插入时间hh:mm |

3. 搜索

弹窗实现

