%  This latex profect is made by WangBo (School of Automation,HDU) in 2022.5,
%  which is partly built based on the template of SEU and UESTC.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%\bfseries是全局命令，加粗
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%\vspace*{} and \vspace{}前者在页面开头没作用%%%%%%%%%

\ProvidesClass{hdu-thesis}

%%%%%%%%%%%%%确定基本信息%%%%%%%
\newif\ifbachelorp\bachelorpfalse
\newif\ifbachelord\bachelordfalse
\newif\ifbachelorr\bachelorrfalse
\newif\ifmaster\masterfalse
\newif\ifpromaster\promasterfalse
\newif\ifdoctor\doctorfalse
\newif\ifengdoctor\engdoctorfalse
\newif\ifmasterr\masterrfalse
\newif\ifpromasterr\promasterrfalse
\newif\ifdoctorr\doctorrfalse
\newif\ifengdoctorr\engdoctorrfalse
%%%%%%%%%%控制封面flag%%%%%%%%%%%
\newif\ifmdeclaration\mdeclarationfalse
\newif\ifbdeclaration\bdeclarationfalse
\newif\ifbcover\bcoverfalse
\newif\ifmcover\mcoverfalse

%%%%%%%%%%控制页眉flag%%%%%%%%%%%
\newif\ifreviewhead\reviewheadfalse



\DeclareOption{bachelor_p}{\bachelorptrue\bdeclarationtrue\bcovertrue}
\DeclareOption{bachelor_d}{\bachelordtrue\bdeclarationtrue\bcovertrue}
\DeclareOption{bachelor_review}
{\bachelorrtrue}

\DeclareOption{master}{\mastertrue\mdeclarationtrue\mcovertrue}
\DeclareOption{promaster}{\promastertrue\mdeclarationtrue\mcovertrue}
\DeclareOption{doctor}{\doctortrue\mdeclarationtrue\mcovertrue}
\DeclareOption{engdoctor}{\engdoctortrue\mdeclarationtrue\mcovertrue}
\DeclareOption{master_review}{\masterrtrue\reviewheadtrue}
\DeclareOption{promaster_review}{\promasterrtrue\reviewheadtrue}
\DeclareOption{doctor_review}{\doctorrtrue\reviewheadtrue}
\DeclareOption{engdoctor_review}{\engdoctorrtrue\reviewheadtrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[12pt, openany, twoside]{book}%小四号 12pt
\RequirePackage[a4paper,
  inner=3cm, outer=3cm, top=3cm, bottom=3cm,
  bindingoffset=0cm]{geometry}


\RequirePackage{ifxetex}
\RequireXeTeX

\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{epstopdf}
\RequirePackage[font={doublespacing, small}, labelsep=space, skip=6pt]{caption}

\RequirePackage{array}
\RequirePackage{booktabs}
\setlength{\heavyrulewidth}{0.5pt}
\setlength{\lightrulewidth}{0.5pt}
\setlength{\arrayrulewidth}{0.5pt}
\setlength{\cmidrulewidth}{0.5pt}

\RequirePackage{setspace}
\RequirePackage{multirow}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{lmodern}
\RequirePackage[nopostdot]{glossaries}
\RequirePackage{mathspec}
\RequirePackage{bbding}%%%%%%%%%%五角星

\RequirePackage{xeCJK}
\RequirePackage{ifplatform}

\ifwindows
  \setCJKmainfont[AutoFakeBold=true]{SimSun}
  \newCJKfontfamily{\heiti}{SimHei}
  \newCJKfontfamily{\kaiti}{KaiTi}
  \newfontfamily{\heiti@letter}{SimHei}
\else
\ifmacosx
  \setCJKmainfont[AutoFakeBold=true]{Songti SC}
  \newCJKfontfamily{\heiti}{STHeiti}
  \newCJKfontfamily{\kaiti}{STKaiti}
  \newCJKfontfamily{\Fangsong}{STFangsong}
  \newfontfamily{\heiti@letter}{STHeiti}
\else
  \setCJKmainfont[AutoFakeBold=true]{fzsong.ttf}
  \newCJKfontfamily{\heiti}{fzhei.ttf}
  \newCJKfontfamily{\kaiti}{fzkai.ttf}
  \newfontfamily{\heiti@letter}{fzhei.ttf}
\fi
\fi

\setmainfont{Times New Roman}% 英文默认Time New Roman

\newcommand{\chuhao}{\fontsize{42pt}{46pt}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{36pt}\selectfont}
\newcommand{\dayihao}{\fontsize{28pt}{28pt}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{26pt}\selectfont}
\newcommand{\xiaoyihao}{\fontsize{24pt}{24pt}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{22pt}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{18pt}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{15.75pt}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{15pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{14pt}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{12pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{11pt}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{11pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{9pt}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5pt}{7.5pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{6.5pt}\selectfont}


\InputIfFileExists{hdu-thesis.cfg}



\RequirePackage{zhnumber}
\RequirePackage{pifont}

\RequirePackage[hyphens]{xurl}
\RequirePackage[hyperfootnotes=false,
    bookmarksnumbered,
    bookmarksdepth=4
]{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=black,
  linkcolor=black,
  urlcolor=blue
}

\RequirePackage{indentfirst}
\RequirePackage{float}
\RequirePackage{fancyhdr}%%%%fancy用
\RequirePackage{titlesec}
\RequirePackage{appendix}
\RequirePackage[normalem]{ulem}
\RequirePackage{enumitem}

\RequirePackage[algochapter, boxruled, linesnumbered]{algorithm2e}
\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{etoolbox}
\RequirePackage{newfloat}
%\RequirePackage[resetlabels]{multibib}
\RequirePackage[notlof,notlot,nottoc]{tocbibind}%%%%%%%把图列表、表格列表放入目录
\RequirePackage{everypage-1x}
\RequirePackage{ifoddpage}
\RequirePackage{pdfpages}

\graphicspath{{./pic/}}
\RequirePackage[titles]{tocloft}
\RequirePackage[labelformat=simple]{subfig}
\captionsetup[subfigure]{font=small, belowskip=6pt, width=116pt}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\newcommand{\floatcontinue}{\end{figure}\newpage\begin{figure}[tb]\ContinuedFloat}

\urlstyle{rm}
\raggedbottom
%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%正文页眉，章节等设置%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\headheight}{15pt}
\pagestyle{fancy}
\linespread{1.391}%行距设置
\setlength\parindent{24pt}%首行缩进
\titlespacing{\chapter}{0pt}{0pt}{18pt}
\titlespacing{\section}{0pt}{18pt}{6pt}
\titlespacing{\subsection}{0pt}{12pt}{6pt}
\titlespacing{\subsubsection}{0pt}{12pt}{6pt}

%%%%%%%%%%%%%%%%%%%%%%章节中文型标题%%%%%%%%
 %\renewcommand\thechapter{第\zhnumber{\arabic{chapter}}章}
 \renewcommand\thechapter{第{\arabic{chapter}}章}
%\renewcommand\thechapter{{\arabic{chapter}}}
\renewcommand\thesection{\arabic{chapter}.\arabic{section}}

%%%%%%%%%%%%%%%%各类标题设置%%%%%%%%%%%%%%%%%
\captionsetup{format=hang}%标题设置
\captionsetup{width=\textwidth - 42pt}
\captionsetup[figure]{aboveskip=6pt, belowskip=0pt}
\captionsetup[table]{aboveskip=9pt, belowskip=0pt}
\setlength{\intextsep}{9pt}%%浮动图等距离文本距离
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%目录的深度，章节的深度%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
%%%%%%%%%%%%%%章节字号设置%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\chapter}[block]
  {\centering\sanhao\heiti\thispagestyle{fancy}}{\thechapter}{7.5pt}{}
\titleformat{\section}[block]
  {\sihao\heiti}%%%%%%%%字体
  {\thesection}{7pt}{}%%%%%%%%%%%标号与文字间距

\titleformat{\subsection}[block]
  {\xiaosihao\heiti}
  {\thesubsection}{7pt}{}

\titleformat{\subsubsection}[block]
  {\xiaosihao\heiti}
  {\thesubsubsection}{6pt}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%公式、图表、定理等编号等设置%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{lemma}{引理}[chapter]
\newtheorem{definition}{定义}[chapter]
\newtheorem{example}{举例}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{problem}{问题}[chapter]
\newtheorem{assumption}{假设}[chapter]
\newtheorem{remark}{注}[chapter]


\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{theorem}}
\renewcommand{\theaxiom}{\arabic{chapter}.\arabic{axiom}}
\renewcommand{\thecorollary}{\arabic{chapter}.\arabic{corollary}}
\renewcommand{\thelemma}{\arabic{chapter}.\arabic{lemma}}
\renewcommand{\thedefinition}{\arabic{chapter}.\arabic{definition}}
\renewcommand{\theexample}{\arabic{chapter}.\arabic{example}}
\renewcommand{\theproposition}{\arabic{chapter}.\arabic{proposition}}
\renewcommand{\theproblem}{\arabic{chapter}.\arabic{problem}}
\renewcommand{\theassumption}{\arabic{chapter}.\arabic{assumption}}
\renewcommand{\theremark}{\arabic{chapter}.\arabic{remark}}
\renewcommand\thealgocf{\arabic{chapter}-\arabic{algocf}}
\renewcommand{\proofname}{\bfseries 证明}

%%%%%%%%%%%%章节型中文名字设置%%%%%%%%%%%%%%
\renewcommand{\contentsname}{目\one@space 录}
\renewcommand{\bibname}{参考文献}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\listtablename}{表格目录}
\renewcommand{\listfigurename}{图目录}
\SetAlgorithmName{算法}{算法}{算法列表} 
\newcommand{\personalresulttitle}{攻读\cn@degree{}学位期间取得的成果}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%圆圈数字的脚注设置%%%%%%%%%%%%%%
%\makeatletter是在tex文档中使用latex的命令@
\newcommand*{\circnum}[1]{%
  \expandafter\@circnum\csname c@#1\endcsname
}
\newcommand*{\@circnum}[1]{%
  \ifnum#1<1 %
    \@ctrerr
  \else
    \ifnum#1>20 %
      \@ctrerr
    \else
      \ding{\the\numexpr 171+(#1)\relax}%
    \fi
  \fi
}
%\makeatother

\renewcommand*{\thefootnote}{\circnum{footnote}}


%%%%%%%%%%%%%%%%%目录列表的格式设置%%%%%%%%%%%%%%%%%%%%%%%%

\tocloftpagestyle{fancy}%%%%%便于对页眉页脚进行控制
\renewcommand{\cfttoctitlefont}{\xiaosanhao\heiti}
%\renewcommand\cftchapfont{\bfseries}%%章节加粗
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand\cftchapleader{\cftdotfill{\cftdotsep}}%%%%%%章后面dotfill加点点
\renewcommand{\cftdotsep}{0.5}%%%%目录等点与点间距离
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{18pt}
\setlength{\cftbeforechapskip}{0pt}%%%%章后间隔

\addtolength{\cftchapnumwidth}{24pt} %章节与内容的间隔

\cftsetindents{section}{21pt}{22pt}%%%%%调整indent到章的宽度
\cftsetindents{subsection}{44pt}{31pt}
\cftsetindents{subsubsection}{76pt}{41pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%空白页设置%%%%%%%%%%%
\newcommand\coverblankpage{%
  \newpage
  \null
  \thispagestyle{empty}%当前页不显示页码
  \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%



% %%%%%%%%%%%%%%%%%%%%%%封面设置%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makecover}{
%%%%%%%%%%
\ifbcover
\thetitlepage@bachelor
\else \ifbachelorr
\thetitlepage@bachelor@review
\else \ifmcover
 \thetitlepage@master@one
 \thetitlepage@master@two
 \else
 \thetitlepage@master@review
 \fi
 \fi
\fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%原创性声明%%%%%%%%%%%%%%

\newcommand{\makedeclaration}{
%%%%%%%%%%
\ifbdeclaration
\integritydeclaration
\else \ifmdeclaration
\originalitydeclaration
\fi
\fi
}

%%%%%%%%%%%%%非正常页编号%%%%%%%%%%%%
\newcommand\blankpage{%
  \newpage
  \null
  %\thispagestyle{empty}%当前页不显示页码
  \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%中英文摘要%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\cnabstract}{
  %\setcounter{page}{1}
  \pagenumbering{Roman}
  %\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  %\setcounter{section}{0}
    \chapter*{摘\one@space 要}
    \addcontentsline{toc}{chapter}{摘\one@space 要}
    \fancyhf{} %清除以前对页眉页脚的设置
    \fancyhead[C]{\wuhao 摘\one@space 要}
    %送审版页眉
    \ifreviewhead
    \fancyhead[C]{\wuhao\cn@thesisheader}
    \fi
    \fancyfoot[CE,CO]{\xiaowuhao \thepage}
}

\newcommand{\cnkeyword}[1]{
  \par\vspace{\baselineskip}
  \noindent
  \@hangfrom{\makebox[48pt][l]{\heiti 关键词：}}#1
}


\newcommand{\enabstract}{
  \chapter*{\bfseries ABSTRACT}
  \addcontentsline{toc}{chapter}{ABSTRACT}
    \fancyhf{}
    \fancyhead[C]{\wuhao ABSTRACT}
    %送审版页眉
    \ifreviewhead
    \fancyhead[C]{\wuhao\cn@thesisheader}
    \fi
    \fancyfoot[CE,CO]{\xiaowuhao \thepage}
}

\newcommand{\enkeyword}[1]{
  \par\vspace{\baselineskip}
  \noindent
  \@hangfrom{\makebox[2.3cm][l]{\bfseries Keywords:}}#1
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%生成图列表%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\figurelist}{
  \newpage
  %\pdfbookmark{\listfigurename}{\listfigurename}
  \fancyhf{}
  \fancyhead[C]{\wuhao\listfigurename}
  %\fancyhead[C]{\wuhao\cn@thesisheader}
  %送审版页眉
  \ifreviewhead
  \fancyhead[C]{\wuhao\cn@thesisheader}
  \fi
  \fancyfoot[CE,CO]{\xiaowuhao \thepage}
  \addtolength{\cftfignumwidth}{12pt}
  \renewcommand{\cftfigpresnum}{\figurename}
  \listoffigures
  \addcontentsline{toc}{chapter}{\listfigurename}
}


%%%%%%%%%%%%%%%%%%%生成表格列表%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\tablelist}{
  \newpage
  %\pdfbookmark{\listtablename}{\listtablename}
  \fancyhf{}
  \fancyhead[C]{\wuhao\listtablename}
  %\fancyhead[C]{\wuhao\cn@thesisheader}
  %送审版页眉
  \ifreviewhead
  \fancyhead[C]{\wuhao\cn@thesisheader}
  \fi
  \fancyfoot[CE,CO]{\xiaowuhao \thepage}
  \addtolength{\cfttabnumwidth}{12pt}
  \renewcommand{\cfttabpresnum}{\tablename}
  \listoftables
  \addcontentsline{toc}{chapter}{\listtablename}
}

%%%%%%%%%%%%%%%%%%%%%%缩略词表%%%%%%%%%%%%%%%%%%%%%%%%
\newacronymstyle{acronym-hdu}{
  \ifglshaslong{\glslabel}{\glsgenacfmt}{\glsgenentryfmt}
}{
  \renewcommand*{\GenericAcronymFields}{
    first={\the\glslongtok\space\protect\paren{\the\glsshorttok}},
    description={\the\glslongtok}}
  \renewcommand*{\genacrfullformat}[2]{%
    \glsentrydesc{##1}~(\glsentrylong{##1},\space%
    \glsentryshort{##1})%
  }
  \renewcommand*{\acronymentry}[1]{%
    \acronymfont{\glsentryshort{##1}}%
  }
}
\setacronymstyle{acronym-hdu}

\newglossarystyle{hdu-cn}{
  \setlength{\glsdescwidth}{.35\textwidth}
  \setlength{\glspagelistwidth}{.4\textwidth}
  \renewenvironment{theglossary}%
  {\begin{longtable}{p{2.5cm}p{\glsdescwidth}p{\glspagelistwidth}}}%
    {\end{longtable}}%
  \renewcommand*{\glossaryheader}{%
    \heiti 缩略词 &\heiti 英文全称 &
    \heiti 中文全称 \tabularnewline\endhead}%
  \renewcommand*{\glsgroupheading}[1]{}%
  \renewcommand{\glossentry}[2]{
    \glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}} &
    \glsentrylong{##1} & \glsentrydesc{##1}\tabularnewline
  }
  \renewcommand*{\subglossentry}[3]{
    \glossentry{##2}{##3}}
}


\defglsentryfmt{%
  \ifglshaslong{\glslabel}{%
    \glsgenacfmt%
  }{%
    \ifglsused{\glslabel}{%
      \glsgenentryfmt%
    }{%
      \glsgenentryfmt%
    }%
  }%
}

\newcommand{\glossarylist}{
  \newpage 
  \fancyhf{}
  % \fancyhead[C]{}
    \fancyhead[C]{\wuhao 缩略词表}
    %\fancyhead[C]{\wuhao\cn@thesisheader}
    %送审版页眉
    \ifreviewhead
    \fancyhead[C]{\wuhao\cn@thesisheader}
    \fi
    \fancyfoot[CE,CO]{\xiaowuhao\thepage}
   % \pdfbookmark{缩略词表}{glossary}
    \printglossary[style=hdu-cn, title={\protect\centering 缩略词表}, nonumberlist, nogroupskip]
    \addcontentsline{toc}{chapter}{缩略词表}
  \newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%生成目录%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\tableofcontents@orig=\tableofcontents
\renewcommand{\tableofcontents}{
  \newpage
  \fancyhf{}
  \fancyhead[C]{\wuhao 目\one@space 录}
  %\fancyhead[C]{\wuhao\cn@thesisheader}
  %送审版页眉
  \ifreviewhead
  \fancyhead[C]{\wuhao\cn@thesisheader}
  \fi
  \fancyfoot[CE,CO]{\xiaowuhao \thepage}
  \pdfbookmark{目录}{toc}
  \tableofcontents@orig
}

%%%%%%%%%%%%%%%%致谢设置%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\acknowledgement}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \setcounter{section}{0}
    \chapter*{致\one@space 谢}
  \markboth{致\one@space 谢}{致\one@space 谢}
  \addcontentsline{toc}{chapter}{致\one@space 谢}
  \thispagestyle{fancy}
}


%%%%%%%%%%%%%%%%%附录设置（只包含一章的情形）%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\singleappendix}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \renewcommand{\thesection}{A.\arabic{section}}
  \renewcommand{\theequation}{a-\arabic{equation}}
  \renewcommand{\thetable}{a-\arabic{table}}
  \renewcommand{\thefigure}{a-\arabic{figure}}
  \renewcommand{\thetheorem}{a.\arabic{theorem}}
  \renewcommand{\theaxiom}{a.\arabic{axiom}}
  \renewcommand{\thecorollary}{a.\arabic{corollary}}
  \renewcommand{\thelemma}{a.\arabic{lemma}}
  \renewcommand{\thedefinition}{a.\arabic{definition}}
  \renewcommand{\theexample}{a.\arabic{example}}
  \chapter*{附\hspace{12pt}录}
  \addcontentsline{toc}{chapter}{附\one@space 录}
  \markboth{附\one@space 录}{附\one@space 录}
  \thispagestyle{fancy}
}

%%%%%%%%%%%%%%%%%附录设置（包含多章的情形）%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\thesisappendix}{
  \newpage
  \appendix
  \interlinepenalty=0
  %\addtocontents{toc}{\protect\addtolength{\cftchapnumwidth}{12pt}}%控制目录中内容到A的宽度
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \renewcommand{\thechapter}{附录\Alph{chapter}}
  \renewcommand{\appendixname}{附录}
  \renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}
  \renewcommand{\theequation}{\alph{chapter}-\arabic{equation}}
  \renewcommand{\thetable}{\alph{chapter}-\arabic{table}}
  \renewcommand{\thefigure}{\alph{chapter}-\arabic{figure}}
  \renewcommand{\thetheorem}{\alph{chapter}.\arabic{theorem}}
  \renewcommand{\theaxiom}{\alph{chapter}.\arabic{axiom}}
  \renewcommand{\thecorollary}{\alph{chapter}.\arabic{corollary}}
  \renewcommand{\thelemma}{\alph{chapter}.\arabic{lemma}}
  \renewcommand{\thedefinition}{\alph{chapter}.\arabic{definition}}
  \renewcommand{\theexample}{\alph{chapter}.\arabic{example}}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%个人成果设置%%%%%%%%%%%%%%%%%%%%%

\newcommand{\personalresult}{
  \setcounter{section}{0}
    \chapter*{\personalresulttitle}
    \markboth{\personalresulttitle}{\personalresulttitle}
    \addcontentsline{toc}{chapter}{\personalresulttitle}
  \thispagestyle{fancy}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
}


%%%%%%%%%%%%%%%%%%参考文献%%%%%%%%%%%%%%%%%%
\renewcommand{\citep}[1]{\textsuperscript{\cite{#1}}}
\newcommand{\hdubibliography}[1]{
  \bibliographystyle{hdu-thesis}
\bibliography{#1}}

\setlength{\bibsep}{0em}%%%%%%%调整间距
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%正文页眉页脚%%%%%%%%%%%%%%%%%%%%
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\hspace{5.25pt}#1}{}}
\pretocmd{\@chapter}{
  \ifdefined\@BODY
  \else
  \ifnum\value{chapter}=0
      %\newpage{\thispagestyle{empty}\cleardoublepage}
      \pagenumbering{arabic}
      \fancyhf{}
      \fancyhead[CE]{\wuhao\cn@thesisheader}
      \fancyhead[CO]{\wuhao\leftmark}
      %送审版页眉
      \ifreviewhead
      \fancyhead[CO]{\wuhao\cn@thesisheader}
      \fi
      %\fancyhead[CE,CO]{\wuhao\cn@thesisheader}
      \fancyfoot[CE,CO]{\xiaowuhao\thepage}
    \fi
  \fi
}{}{}

%%%%%%%%%%%%%%%从chapter{}第一次用后，设置页码为1，以后不再重置页码，除非有其它指令%%%%%%%%%%
\apptocmd{\@chapter}{
  \ifdefined\@BODY
  \else
    \ifnum\value{chapter}=1
      %\ifchinesebook{\chaptermark{绪论}}{\chaptermark{Introduction}}
      \setcounter{page}{1}
    \fi
  \fi
  \def\@BODY{\null}
}{}{}
