\ProvidesClass{resume}

\LoadClass[10pt,a4paper]{article} % Font size and paper type
\usepackage[a4paper, top=3cm, bottom=3cm, left=2cm, right=2cm]{geometry}
\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements



% setup color theme
\usepackage[dvipsnames]{xcolor}
\definecolor{RubinRed}{RGB}{192,0,0}
\definecolor{mblue}{HTML}{0668E1}
\definecolor{dblue}{HTML}{0053d6}

\pagestyle{empty} % Suppress page numbers

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

% \printname is used to print the name as a page header
\def \printname {
  \begingroup
    \color{mblue}
    {\MakeUppercase{\namesize\@name}}
  \endgroup
}

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \printname % Print the name specified with \name
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
%   \sectionskip
  \MakeUppercase{\sc #1} % Section title
%   \sectionlineskip
  \vskip 1mm % Horizontal line
  {\color{mblue}\hrule height 0.1mm }
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{0em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\huge} % Size of the name at the top of the document
\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section
\def\nameskip{\bigskip} % The space after your name at the top
\def\sectionskip{\medskip} % The space after the heading section
