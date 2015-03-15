\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my-resume}[03/14/2015 My custom resume class]

\RequirePackage{titlesec}
\RequirePackage{array}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{newclude}

% Customising the \section command
\titleformat{\section}
  {\bf\Large\scshape\raggedright} % Large, small capitalized, align left
  {}{0em}            % Prefix
  {}               % Suffix

% Customising the spacing before and after a section depending on the presence of a summary.
\titlespacing{\section}{0pt}{3pt}{0pt}
\titlespacing{\subsection}{0pt}{3pt}{0pt}

% Customising the \subsection command
\titleformat{\subsection}
  {\normalsize\raggedright}
  {}{0em}
  {}

% New command for the Experience subsections
\newcommand{\experiencesubsection}[2]{%
  \subsection[#1]{#1 \hspace{0.2in} \bf#2}%
}

% No indent
\setlength{\parindent}{0pt}

% New table column types
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}

% New command to setup the title of resume
\newcommand{\resumetitle}[1]{
  \centerline{\huge \bf #1}
}

% New command to setup the contact line of the resume
\newcommand{\resumecontact}[2]{
  \centerline{#1 \large{\textperiodcentered} \small{#2}}
}

% New command to setup the pdf metadata
\newcommand{\resumemetadata}[4]{
  % PDF metadata
  \hypersetup{
    colorlinks = true,
    urlcolor = black,
    pdfauthor = {#1},
    pdfkeywords = {#2},
    pdftitle = {#3},
    pdfsubject = {#4},
    pdfpagemode = UseNone
  }
}

% Customize page headers
\pagestyle{myheadings}

%\markright{\name}
\thispagestyle{empty}

% No space between list items
\setlist{nolistsep}

% Tables configuration
\def\arraystretch{1.2}
\setlength{\tabcolsep}{0.7pt}
\setlength{\textfloatsep}{1cm}


\newenvironment{educationlist}
  {
    \begin{itemize}[label={},leftmargin=0pt]
    \let\olditem\item
    \renewcommand\item[2][]{\olditem ##1  ##2 \hspace{0.2in}}
  }
  {\end{itemize}}

% Conditionnal and associated command to control the English output
\newif\ifen
\newcommand{\en}[1]{\ifen#1\fi}

% Conditionnal and associated command to control the French output
\newif\iffr
\newcommand{\fr}[1]{\iffr#1\fi}

% Conditionnal to control the summary section output
\newif\ifsummary