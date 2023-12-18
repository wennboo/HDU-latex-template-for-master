###### Tue May 17 20:48:49 CST 2022

# HDU-thesis毕业论文模板

此项目旨在帮助杭州电子科技大学的毕业生高效地完成毕业论文的写作。非官方模板！！！如若使用，后果自负！！！！

## 使用方法

### 基本环境
此模板，建议用texlive配合vscode来使用，可参考下面网站
或者 https://zhuanlan.zhihu.com/p/38178015 或 https://zhuanlan.zhihu.com/p/38178015 
<font color=red>VSCode的latex插件安装后的具体配置，参考文档末尾说明</font>

### 模板种类
支持本科毕业设计（论文）、学术（专业）硕士、（工程）博士以及本科、硕士、博士送审（盲审）模板的撰写。
具体配置方法修改`main-thesis.tex`的`\documentclass[#]{thesis-hdu}`中的`[#]`修改，配置如下
| 模式| 备注 |
|---|---|
|bachelor_p| 本科毕业论文模板 | 
|bachelor_d| 本科毕业设计模板 | 
|bachelor_review| 本科毕设送审模板 | 
|master| 学术型硕士模板 | 
|promaster| 专业学位硕士模板 |
|doctor| 博士学位模板 |
|engdoctor| 工程博士学位模板 |
|master_review| 学术型硕士送审模板 |
|promaster_review| 专业学位硕士送审模板 |
|doctor_review|  学术型博士送审模板 |
|engdoctor_review|  工程博士送审模板 |

<font color=red>杭电毕业模板非送审版不区分专业型与学术型，因此学术型与专业学位型模板可任选，即硕士生master模式和promaster模式可任选其一编写，博士生doctor模式和engdoctor模式可任选其一。注意对于送审版专业和学术有区分。</font>


### 论文是否符合学校格式要求？
本科生符合，硕博生几乎符合（没有进行全面的核查）。

### 文档编译
编译文档请使用XeLaTeX引擎。模版提供latexmk设置文件用于自动编译。将命令行工作目录切换到项目文件夹下，执行
```bash
latexmk main-thesis.tex
```
命令即可自动调用相关程序进行编译，处理各种文件依赖并自动预览。执行`latexmk -c`命令清理所有缓存文件。

手动编译的话执行（vscode 终端实现）
```bash
xelatex main-thesis.tex
```
命令即可，若文档内部有交叉引用或录入参考文献则需要编译两次。

使用BibTeX录入参考文献需要先运行一次xelatex，运行一次bibtex，再运行两次xelatex。完成编译需运行以下命令：

```bash
xelatex main-thesis.tex
bibtex main-thesis.aux
xelatex main-thesis.tex
xelatex main-thesis.tex
```

## 论文写作指南

### 论文封面
论文封面和扉页由`\makecover`命令添加，可以显示论文题目，作者，指导老师等。正式提交论文时文印中心会统一提供封面和扉页，无论自己排版的封面是否符合格式要求。已经包含的封面也不会影响任何前期的审核。独创性声明可以由`\makedeclaration`命令生成。

封面显示的信息可以使用一系列命令进行设置，包括标题、作者、学院等：

| 命令名称 | 参数#1 | 参数#2 | 参数#3 |备注|
|---|---|---|---|---|
|\title{#1}{#2}| 中文标题 | 英语标题 |无 |无|
|\author{#1}{#2}| 作者中文名 | 作者英文名 |无 |无|
|\advisor{#1}{#2}| 导师中文名 | 导师英文名 |无 |无|
|\school{#1}{#2}| 学院中文名 | 学院英文名|无 |无|
|\major{#1}{#2}| 专业中文名| 专业英文名 |无 |无|
|\authornumber{#1}| 学号 | 无 |无 |本科生填|
|\authordirection{#1}{#2}|研究方向中文|研究方向英文|无|研究生填|
|\completedate{#1}{#2}{#3}| 数字年 | 数字月 |英文月缩写|完成日期|





### 中英文摘要

中英文摘要应使用`\cnabstract`和`\enabstract`命令添加，对应的关键字使用`\cnkeyword`和`\enkeyword`命令添加，并包含在相应的环境中。模板自动设置页眉和页脚，其中中文摘要标题中间空一格，页眉不空格。依照学校的格式说明，模板自动根据摘要结束所在的页数决定是否再空一页。

### 论文目录

论文目录由命令`\tableofcontents`添加，并且自动处理标题，页眉以及缩进等问题。依照学校的格式说明，模板自动根据目录结束所在的页数决定是否再空一页。


### 论文主体

论文主体的写作参考一般的LaTeX教程（如中文版的[lshort](https://www.ctan.org/pkg/lshort-zh-cn)），可以自由添加章节，章节内添加所需要的内容，分小节，插入公式、表格和图片。

### 数学环境

数学环境的字体加粗可以使用`\mathbf`或者`\bm`命令，使用斜体粗体的符号。正体加粗可以使用`\mathbd`命令。由于 Times New Roman 字体的拉丁字母字形修长，偶尔会出现字符粘连的情况。这种情况下可以使用占位符波浪号调整距离，如`$f^{~l}$`和`$\hat{f~}$`。

### 致谢

致谢部分由命令`\acknowledgement`开始，实际上是一个无编号的章节。

### 参考文献

使用BibTeX录入参考文献由`\hdubibliography{}`命令导入`*.bib`文件数据库，参考文献风格自动设置为`thesis-hdu`。


参考文献的在文中的引用分两种：在原文中作句法成分的为直接引用，使用`\cite`命令，否则为`\citep`命令，在文中文献编号显示为上标。

通过查找文献的BibTeX格式，将文本复制到 bib 文件即可。其他一些类型的条目如专利、学位论文等可以参考`reference.bib`提供的样例。

<font color=red>本工程bst文件参考以下网址工程，参考文献中文献类型bibtex可参考以下网址中test项目编写，注意如果文献格式不规范可能导致编译不通过：</font>
https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style


### 附录

附录部分由命令`\thesisappendix`开始，如果附录内容不多可以用`\singleappendix`。

### 攻读学位期间取得的成果

由`\personalresult`命令导入个人取得的成果，实际上是一个无编号的章节。


### 插入图片和表格

插入图片使用`figure`环境，自动调整图片前后的间距。插入表格使用`table`环境，自动调整表格前后的间距和默认的字体大小。

图片文件可以统一放在`./pic`目录下。具体插入图片和表格的代码参考范例`main-thesis.tex`。

### 定理环境
参考文中的范例进行编写。
数学定理请使用模板提供的定义（definition）、公理（axiom）、证明（proof）、定理（theorem）等。

### 公式环境
建议用mathtype搭配使用，使用方法参考文中范例。

### 算法描述

算法描述使用`algorithm`环境，具体写法请参考文中给的范例。模板类自动加载`algorithm2e`宏包，详细的用法请参考[algorithm2e宏包文档](https://www.ctan.org/pkg/algorithm2e)。

### 枚举环境和脚注

枚举使用标准的`enumerate`、`itemize`以及`description`环境。脚注使用标准的`\footnote`命令插入。

### 其他命令

另外`\blankpage`命令可以强制生成一页空白。

### 分割文件

模板提供的样例（`main-thesis.tex`）将所有内容写在同一个文档里，使用者认为必要可以将各个章节写在不同的子文件内，使用`\input`命令统一包含。
主要章节放在
`chapter`文件夹下。个人成果、致谢等放在比如`contents`文件夹下。比如`\input{chapter/chA}`插入一整章。

### 图表目录和缩略词

图目录、表目录分别对应`\figurelist`和`\tablelist`命令，这些列表不会出现在目录里。

缩略词表使用`glossaries`宏包实现。生成缩略词表需要在文档导言区加入`\makeglossaries`命令，再在缩略词表显示的位置使用`\glossarylist`命令。定义缩略词使用`\newglossaryentry{<label>}{<description>}`命令，例如：
```latex
\newacronym[description=基于角度信息的多智能体系统编队控制]{formation}{FMAS}{angle based formation control of multi-agents}
```
使用`glossaries`宏包提供的`\gls`、`\Gls`（首字母大写）或`\glspl`（复数形式）等命令引用缩略词的`<label>`。

若想在缩略词表中列出所有定义过的条目，无论在正文中是否引用，可以在`\glossarylist`之前使用`\glsaddall`命令。

手动编译包含有缩略词表的文档，执行`xelatex`编译命令后需要执行`makeglossaries main`（注意没有.tex后缀）创建缩略词索引，再执行`xelatex`命令完成编译。所以手动编译一个包含参考文献、研究成果、缩略词表的完整文档命令（vscode 终端进行）为：
```bash
xelatex main-thesis.tex
bibtex main-thesis.aux
makeglossaries main-thesis
xelatex main-thesis.tex
xelatex main-thesis.tex
```

<font color=red>可直接使用latexmk命令编译，需要注意的是对于编译产生的某些缓存文件，latexmk并不会删除，如果有缩略表等更新，建议清除缓存文件后重新编译，`latexmk -c`命令清理所有缓存文件</font>

```bash
latexmk -c
latexmk main-thesis.tex
```



## VSCODE Latex插件安装后的具体配置

在 VSCode 界面下按下 F1，然后键入“setjson”，点击“首选项: 打开设置(JSON)”，copy以下代码完成


{
    //------------------------------LaTeX 配置----------------------------------
       // 设置是否自动编译
       "latex-workshop.latex.autoBuild.run":"never",
       //右键菜单
       "latex-workshop.showContextMenu":true,
       //从使用的包中自动补全命令和环境
       "latex-workshop.intellisense.package.enabled": true,
       //编译出错时设置是否弹出气泡设置
       "latex-workshop.message.error.show": false,
       "latex-workshop.message.warning.show": false,
       // 编译工具和命令
       "latex-workshop.latex.tools": [
        {
            "name": "latex",
            "command": "latex.exe",
            "args": [
                "-src",
                "-interaction=nonstopmode",
                "%DOCFILE%.tex"
            ]
        },        
        {
            "name": "pdflatex",
            "command": "pdflatex.exe",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-aux-directory=build",
                "%DOCFILE%.tex"
            ]
        },
        {
            "name": "xelatex",
            "command": "xelatex.exe",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "%DOCFILE%.tex"
            ]
        },
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "-outdir=%OUTDIR%",
                "%DOCFILE%"
            ]
        },
        {
            "name": "lualatex",
            "command": "lualatex.exe",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "%DOCFILE%.tex"
            ]
        },
        {
            "name": "dvips",
            "command": "dvips.exe",
            "args": [
                "-o",
                "%DOCFILE%.ps",
                "%DOCFILE%.dvi"
            ]
        },
        {
            "name": "dvipng",
            "command": "dvipng.exe",
            "args": [
                "-T",
                "tight",
                "-D",
                "120",
                "%DOCFILE%.dvi"
            ]
        },
        {
            "name": "ps2pdf",
            "command": "ps2pdf.exe",
            "args": [
                "%DOCFILE%.ps"
            ]
        },
        {
            "name": "dvipdf",
            "command": "dvipdfm.exe",
            "args": [
                "%DOCFILE%.dvi"
            ]
        },
        {
            "name": "bibtex",
            "command": "bibtex.exe",
            "args": [
                "%DOCFILE%.aux"
            ]
        },
        {
            "name": "biber",
            "command": "biber.exe",
            "args": [
                "%DOCFILE%.bcf"
            ]
        }
        ],
       // 用于配置编译链
       "latex-workshop.latex.recipes": [
           {
               "name": "XeLaTeX",
               "tools": [
                   "xelatex"
               ]
           },
           {
               "name": "PDFLaTeX",
               "tools": [
                   "pdflatex"
               ]
           },
           {
            "name": "latex",
            "tools": [
                "latex"
            ]
            },
           {
               "name": "BibTeX",
               "tools": [
                   "bibtex"
               ]
           },
           {
               "name": "LaTeXmk",
               "tools": [
                   "latexmk"
               ]
           },

           {
                "name": "luatex",
                "tools": [
                 "lualatex"
                ]
            },
            {
                "name": "dvips",
                "tools": [
                    "dvips"
                ]
            },
            {
                "name": "dvipng",
                "tools": [
                    "dvipng"
                ]
            },
            {
                "name": "ps2pdf",
                "tools": [
                    "ps2pdf"
                ]
            },
            {
                "name": "dvipdf",
                "tools": [
                "dvipdf"
                ]
            },
            {
                "name": "bibtex",
                "tools": [
                    "bibtex"
                ]
            },
            {
                "name": "biber",
                "tools": [
                    "biber"
                ]
            },
           {
            "name": "xelatex -> biber -> xelatex*2",
            "tools": [
                "xelatex",
                "biber",
                "xelatex",
                "xelatex"
            ]
            },
           {
                "name": "xelatex -> bibtex -> xelatex*2",
                "tools": [
                    "xelatex",
                    "bibtex",
                    "xelatex",
                    "xelatex"
                ]
            },

           {
               "name": "pdflatex -> bibtex -> pdflatex*2",
               "tools": [
                   "pdflatex",
                   "bibtex",
                   "pdflatex",
                   "pdflatex"
               ]
           },
           {
            "name": "latex -> dvips -> ps2pdf",
            "tools": [
                "latex",
                "dvips",
                "ps2pdf"
            ]
            },
            {
                "name": "latex -> bibtex -> latex -> dvips -> ps2pdf",
                "tools": [
                    "latex",
                    "bibtex",
                    "latex",
                    "dvips",
                    "ps2pdf"
                ]
            }
            ],
       //文件清理。此属性必须是字符串数组
       "latex-workshop.latex.clean.fileTypes": [
           "*.aux",
           "*.bbl",
           "*.blg",
           "*.idx",
           "*.ind",
           "*.lof",
           "*.lot",
           "*.out",
           "*.toc",
           "*.acn",
           "*.acr",
           "*.alg",
           "*.glg",
           "*.glo",
           "*.gls",
           "*.glsdefs",
           "*.ist",
           "*.fls",
           "*.log",
           "*.fdb_latexmk"
       ],
       //设置为onFaild 在构建失败后清除辅助文件
       "latex-workshop.latex.autoClean.run": "onFailed",
       // 使用上次的recipe编译组合
       "latex-workshop.latex.recipe.default": "lastUsed",
       // 用于反向同步的内部查看器的键绑定。ctrl/cmd +点击(默认)或双击
       "latex-workshop.view.pdf.internal.synctex.keybinding": "double-click",
       "latex-workshop.view.pdf.viewer": "tab",
       "latex-workshop.synctex.synctexjs.enabled": true,
        "latex-workshop.synctex.afterBuild.enabled": true,

    "editor.fontSize": 18,
    "workbench.editorAssociations": {
        "*.pdf": "latex-workshop-pdf-hook"
    },
    "workbench.colorTheme": "One Dark Pro",
    "workbench.iconTheme": "vscode-icons",
    "editor.minimap.enabled": false,
    "python.defaultInterpreterPath": "D:\\software\\anaconda\\python.exe",
    "editor.wordWrap": "on",
    "workbench.startupEditor": "none",
    "vsicons.dontShowNewVersionMessage": true,
    "update.enableWindowsBackgroundUpdates": false,
    "extensions.autoCheckUpdates": false,
    "latex-workshop.check.duplicatedLabels.enabled": false,
    "extensions.autoUpdate": false,
    "markdown-toc.updateOnSave": false,
    "markdown-preview-enhanced.liveUpdate": false,
    "update.showReleaseNotes": false,
    "explorer.confirmDelete": false,
    "files.autoGuessEncoding": true,
    "window.zoomLevel": -1,
    "editor.unicodeHighlight.nonBasicASCII": false,
    "security.workspace.trust.untrustedFiles": "open"

}


