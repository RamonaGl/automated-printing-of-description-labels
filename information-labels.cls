% implemented by RamonaGl

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{information-labels}[
    2023/03/09 Custom notepad sized image labeling class for the Observatory Höfingen by ramona.gloetter.de
    2025/04/05 Last update
    ]

\LoadClass{article}

%----------------------------------------------------------------------------------------
%	SETTING GEOMETRY AND FONT
%----------------------------------------------------------------------------------------

\usepackage[a4paper]{geometry}

\geometry {
    top = 2cm,
    bottom = 2cm,
    left = 2cm,
    right = 2cm,
    %showframe
}

\pagestyle{empty}

\usepackage{courierten}
\renewcommand*\familydefault{\ttdefault}
\usepackage[T1]{fontenc}

%----------------------------------------------------------------------------------------
% COLOR DEFINITIONS
%---------------------------------------------------------------------------------------- 
\usepackage{transparent}
\usepackage{color}
\usepackage{xhfill} 

\definecolor{maincolor}{RGB}{0, 0, 0}

\newcommand{\setmaincolor}[3]{
    \definecolor{maincolor}{RGB}{#1, #2, #3}
}

%----------------------------------------------------------------------------------------
%	CUSTOMIZE \section AND \subsection
%----------------------------------------------------------------------------------------

\RequirePackage{titlesec}
\usepackage{xcolor}

%\bfseries, \itshape: make the heading bold or italic;
%\scshape:small capitals;
%\small, \normalsize, \large, \Large, \LARGE, \huge, \Huge: set the font size;
%\rmfamily, \sffamily, \ttfamily: set the font type to serifed, sans serifed or typewriter respectively.

\titleformat{\section} 
    {\vspace*{-1.5em}\LARGE\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

%----------------------------------------------------------------------------------------
%	STLYE: HEADING, TEXT, ICONS, BULLETPOINTS, PICTURE
%----------------------------------------------------------------------------------------

\newcommand{\heading}[1]{
    \textcolor{maincolor}{
        \section{#1}
    }
    \vspace*{1em}
}
