\ProvidesClass{resume}

\LoadClass[10pt,a4paper]{article} % Font size and paper type
\usepackage[a4paper, top=3cm, bottom=3cm, left=2cm, right=2cm]{geometry}
\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{titlesec}


% setup color theme
\usepackage[dvipsnames]{xcolor}
\definecolor{RubinRed}{RGB}{192,0,0}
\definecolor{mblue}{HTML}{0668E1}
\definecolor{dblue}{HTML}{0053d6}

\pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

\renewcommand{\baselinestretch}{0.9}


\titleformat{\section}
  {\large\normalfont}{\thesection}{1em}{}[{\color{mblue}\titlerule[0.1mm]}]


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
\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section
\def\sectionskip{\medskip} % The space after the heading section
