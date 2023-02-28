\ProvidesClass{resume}

\LoadClass[10pt,a4paper]{article} % Font size and paper type
\usepackage[a4paper, top=2cm, bottom=2cm, left=2cm, right=2cm]{geometry}
\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{titlesec}
\usepackage{versions}


% setup color theme
\usepackage[dvipsnames]{xcolor}
\definecolor{RubinRed}{RGB}{192,0,0}
\definecolor{mblue}{HTML}{0668E1}
\definecolor{dblue}{HTML}{0053d6}


% Define the resume option
\newif\ifisfullcv\isfullcvfalse % Declare a boolean variable
\DeclareOption{fullcv}{\isfullcvtrue}
\ProcessOptions\relax % Process the options

\pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------


% - interline
% ----------------------------------------------------------------------------------------
\renewcommand{\baselinestretch}{0.8}


% - section formatting
% ----------------------------------------------------------------------------------------
\titleformat{\section}
  {\large\normalfont}{\thesection}{1em}{}[{\color{mblue}\titlerule[0.1mm]}]
\newcommand{\position}[1]{\textbf{#1}\par}
\newcommand{\employer}[1]{\textbf{#1}\par}
\newcommand{\dates}[1]{#1\par}
\newcommand{\place}[1]{\ifisfullcv\par\else#1\fi}
\newcommand{\jobdescription}[1]{\ifisfullcv#1\else\par\fi}


% - contact items formatting
% ----------------------------------------------------------------------------------------
\newcommand{\email}[2]{\href{#1}{#2}\\}
\newcommand{\mobile}[2]{\href{#1}{#2}\ifisfullcv\\\relax\else\fi}
\newcommand{\website}[2]{\ifisfullcv\href{#1}{#2}\\\else\par\fi}
\newcommand{\github}[2]{\ifisfullcv\href{#1}{#2}\\\else\par\fi}
\newcommand{\linkedin}[2]{\ifisfullcv\href{#1}{#2}\\\else\par\fi}
\newcommand{\twitter}[2]{\ifisfullcv\href{#1}{#2}\\\else\par\fi}
\newcommand{\scholar}[2]{\ifisfullcv\href{#1}{#2}\else\par\fi}


% - sections
%----------------------------------------------------------------------------------------
\newenvironment{education}[0]{
  \section*{\sc EDUCATION} % Section title
}{}

\newenvironment{industryExperience}[0]{
  \section*{\sc EXPERIENCE} % Section title
}{}

\newenvironment{teachingExperience}[0]{
  \section*{\sc TEACHING EXPERIENCE} % Section title
}{}

\newenvironment{publications}[0]{
  \section*{\sc PUBLICATIONS} % Section title
}{}

\newenvironment{awards}[0]{
  \section*{\sc AWARDS AND SCHOLARSHIPS} % Section title
}{}

\newenvironment{presentations}[0]{%
    \section*{\sc PRESENTATIONS AND LECTURES} % Section title
}{}

\newenvironment{licences}[0]{%
    \section*{\sc LICENCES} % Section title
}{}

\newenvironment{courses}[0]{%
    \section*{\sc SUPPLEMENTARY COURSES} % Section title
}{}


% - resume items
%----------------------------------------------------------------------------------------
% hide presentations and lectures in short cv
\ifisfullcv\relax\else\excludeversion{presentations}\fi

% hide licences in short cv
\ifisfullcv\relax\else\excludeversion{licences}\fi

% hide supplementary courses in short cv
\ifisfullcv\relax\else\excludeversion{courses}\fi


