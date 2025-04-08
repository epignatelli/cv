\ProvidesClass{resume}
\NeedsTeXFormat{LaTeX2e}
\LoadClass[10pt,a4paper]{article}

\RequirePackage[a4paper, top=2cm, bottom=2cm, left=2cm, right=2cm]{geometry}
\RequirePackage[parfill]{parskip}
\RequirePackage{array}
\RequirePackage{ifthen}
\RequirePackage{titlesec}
\RequirePackage{versions}
\RequirePackage{verbatim} % required for \excludeversion
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{xcolor}
\RequirePackage{hyperref}

% Define colors
\definecolor{RubinRed}{RGB}{192,0,0}
\definecolor{mblue}{HTML}{0668E1}
\definecolor{dblue}{HTML}{0053d6}

% Define the resume option
\newif\ifisfullcv
\isfullcvfalse
\DeclareOption{fullcv}{\isfullcvtrue}
\ProcessOptions\relax

\pagestyle{empty}
\renewcommand{\baselinestretch}{0.8}

% Section formatting
\titleformat{\section}
  {\large\normalfont}{\thesection}{1em}{}[{\color{mblue}\titlerule[0.1mm]}]

% Shortcuts
\newcommand{\position}[1]{\textbf{#1}\par}
\newcommand{\employer}[1]{\textbf{#1}\par}
\newcommand{\dates}[1]{#1\par}
\newcommand{\place}[1]{#1\par}
\newcommand{\jobdescription}[1]{\ifisfullcv#1\else\par\fi}
\newcommand{\topic}[1]{\textit{Subject: #1}\par}

% Contact items
\newcommand{\website}[2]{\href{#1}{#2}\\}
\newcommand{\email}[2]{\href{#1}{#2}}
\newcommand{\mobile}[2]{\href{#1}{#2}\ifisfullcv\\\relax\else\fi}
\newcommand{\github}[2]{\ifisfullcv\href{#1}{#2}\\\else\par\fi}
\newcommand{\linkedin}[2]{\ifisfullcv\href{#1}{#2}\\\else\par\fi}
\newcommand{\twitter}[2]{\ifisfullcv\href{#1}{#2}\\\else\par\fi}
\newcommand{\scholar}[2]{\ifisfullcv\href{#1}{#2}\else\par\fi}

% Sections
\newenvironment{education}{\section*{\sc EDUCATION}}{}
\newenvironment{industryExperience}{\section*{\sc EXPERIENCE}}{}
\newenvironment{teachingExperience}{\section*{\sc TEACHING EXPERIENCE}}{}
\newenvironment{publications}{\section*{\sc PUBLICATIONS}}{}
\newenvironment{awards}{\section*{\sc AWARDS AND SCHOLARSHIPS}}{}
\newenvironment{presentations}{\section*{\sc PRESENTATIONS AND LECTURES}}{}
\newenvironment{licences}{\section*{\sc LICENCES}}{}
\newenvironment{courses}{\section*{\sc SUPPLEMENTARY COURSES}}{}

% Hide environments in short CV
\ifisfullcv\relax\else
  \excludeversion{presentations}
  \excludeversion{licences}
  \excludeversion{courses}
\fi
