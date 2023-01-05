# Math201 LaTeX Report

> The repo is forked from [Asterisci/XJTU-latex-report](https://github.com/Asterisci/XJTU-latex-report)

## 如何模板下载

1. 如果你懂git和GitHub，我相信你可以自己解决，还可以进行文档的版本管理。
2. 如果你不懂git和Github，我强烈推荐你学一下，这个是全世界软件开发工程师每天必备的生存技能。
3. 如果你实在不想学习，Math201这门课需要自学的东西太多了，你就是想摆烂。OK, 我们提供如下下载教程。
![下载教程](./Readme.png)

## 模板使用教程

因本模板为了实现Python代码高亮，使用了LaTeX的minted宏包，minted宏包使用Python的第三方库Pygments，相对于listing宏包Pygments提供了更好的代码语法高亮功能。因此需要在你的电脑里安装Pygments的Python库，鉴于Math201课程主页有如何安装Python以及Python第三方库的教程，本教程就不提供详细的Python安装说明。

```python
pip install Pygments
```

因为需要调用非LaTeX软件模块，需要在XeLaTeX编译命令增加参数，具体编译命令如下:

```bash
xelatex --shell-escape main.tex
```
这样你就可以顺利编译成功，得到代码高亮的main.pdf文件。

如果你是使用VS Code，请参照Math201课程网站给出的VS Code的配置方式配置，如果你已经安装教程配置好，恭喜你你可以直接编译得到代码高亮的PDF文件。

如果你是使用TeXstudio，则需要在

options>configure texstudio >commands >XeLaTeX

中改变默认配置，调整为：

```
xelatex --shell-escape -8bit -synctex=1 -interaction=nonstopmode %.tex
```

## Pygments 代码高亮支持的语言

Pygments支持300多种不同的编程语言、模板语言和其他标记语言。要查看当前支持的语言的详尽列表，请使用以下命令：
```bash
pygmentize -L lexers
```

## minted 代码高亮宏包使用说明
建议参照main.tex文件使用方式，如需自定义则可以参照[minted官方文档](http://tug.ctan.org/macros/latex/contrib/minted/minted.pdf)自行研究。