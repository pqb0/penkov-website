
%%   This is a class for the Journal "Transformation Groups".
%%
%%   We build it on the base of article.cls standard LaTeX2e class.
%% Several standard class options were disabled, since they
%% contradicts typesetting conventions of TG Journal. File EX_L2E.TEX
%% in your distribution contains the sample paper produced in this style.
%%
%%   We presume that you have AmSLaTeX 1.2 installed (amsfonts and amsthm
%% packages required). If you have not yet ask your local wizards to do it
%% for you, or just get it from CTAN ftp.dante.de in directory ...?
%%
%%   Don't make ANY CHANGES in this file,
%% if you use it for the preparation of the papers to the Journal.
%% Please report about bugs and necessary corrections to
%%
%%   Vadim Radionov, Eugene Tevelev, Vsevolod Kordonski
%% e-mail: vadim@sch57.mcn.msk.su
%%         tevelev@ium.ips.ras.ru
%%         kord@mccme.ru
%%
%%   Version 4.1a
%%   Release Date: April, 2000
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tglat2e}[2000/04/24 Local "Tranformations Groups" document class]


\DeclareOption{twoside}{
         \ClassWarning{TG}{this option is not valid in TG -- option ignored}}

\DeclareOption{titlepage}{
	 \ClassWarning{TG}{this option is not valid in TG -- option ignored}}

\DeclareOption{10pt}{
         \ClassWarning{TG}{design size is 10pt}}
\DeclareOption{11pt}{
         \ClassWarning{TG}{design size is 10pt -- option ignored}}
\DeclareOption{12pt}{
         \ClassWarning{TG}{design size is 10pt -- option ignored}}

\newif\ifcyr@   \cyr@false
\DeclareOption{loadcyr}{\cyr@true}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions

\LoadClass[twoside,10pt]{article}

\IfFileExists{amssymb.sty}{\RequirePackage{amssymb}}
 {\RequirePackage{latexsym}
  \IfFileExists{ueuf.fd}{
    \DeclareMathAlphabet\mathfrak{U}{euf}{m}{n}
    \SetMathAlphabet\mathfrak{bold}{U}{euf}{b}{n}
   \def\frak{\mathfrak}}
  {\ClassWarning{TG}{font with fraktur letters not found}}
  \IfFileExists{umsa.fd}{
    \DeclareSymbolFont{AMSa}{U}{msa}{m}{n}
    \DeclareSymbolFont{AMSb}{U}{msb}{m}{n}
    \DeclareSymbolFontAlphabet{\mathbb}{AMSb}
    \def\Bbb{\mathbb}}
  {\ClassWarning{TG}{AMS symbol fonts not found}}
 }

%\RequirePackage{amsthm}


%%
%%
%% This is file `amsthm.sty', generated
%% on <1995/2/1> with the docstrip utility (2.2i).
%%
%% The original source files were:
%%
%% amsthm.dtx
%%% ====================================================================
%%%  @LaTeX-file{
%%%     filename  = "amsthm.dtx",
%%%     version   = "1.2a",
%%%     date      = "1995/02/01",
%%%     time      = "10:03:21 EST",
%%%     checksum  = "11606 681 3173 26034",
%%%     author    = "American Mathematical Society",
%%%     copyright = "Copyright (C) 1995 American Mathematical Society,
%%%                  all rights reserved.  Copying of this file is
%%%                  authorized only if either:
%%%                  (1) you make absolutely no changes to your copy,
%%%                  including name; OR
%%%                  (2) if you do make changes, you first rename it
%%%                  to some other name.",
%%%     address   = "American Mathematical Society,
%%%                  Technical Support,
%%%                  Electronic Products and Services,
%%%                  P. O. Box 6248,
%%%                  Providence, RI 02940,
%%%                  USA",
%%%     telephone = "401-455-4080 or (in the USA and Canada)
%%%                  800-321-4AMS (321-4267)",
%%%     FAX       = "401-331-3842",
%%%     email     = "tech-support@math.ams.org (Internet)",
%%%     supported = "yes",
%%%     keywords  = "latex, amslatex, ams-latex, theorem",
%%%     abstract  = "This is part of the AMS-\LaTeX{} distribution.
%%%                  It is a package which provides multiple theorem
%%%                  styles, unnumbered theorem types, and a proof
%%%                  environment with automatic ending Q.E.D. symbol.
%%%                  Loosely derived from Mittelbach's theorem.sty.",
%%%     docstring = "The checksum field contains: CRC-16 checksum,
%%%                  word count, line count, and character count, as
%%%                  produced by Robert Solovay's checksum utility.",
%%%  }
%%% ====================================================================
\NeedsTeXFormat{LaTeX2e}
%\ProvidesPackage{amsthm}[1995/02/01 v1.2a]    %% changed in tglat2e.cls
\@ifpackageloaded{amsgen}{}{\input{amsgen.sty}}
\newcommand{\theoremstyle}[1]{%
  \@ifundefined{th@#1}{%
    \PackageWarning{amsthm}{Unknown theoremstyle `#1'}%
    \theorem@style{plain}%
  }{%
    \theorem@style{#1}%
  }%
}
\newtoks\theorem@style
\theorem@style{plain}
\newtoks\theorembodyfont
\theorembodyfont{\itshape}
\newtoks\theoremheadfont
\theoremheadfont{\bfseries}
\newtoks\theoremnotefont
\theoremnotefont{\bfseries}
\newtoks\theoremheadpunct
\theoremheadpunct{.}
\newskip\theorempreskipamount \theorempreskipamount\topsep
\newskip\theorempostskipamount \theorempostskipamount\topsep
\renewcommand{\newtheorem}{\@ifstar{\@xnthm *}{\@xnthm \relax}}
\def\@xnthm#1#2{%
  \let\@tempa\relax
  \@xp\@ifdefinable\csname #2\endcsname{%
    \global\@xp\let\csname end#2\endcsname\@endtheorem
    \ifx *#1% unnumbered, need to get one more mandatory arg
      \edef\@tempa##1{%
        \gdef\@xp\@nx\csname#2\endcsname{%
          \@nx\@thm{\@xp\@nx\csname th@\the\theorem@style\endcsname}%
            {}{##1}}}%
    \else % numbered theorem, need to check for optional arg
      \def\@tempa{\@oparg{\@ynthm{#2}}[]}%
    \fi
  }%
  \@tempa
}
\def\@ynthm#1[#2]#3{%
  \ifx\relax#2\relax
    \def\@tempa{\@oparg{\@xthm{#1}{#3}}[]}%
  \else
    \@ifundefined{c@#2}{%
      \def\@tempa{\@nocounterr{#2}}%
    }{%
      \@xp\xdef\csname the#1\endcsname{\@xp\@nx\csname the#2\endcsname}%
      \toks@{#3}%
      \@xp\xdef\csname#1\endcsname{%
        \@nx\@thm{%
          \let\@nx\thm@swap
            \if S\thm@swap\@nx\@firstoftwo\else\@nx\@gobble\fi
          \@xp\@nx\csname th@\the\theorem@style\endcsname}%
            {#2}{\the\toks@}}%
      \let\@tempa\relax
    }%
  \fi
  \@tempa
}
\def\@xthm#1#2[#3]{%
  \ifx\relax#3\relax
    \newcounter{#1}%
  \else
    \newcounter{#1}[#3]%
    \@xp\xdef\csname the#1\endcsname{\@xp\@nx\csname the#3\endcsname
      \@thmcountersep\@thmcounter{#1}}%
  \fi
  \toks@{#2}%
  \@xp\xdef\csname#1\endcsname{%
    \@nx\@thm{%
      \let\@nx\thm@swap
        \if S\thm@swap\@nx\@firstoftwo\else\@nx\@gobble\fi
      \@xp\@nx\csname th@\the\theorem@style\endcsname}%
      {#1}{\the\toks@}}%
}
\def\@thm#1#2#3{\normalfont
  \trivlist
  \labelsep.5em\relax \let\thmheadnl\relax
  \let\theoremindent\noindent % no indent
  \let\thm@swap\@gobble
  \theoremheadfont{\bfseries}% heading font bold
  \theoremheadpunct{.}% add period after heading
  \theorempreskipamount\topsep
  \theorempostskipamount\theorempreskipamount
  #1% style overrides
  \@topsep \theorempreskipamount               % used by first \item
  \@topsepadd \theorempostskipamount           % used by \@endparenv
  \def\@tempa{#2}\ifx\@empty\@tempa
    \def\@tempa{\@oparg{\@begintheorem{#3}{}}[]}%
  \else
    \refstepcounter{#2}%
    \def\@tempa{\@oparg{\@begintheorem{#3}{\csname the#2\endcsname}}[]}%
  \fi
  \@tempa
}
\let\@ythm\relax
\let\thmname\@iden \let\thmnumber\@iden \let\thmnote\@iden
\def\thmhead@plain#1#2#3{%
  \thmname{#1}\thmnumber{ #2}\thmnote{ {\the\theoremnotefont(#3)}}}
\let\thmhead\thmhead@plain
\def\swappedhead#1#2#3{%
  \thmnumber{#2}\thmname{. #1}\thmnote{ {\the\theoremnotefont(#3)}}}
\let\thmheadnl\relax
\def\@begintheorem#1#2[#3]{%
  \item[\normalfont % reset in case body font is abnormal
  \hskip\labelsep
  \the\theoremheadfont
  \theoremindent
  \@ifempty{#1}{\let\thmname\@gobble}{\let\thmname\@iden}%
  \@ifempty{#2}{\let\thmnumber\@gobble}{\let\thmnumber\@iden}%
  \@ifempty{#3}{\let\thmnote\@gobble}{\let\thmnote\@iden}%
  \thm@swap\swappedhead\thmhead{#1}{#2}{#3}%
  \the\theoremheadpunct]%
  \thmheadnl % possibly a newline.
  \ignorespaces}
\def\nonslanted{\relax
  \@xp\let\@xp\@tempa\csname\f@shape shape\endcsname
  \ifx\@tempa\itshape\upshape
  \else\ifx\@tempa\slshape\upshape\fi\fi}
\def\swapnumbers{\edef\thm@swap{\if S\thm@swap N\else S\fi}}
\def\thm@swap{N}%
\let\@opargbegintheorem\relax
\def\th@plain{%
%%  \let\theoremindent\noindent % no indent
%%  \theoremheadfont{\bfseries}% heading font is bold
%%  \theoremnotefont{}% same as heading font
%%  \theoremheadpunct{.}% add period after heading
%%  \let\thm@swap\@gobble
%%  \theorempreskipamount\topsep
%%  \theorempostskipamount\theorempreskipamount
  \itshape % body font
}
\def\th@definition{%
  \normalfont % body font
}
\def\th@remark{%
  \theoremheadfont{\itshape}%
  \normalfont % body font
  \theorempreskipamount\topsep
  \divide\theorempreskipamount\tw@
  \theorempostskipamount\theorempreskipamount
}
\def\@endtheorem{\endtrivlist\@endpefalse }
\newcommand{\newtheoremstyle}[9]{%
  \@ifempty{#5}{\dimen@\z@skip}{\dimen@#5\relax}%
  \ifdim\dimen@=\z@
    \toks@{#4\let\theoremindent\noindent}%
  \else
    \toks@{#4\def\theoremindent{\noindent\hbox to#5{}}}%
  \fi
  \def\@tempa{#8}\ifx\space\@tempa
    \toks@\@xp{\the\toks@ \labelsep\fontdimen\tw@\font\relax}%
  \else
    \def\@tempb{\newline}%
    \ifx\@tempb\@tempa
      \toks@\@xp{\the\toks@ \labelsep\z@skip
        \def\thmheadnl{\leavevmode\newline}}%
    \else
      \toks@\@xp{\the\toks@ \labelsep#8\relax}%
    \fi
  \fi
  \@temptokena{%
    \theorempreskipamount#2\relax
    \theorempostskipamount#3\relax
    \theoremheadfont{#6}\theoremheadpunct{#7}%
  }%
  \@ifempty{#9}{%
    \let\thmhead\thmhead@plain
  }{%
    \@namedef{thmhead@#1}##1##2##3{#9}%
    \@temptokena\@xp{\the\@temptokena
      \@xp\let\@xp\thmhead\csname thmhead@#1\endcsname}%
  }%
  \@xp\xdef\csname th@#1\endcsname{\the\toks@ \the\@temptokena}%
}
\DeclareRobustCommand{\qed}{%
  \ifmmode % if math mode, assume display: omit penalty etc.
  \else \leavevmode\unskip\penalty9999 \hbox{}\nobreak\hfill
  \fi
  \quad\hbox{\qedsymbol}}
\newcommand{\openbox}{\leavevmode
  \hbox to.77778em{%
  \hfil\vrule
  \vbox to.675em{\hrule width.6em\vfil\hrule}%
  \vrule\hfil}}
\newcommand{\qedsymbol}{\openbox}
\newenvironment{proof}[1][\proofname]{\par
  \normalfont
  \topsep6\p@\@plus6\p@ \trivlist
  \item[\hskip\labelsep\itshape
    #1\@addpunct{.}]\ignorespaces
}{%
  \qed\endtrivlist
}
\newcommand{\proofname}{Proof}
%%\DeclareOption*{\input{\CurrentOption .thm}}   %%
%\ProcessOptions                                 %%changed in tglat2e.cls
%\endinput                                       %%
%%
%% End of file `amsthm.sty'.


%  THIS can cause troubles if meets another of that kind!
%\mag=900

%%%%%%%%%%  Fonts!

%%%Cyrillic Fonts --- look at file read_me.cyr

\ifcyr@
\DeclareFontFamily{OT1}{wncyr}{\hyphenchar\font45 }
\DeclareFontShape{OT1}{wncyr}{m}{n}{%
   <5> <6> <7> <8> <9> gen * wncyr
   <10> <10.95> <12> <14.4> <17.28> <20.74>  <24.88>wncyr10}{}
\DeclareFontShape{OT1}{wncyr}{m}{it}{%
   <5> <6> <7> <8> <9> gen * wncyi
   <10> <10.95> <12> <14.4> <17.28> <20.74> <24.88> wncyi10}{}
\DeclareFontShape{OT1}{wncyr}{m}{sc}{%
   <5> <6> <7> <8> <9> <10> <10.95> <12> <14.4>
   <17.28> <20.74> <24.88>wncysc10}{}
\DeclareFontShape{OT1}{wncyr}{b}{n}{%
   <5> <6> <7> <8> <9> gen * wncyb
   <10> <10.95> <12> <14.4> <17.28> <20.74> <24.88>wncyb10}{}
\input cyracc.def
\def\rus{\usefont{OT1}{wncyr}{m}{n}\cyracc\fontsize{9}{11pt}\selectfont}
\def\rusit{\usefont{OT1}{wncyr}{m}{it}\cyracc\fontsize{9}{11pt}\selectfont}
\def\russc{\usefont{OT1}{wncyr}{m}{sc}\cyracc\fontsize{9}{11pt}\selectfont}
\def\rusbf{\usefont{OT1}{wncyr}{b}{n}\cyracc\fontsize{9}{11pt}\selectfont}
\fi

\DeclareMathSizes{9}{9}{7}{5} % This only is different.


\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 12\p@ \@plus3\p@ \@minus9\p@
   \belowdisplayskip \abovedisplayskip
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 7\p@ \@plus3\p@ \@minus4\p@
   \let\@listi\@listI}
\normalsize
\renewcommand\small{%
   \@setfontsize\small\@ixpt\@xipt
   \abovedisplayskip 11\p@ \@plus2\p@ \@minus8\p@
   \belowdisplayskip \abovedisplayskip
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 6\p@ \@plus2\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   }
\renewcommand\tiny{\@setfontsize\tiny\@viiipt\@xpt}

\renewcommand\large{\@setfontsize\large\@xiipt{16.5}}

\let\scriptsize\small
\let\footnotesize\small
\let\Large\large
\let\LARGE\large
\let\huge\large
\let\Huge\large

%\hsize=5.25truein %5
%\vsize=7.75truein  % 8.2
%\hoffset=0.625truein%3.5pc
%\voffset=0.875truein%3.5pc




\setlength\textwidth{4.93truein}
\setlength\textheight{7.75truein}
\baselineskip=12pt

\setlength\evensidemargin \z@
\setlength\oddsidemargin  \z@
\setlength\topmargin{-22.5\p@}%{-22.5\p@}
\setlength\headsep{14\p@}%{14\p@}

\setlength\footskip\bigskipamount

\advance\textheight-2pt
%\addtolength\textheight\headsep
%\addtolength\textheight{.7\headheight}


\setlength\hoffset{0.625truein}%{3.5pc}
\setlength\voffset{0.875truein}%{3.5pc}
\advance\voffset-3pt
\advance\hoffset0pt

\setlength\parindent{1pc}
\newlength\normalparindent
\setlength\normalparindent\parindent


%%%%%%%%%% Topmatter
\message{head,}
\def\title{\@dblarg{\@maketit}}
\def\@maketit[#1]#2{\gdef\@title{#2}{\def\\{}\protected@xdef\@shtitle{#1}}}

%\uppercase depends on a version of LaTeX
    \@ifl@t@r\fmtversion{1996/06/02}{%
     \gdef\uppercasetext@#1{%
     {\spaceskip1.3\fontdimen2\the\font plus1.3\fontdimen3\the\font
      \def\ss{SS}\let\i=I\let\j=J\let\ae\AE\let\oe\OE
      \let\o\O\let\l\L
      \skipmath@#1$\skipmath@$}}}%
   {\gdef\uppercasetext@#1{%
    {\spaceskip1.3\fontdimen2\the\font plus1.3\fontdimen3\the\font
     \def\ss{SS}\let\i=I\let\j=J\let\ae\AE\let\oe\OE
     \let\o\O\let\aa\AA\let\l\L
     \skipmath@#1$\skipmath@$}}}

\def\skipmath@#1$#2${\uppercase{#1}%
  \ifx\skipmath@#2\else$#2$\expandafter\skipmath@\fi}

\let\short@author\@empty\let\@short@@author\@empty
\def\@authors{}
\def\shortnames#1{\def\@short@@author{#1}}

\def\authors{\@ifnextchar[{\@@authors[.45]}{\@@authors[.45]}}
\long\def\@@authors[#1]#2{{\let\\\relax
\def\auth@fraction{#1}\let\protect\@unexpandable@protect
\afterassignment\@auth
\getname{\ifnum0=`}\fi\ignorespaces
#2\end@once\ifnum0=`{\fi}\ifnum0=`{\fi}\egroup
}\protected@edef\short@author{\ifx\@short@@author\@empty
\ignorespaces\expandafter\@gobble\short@author\else\@short@@author\fi}}


\def\@auth{\let\protect\@typeset@protect\add@name\bgroup\let\end@once\relax
\protected@edef\name{\expandafter\uppercasetext@\expandafter{\name}}%
\protected@xdef\@authors{\ifnum0=`}\fi\@authors\space
\protect\parbox[t]{\auth@fraction\textwidth}{\ifnum0=`}\fi
\lineskiplimit\normallineskiplimit\lineskip\normallineskip
\protect\centering\strut\name}

\def\end@once{\ifnum0=`{\fi}\let\end@once\relax}
\def\getname{\edef\name}

\def\address{\unskip\end@once\\[1.1pc]}
\def\email{\unskip\end@once\\[3pt]}

\def\and{\unskip\strut\end@once\ifnum0=`{\fi}\ifnum0=`{\fi}\egroup
\@ifnextchar[{\@and[.45}{\@and[.45]}}

\def\@and[#1]{\def\auth@fraction{#1}\let\protect\@unexpandable@protect
\afterassignment\@auth\getname{\ifnum0=`}\fi\ignorespaces}

\def\add@name{{\def\\{}\ifx\short@author\@empty
\protected@xdef\short@author{\noexpand\last@one\name}\else
\protected@xdef\short@author{\expandafter\add@last@name\short@author\name}\fi
}}
\def\add@last@name#1\last@one#2\name{#1, #2\noexpand\last@one\name}
\def\last@one{ and }


\def\thanks#1{\unskip\end@once\protect\footnotemark\protect\@@thanks{#1}}

\def\@@thanks#1{\protected@xdef\@thanks{\@thanks
\protect\footnotetext[\the\c@footnote]{#1}}}


\def\dedicatory#1{\gdef\@dedicate{\vskip2.2pc\nointerlineskip%2.3pc
{\fontshape{it}\small #1\par}}}

\let\@dedicate\@empty

%\def\received#1{\edef\@recacc{Received #1. \@recacc}}
%\def\accepted#1{\edef\@recacc{\@recacc Accepted #1.}}

\let\@recacc\@empty

\renewenvironment{abstract}{\nointerlineskip\small
\trivlist\@topsep2.5pc\@topsepadd\z@
\item[]\textbf{Abstract. }\ignorespaces}
{\endtrivlist}

\def\asts#1{\expandafter\@asts\csname c@#1\endcsname}
\def\@asts#1{\ensuremath{\ifcase#1\or *\or **\or *{*}*\or *{**}*\or
*{*{*}*}*\or *{**}{**}*\else \@ctrerr\fi}}

\def\maketitle{\par
 \begingroup
   \newpage\global\@topnum\z@
   \renewcommand\thefootnote{\@asts\c@footnote}
   \@maketitle
   \thispagestyle{title}\@thanks
   \ifx\@recacc\@empty\fi
   \let\@makefnmark\ignorespaces
   \protected@xdef\@thefnmark{\thefootnote}%
   \@footnotetext{{\addtolength\footnotesep{2\p@}\rule{\z@}{\footnotesep}}%
          \@recacc}%
 \endgroup
 \markboth{\expandafter\uppercasetext@\expandafter{\short@author}}
        {\expandafter\uppercasetext@\expandafter{\@shtitle}}%
 \setcounter{footnote}{0}\setcounter{page}\FirstPage
 \let\maketitle\relax\let\@maketitle\relax\let\@thanks\relax
 \let\@authors\relax\let\short@author\relax\let\@short@@author\relax
 \let\auth\relax\let\address\relax\let\email\relax\let\and\relax
 \let\@and\relax\let\getname\relax\let\name\relax\let\add@name\relax
 \let\add@last@name\relax\let\last@one\relax\let\@title\relax
 \let\@shtitle\relax\let\thanks\relax\let\@dedicate\relax\let\@recacc\relax
 \let\dedicate\relax\let\received\relax\let\accepted\relax
}

\def\@maketitle{\renewcommand{\aa}{\r A}\newpage\ \vskip-5pt\centering
 {\fontseries{bx}\large
   \expandafter\uppercasetext@\expandafter{\@title}\strut\par
 }\renewcommand{\aa}{\r a}%
 \ifx\@author\@empty\else\let\protect\@typeset@protect
   \lineskiplimit\maxdimen\lineskip1.1pc
   \vskip-2pt
   \noindent\ignorespaces\@authors\par
 \fi
 \@dedicate
}

\def\VolInfo{Vol.~?}
\def\NumberInfo{No.~?}
\def\YearInfo{??}
\def\FirstPage{1}
\def\LastPage{??}



%%%%%%%%%% The headings!

\pagestyle{myheadings} % We use headings on default

 \def\@evenhead{\normalfont\small\strut\rlap{\textrm{\thepage}}\hfill{\leftmark}\hfill}
 \def\@oddhead{\normalfont\small\strut\hfill{\rightmark}\hfill\llap{\textrm{\thepage}}}
 \def\sectionmark#1{}
 \def\subsectionmark#1{}


\def\ps@title{\def\@evenhead{\vbox{\hbox to
\textwidth{}
\vskip2pt}\let\@oddhead\@evenhead}}
%\vskip2pt\hrule\vskip-2.4pt}}

%%%%%%%%%% Sectioning!
\message{body (part by part)}

\let\part\relax \let\chapter\relax %
\let\paragraph\relax    % These undoubtedly useful sectionings
\let\subparagraph\relax % are illegal in this style. Too complex!

\renewcommand\section{\@secpenalty-200
\renewcommand\@seccntformat[1]{\csname the##1\endcsname.\ }%
\@startsection{section}{1}{\z@}{1.2truepc\relax}
      {6\p@}{\bf\centering}}

\renewcommand{\subsection}{\@secpenalty-100
\renewcommand\@seccntformat[1]{\csname the##1\endcsname.\ }%
\@startsection{subsection}{2}{\z@}{-\medskipamount}
      {\smallskipamount}{\bf}}



\renewcommand{\subsubsection}{\@secpenalty-100
\@startsection{subsubsection}{3}{\z@}{\medskipamount}
      {-.5em}{\it\aftergroup.}}

\setcounter{secnumdepth}2
%%%%%       Theorems!
%%   (If you're lucky to have AMSLaTeX 1.2 package.)

  \newcount\theoremprepenalty   \newcount\theorempostpenalty

%%   Next definition from amsthm.sty was hacked a bit to set different
%% penalties before (and after) theorems. (VR)

 \def\@thm#1#2#3{\normalfont
   \trivlist
   \labelsep.5em\relax \let\thmheadnl\relax
   \let\theoremindent\noindent % no indent
   \let\thm@swap\@gobble
   \theoremheadfont{\bfseries}% heading font bold
   \theoremheadpunct{.}% add period after heading
   \theorempreskipamount\topsep
   \theorempostskipamount\theorempreskipamount
   \theoremprepenalty0                          %% I add these
   \theorempostpenalty0                         %% 2 lines (VR)
   #1% style overrides
   \@beginparpenalty\theoremprepenalty          %% And this (VR)
   \@endparpenalty\theorempostpenalty           %% And this (VR)
   \@topsep \theorempreskipamount               % used by first \item
   \@topsepadd \theorempostskipamount           % used by \@endparenv
   \def\@tempa{#2}\ifx\@empty\@tempa
     \def\@tempa{\@oparg{\@begintheorem{#3}{}}[]}%
   \else
     \refstepcounter{#2}%
     \def\@tempa{\@oparg{\@begintheorem{#3}{\csname the#2\endcsname}}[]}%
   \fi
   \@tempa
 }

 \def\th@plain{%
    \theoremnotefont{}%
    \theorempreskipamount\medskipamount
    \theorempostskipamount\theorempreskipamount
    \theoremprepenalty-100
    \theorempostpenalty55
    \itshape
 }
 \def\th@definition{%
    \theoremnotefont{}%
    \theorempreskipamount\medskipamount
    \theorempostskipamount\theorempreskipamount
    \theoremprepenalty-100
    \theorempostpenalty55
    \upshape
 }
\def\th@remark{%
  \theoremheadfont{\itshape}% heading font italic
  \theoremnotefont{\mdseries\upshape}%
  \theorempreskipamount\medskipamount
  \theorempostskipamount0pt\relax
  \theoremprepenalty-100
  \upshape
 }

 \renewenvironment{proof}[1][\proofname]{\par
   \normalfont
   \addpenalty{-100}
   \topsep\medskipamount\relax
   \labelsep.5em
   \trivlist
   \item[\hskip\labelsep\itshape
     #1\@addpunct{.}]\ignorespaces
 }{\endtrivlist}                   %% \qed removed (VR)


%%%%%%%%%%% Lists
\message{ - the whole list, - }
\@beginparpenalty\@m
\@endparpenalty-50
\@itempenalty0

\labelwidth16pt
\labelsep.5em
\leftmargini\labelwidth \advance\leftmargini\labelsep
\advance\leftmargini\parindent
\partopsep\z@
\parsep\parskip
\topsep\smallskipamount
\itemsep\z@
\leftmarginii\leftmargini
\leftmarginiii\leftmargini


\def\@listI{\leftmargin\leftmargini}
\let\@listi\@listI

\@listi

\def\@listii{\leftmargin\leftmarginii \topsep\z@}
\def\@listiii{\leftmargin\leftmarginiii}

\def\theenumi{\arabic{enumi}}
\def\labelenumi{(\theenumi)}

\def\theenumii{\arabic{enumii}}
\def\p@enumii{\theenumi.}
\def\labelenumii{\theenumii.}

\def\theenumiii{\alph{enumiii}}
\def\p@enumiii{\p@enumii}
\def\labelenumiii{\theenumiii)}


%%%%%%%%%% Footnotes!
\message{and feet...}

\renewcommand{\footnoterule}{\kern-3\p@
\hrule width5pc height.4\p@\relax \kern 2.6\p@}

\renewcommand\@makefntext[1]{\parindent\normalparindent
\leavevmode\@makefnmark#1}


%%%%%%%%%% Captions and figures
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}

\newlength\@maxcaptionwd
\setlength\@maxcaptionwd\textwidth
\addtolength\@maxcaptionwd{-4pc}

\long\def\@makecaption#1#2{%
   \bigskip
   \sbox\@tempboxa{\normalsize\normalfont\textsc{#1.}\enskip#2}%
   \ifdim \wd\@tempboxa >\@maxcaptionwd
       \normalsize\normalfont\textsc{#1}.\enskip#2\par
   \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
   \fi}

%%%% Bibliography

\renewenvironment{thebibliography}[1]
     {\section*{\refname}\small%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}


\message{That's all, folks!}
\endinput

