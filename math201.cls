\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{math201}
[2023/01/01 v0.1 Standard LaTeX Template for Math201 Report]
\LoadClass[UTF8,a4paper]{ctexart}
\RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
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



\linespread{1.25}

\renewcommand\thesection{\CJKnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}


%\setCJKmainfont[ItalicFont={KaiTi_GB2312},BoldFont={SimHei}]{SimSun}

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
    \vspace{2cm}
    \begin{center}
      \includegraphics[width=0.4\linewidth]{shiep-logo}
    \end{center}
    \vspace{2cm}
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
    \vspace{2cm}
    \Large{\@date}
  \end{center}
  \thispagestyle{empty}
  \newpage
  \setcounter{page}{1}
}

