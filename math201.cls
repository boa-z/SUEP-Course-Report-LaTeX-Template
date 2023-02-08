\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{math201}
[2023/02/08 v0.2 Standard LaTeX Template for Math201 Report]
\LoadClass[UTF8,a4paper]{ctexart}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage[most,minted]{tcolorbox}
\RequirePackage{minted}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{multirow}
\RequirePackage{array}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}
\RequirePackage{booktabs}
\RequirePackage{todonotes}


% 行间距
\linespread{1.25}

% 字号汉化设置
\newcommand{\初号}{\zihao {0}}
\newcommand{\小初}{\zihao{-0}}
\newcommand{\一号}{\zihao {1}}
\newcommand{\小一}{\zihao{-1}}
\newcommand{\二号}{\zihao {2}}
\newcommand{\小二}{\zihao{-2}}
\newcommand{\三号}{\zihao {3}}
\newcommand{\小三}{\zihao{-3}}
\newcommand{\四号}{\zihao {4}}
\newcommand{\小四}{\zihao{-4}}
\newcommand{\五号}{\zihao {5}}
\newcommand{\小五}{\zihao{-5}}
\newcommand{\六号}{\zihao {6}}
\newcommand{\小六}{\zihao{-6}}
\newcommand{\七号}{\zihao {7}}
\newcommand{\八号}{\zihao {8}}
% 字体汉化设置
\xeCJKsetup{EmboldenFactor=3} % 伪粗体等级
% 字体设置
\renewcommand{\songti}{\CJKfontspec[Path=fonts/,FallBack=simsunb.ttf,AutoFakeBold]{simsun.ttc}}
\setCJKmainfont[Path=fonts/,FallBack=simsunb.ttf,AutoFakeBold]{simsun.ttc} % 中文默认为宋体,小四在\documentclass处设置
\newcommand{\宋体}{\songti}
% 黑体
\renewcommand{\heiti}{\CJKfontspec[Path=fonts/]{simhei.ttf}}
\setCJKsansfont[Path=fonts/]{simhei.ttf}
\newcommand{\黑体}{\heiti}
% 其他
\newcommand{\仿宋}{\fangsong}
\newcommand{\楷书}{\kaishu}
\newcommand{\隶书}{\lishu}
\newcommand{\幼圆}{\youyuan}
\newcommand{\雅黑}{\yahei}
\newcommand{\苹方}{\pingfang}
% 字体效果汉化设置
\newcommand{\粗体}{\bfseries}
\newcommand{\斜体}{\itshape}
% 设置章节样式
\ctexset{
  % 需要使用ctexart文类，否则报错键不存在
  section = {
    format={\heiti\三号},
  },
  subsection = {
    format={\heiti\四号},
  },
  subsubsection = {
    format={\heiti\小四},
  },
}

\renewcommand\thesection{\CJKnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}

\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize}
\graphicspath{{figures/}{figure/}{pictures/}%
{picture/}{pic/}{pics/}{image/}{images/}}

\titlespacing{\subsection}{1em}{*4}{*1.5}
\titlespacing{\subsubsection}{1em}{*4}{*1.5}

% 代码格式和颜色定义
\usemintedstyle{emacs}


% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}


% 页眉
\pagestyle{fancy}
\lhead{课程名称：数值计算方法训练}
\chead{姓名：\@name}
\rhead{学号：\@stuid}


% 封面
\newcommand{\makecover}{
  \begin{center}
    \heiti
    \bfseries\Huge{《数值计算方法训练》}\\
    \vspace{0.5cm}
    \bfseries\huge{实习报告}
    \vspace{1cm}
    \begin{center}
      \includegraphics[width=0.4\linewidth]{shiep-logo}
    \end{center}
    \vspace{1cm}
    \begin{center}
			\begin{large}
				\begin{tabular}{rc}
          \LARGE{院\qquad 系：}& \Large{\@college}\\
					\cline{2-2}\\
          \LARGE{专业年级：}& \Large{\@major}\\
					\cline{2-2}\\
					\LARGE{姓\qquad 名：}& \Large{\@name}\\
					\cline{2-2}\\
					\LARGE{学\qquad 号：}&\hspace{2.5cm} \Large {\@stuid} \hspace{2.5cm} \\
					\cline{2-2}
				\end{tabular}
			\end{large}
		\end{center}
    \vspace{1.5cm}
    \Large{\@date}
  \end{center}
  \thispagestyle{empty}
  \newpage
  \setcounter{page}{1}
}

