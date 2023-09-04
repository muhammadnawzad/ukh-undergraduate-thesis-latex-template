% Set up the document
\LoadClass[a4paper, 12pt, oneside]{report}
\usepackage{lmodern}
\usepackage{chngcntr}
\usepackage{graphicx}
\usepackage[RGB,table,xcdraw]{xcolor}
\usepackage{fontspec}
\usepackage{ragged2e}
\usepackage{fancyhdr}
\usepackage{titlesec}
\usepackage{amsmath}
\usepackage{titletoc}
\usepackage{xstring}
\usepackage{etoolbox}
\usepackage{enumitem}
\usepackage[acronym,nonumberlist,symbols]{glossaries}
\usepackage{mathabx}
\usepackage[fleqn]{nccmath}
\usepackage[hidelinks]{hyperref}
\usepackage{multirow}
\usepackage{colortbl}
\usepackage{hhline}
\usepackage{natbib}
\usepackage{vcell}
\pagestyle{fancy}

% Set the margins
\usepackage[margin=0cm]{geometry} %showframe
\geometry{left=3cm,right=2.50cm,top=2.50cm,bottom=2.50cm}
\setlength{\footskip}{1.25cm}
\raggedright

% Set the line spacing and Main Font
\linespread{1.5}
\setmainfont{Arial}

% Set the cover page
\newcommand{\cover}[4]{
    \begin{titlepage}
    \centering
    \includegraphics[width=0.4\textwidth]{figures/logo.png} \\[1cm]
    {{\fontsize{18}{20}\textbf{\thesisTitle}}}\\
    {\fontsize{18}{20}\textbf{\thesisSubtitle}} \\[2.5cm]

    {\fontsize{12}{14}\textit{By:}} \\
    {{\fontsize{16}{18}\textbf{\thesisAuthor}}} \\ [2cm]

    {University of Kurdistan Hewlêr\\Erbil, Kurdistan}\\[2cm]
    {\fontsize{13}{15}BSc\\\thesisDate}

    \end{titlepage}
}

% Set the title page
\newcommand{\ukhtitlepage}[8]{
    \begin{titlepage}
    \centering
    \includegraphics[width=0.4\textwidth]{figures/logo.png}\\ [-0.75cm]
    {\fontsize{18}{20}\textbf{\thesisTitle}}\\
    {\fontsize{18}{20}\textbf{\thesisSubtitle}} \\[1cm]

    \fontsize{12}{14}\textit{By}\\
    {\fontsize{16}{18}\textbf{\thesisAuthor}}\\
    {\fontsize{12}{14}Student Number: {\studentNumber}}\\[1cm]

    \fontsize{12}{14}\textit{A thesis submitted in partial fulfillment of the requirements for the degree of}\\
    \fontsize{14}{16}{Bachelor of Science in {\studentMajor}}\\[1cm]

    {\fontsize{13}{15}Department of {\studentDepartment}}\\
    {\fontsize{13}{15}School of {\studentSchool}}\\
    {\fontsize{13}{15}University of Kurdistan Hewlêr}\\[1cm]

    {\fontsize{13}{15}BSc}\\
    {\fontsize{13}{15}{\thesisDate}}\\
    {\fontsize{13}{15}Erbil, Kurdistan}
    \end{titlepage}
}

% Set the footer style
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Set page number to the center based on margin, not page size
\fancyfoot[C]{\hspace*{\dimexpr(\textwidth-\marginparwidth)/8\relax}\thepage}


% Set the declaration page
\newcommand{\declaration}[2]{
    % start the page count from II and set the format to roman
    \pagenumbering{Roman}
    \setcounter{page}{2}
    
    \chapter*{Declaration}
    \addcontentsline{toc}{chapter}{Declaration}

    {\fontsize{12}{14}
    \begin{justify}
    I hereby declare that this dissertation/thesis entitled: “{#1}“ is my own original work and hereby certify that unless stated, all work contained within this is my own independent research and has not been submitted for the award of any other degree at any institution, except where due acknowledgment is made in the text.
    \end{justify}}

    \vspace{1cm}

    {\fontsize{12}{14}Signature:} \\ [0.25cm]
    {\fontsize{12}{14}Name: {\thesisAuthor}} \\ [0.25cm]
    {\fontsize{12}{14}Date:}
    \clearpage
}

% Set the supervisor's certificate page
\newcommand{\supervisorCertificate}[0]{
    \chapter*{Supervisor's Certificate}
    \addcontentsline{toc}{chapter}{Supervisor's Certificate}
    
    {\fontsize{12}{14}
    This dissertation/thesis has been written under my supervision and has been submitted for the award of the degree of ‘Bachelor of Science’ in ‘{\studentMajor}’ with my approval as supervisor.
    }\\
    \vspace{1cm}

    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Signature} \hspace{7.55cm}
    {\fontsize{12}{14}Name} \\ [1cm]
    \rule{8.2cm}{0.5pt} \hspace{1cm} \\
    {\fontsize{12}{14}Date} \\ [1cm]

    {\fontsize{12}{14}\textbf{I confirm that all the requirements have been fulfilled.}} \\ [1.5cm]

    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Signature} \hspace{7.55cm}
    {\fontsize{12}{14}Name} \\ [1cm]
    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Head of Department of} \hspace{5.1cm}
    {\fontsize{12}{14}Date} \\ [1cm]

    {\fontsize{12}{14}\textbf{I confirm that all the requirements have been fulfilled.}} \\ [1.5cm]

    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Signature} \hspace{7.55cm}
    {\fontsize{12}{14}Name} \\ [1cm]
    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Dean of School of} \hspace{6cm}
    {\fontsize{12}{14}Date}
    \clearpage
}

% Ser the examining committee certification page
\newcommand{\examiningCommittee}[0]{
    \chapter*{Examining Committee Certification}
    \addcontentsline{toc}{chapter}{Examining Committee Certification}

    {\fontsize{12}{14}
    \begin{justify}
    We certify that we have read this dissertation/thesis: "{{\thesisTitle} {\thesisSubtitle}}" and as a committee have examined the student: "{\thesisAuthor}" in its content and what is related to it. We approve that it meets the standards of a dissertation/thesis for the degree of BSc in {\studentMajor}.
    \end{justify}}

    \vspace{1cm}
    \begin{tabular}{@{}l l}
    \rule{6cm}{0.5pt} & \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Signature} & \hspace{1cm} {\fontsize{12}{14}Signature} \\
    {\fontsize{12}{14}Name:} & \hspace{1cm} {\fontsize{12}{14}Name:} \\
    {\fontsize{12}{14}Chairman} & \hspace{1cm} {\fontsize{12}{14}Supervisor} \\
    {\fontsize{12}{14}Date} & \hspace{1.1cm}{\fontsize{12}{14}Date} \\
    \end{tabular}

    \vspace{1.5cm}
    \begin{tabular}{@{}l l}
    \rule{6cm}{0.5pt} & \\
    {\fontsize{12}{14}Signature} & \\
    {\fontsize{12}{14}Name:} & \\
    {\fontsize{12}{14}Member} & \\
    {\fontsize{12}{14}Date} & \\
    \end{tabular}
    \clearpage
}

% Set the dedication page
\newcommand{\dedication}[2]{
    \chapter*{Dedication}
    \addcontentsline{toc}{chapter}{Dedication}
    
    {\fontsize{12}{14}
    \begin{justify}
        {#2}
    \end{justify}}

    \vspace{1cm}

    {\fontsize{12}{14}{\thesisAuthor}} \\ [0.25cm]
    {\fontsize{12}{14}{#1}}
    \clearpage
}


% Format chapter titles
\titlespacing*{\chapter}{0pt}{-27pt}{10pt}
\titleformat{\chapter}[block]
    {\fontsize{16}{18}\bfseries}{Chapter \thechapter}{5pt}{}

% Format section titles
\titlespacing*{\section}{0pt}{0pt}{5pt}
\titleformat{\section}
    {\fontsize{14}{16}\bfseries}{\thesection}{5pt}{}

% Format subsection titles
\titlespacing*{\subsection}{0pt}{0pt}{2.5pt}
\titleformat{\subsection}
    {\fontsize{12}{14}\bfseries}{\thesubsection}{5pt}{}

% Number of sections and subsections
\setcounter{secnumdepth}{3}
\numberwithin{section}{chapter}
\numberwithin{subsection}{section}

% Set table of contents style.
\renewcommand*\contentsname{Table of Contents}

% if the page number is not a roman character for chapters, don't show the dots.
\titlecontents{chapter}[0em]{\addvspace{10pt}}{Chapter \thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{{\IfInteger{\thecontentslabel}{}{.}}}{\contentspage}}
% {{\IfInteger{\thecontentslabel}{}{\contentspage}}}} use this to hide the number

% section and subsection style for toc
\titlecontents{section}[2.5em]{\addvspace{10pt}}{\thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{.}\contentspage}
\titlecontents{subsection}[5em]{\addvspace{10pt}}{\thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{.}\contentspage}
\titlecontents{subsubsection}[5em]{\addvspace{10pt}}{\thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{.}\contentspage}

% Set the list of tables
\titlecontents{table}[0em]{\addvspace{10pt}}{Table \thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{.}\contentspage}

% Set the list of figures
\titlecontents{figure}[0em]{\addvspace{10pt}}{Figure \thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{.}\contentspage}

% This removes the extra gap between tables from different chapters
\makeatletter
\patchcmd{\@chapter}
    {\addtocontents{lot}{\protect\addvspace{10\p@}}}
    {}
    {}{}
\makeatother


% Set the glossary style
\newglossarystyle{custom}
{
    \renewcommand*{\glossentry}[2]{%
        \item[\glsentrytext{##1}] ##2
        \glsentryitem \textbf{--} \glossentrydesc{##1}\par
    }
}
\setglossarystyle{custom}
% comment the line below to disable glossaries
\makeglossaries


% Workaround (Part 1) to fix the issue with \glsaddall adding an extra page before the glossary
\newcommand{\newglossarypredefine}[0]{
    \setcounter{page}{1}
    \renewcommand{\thepage}{G\arabic{page}}
    \addcontentsline{toc}{chapter}{Glossary}
}

% Workaround (Part 2) to fix the issue with \glsaddall adding an extra page before the glossary
\newcommand{\newprintglossary}[0]{
    \glsaddall
    
    \let\oldclearpage\clearpage
    \let\clearpage\relax
    \printglossary
    \let\clearpage\oldclearpage
    \restoregeometry
}


% Set the list of abbreviations and symbols style
\let\svitem\item%
\def\mybox#1{\makebox[2.5cm][l]{\bfseries#1}}
\newenvironment{leftitemize}
{\renewcommand\item[1][$\bullet$]{\svitem[\mybox{##1}]}%
  \begin{itemize}[leftmargin=\dimexpr2.5cm+\labelsep]}{\end{itemize}}


\let\origaddvspace\addvspace

% Sets the list of contents, tables, figures, abbreviations, and symbols
\newcommand{\lists}[0]{
    \tableofcontents
    \setcounter{page}{8}
    \addcontentsline{toc}{chapter}{Table of Contents}
    \listoftables
    \addcontentsline{toc}{chapter}{List of Tables}
    \listoffigures
    \addcontentsline{toc}{chapter}{List of Figures}
    \include{prelude/list_of_abbreviations.tex}
    \include{prelude/list_of_symbols.tex}
}

% Set bullet point and numbering style
\setlist[itemize]{label=\bullet, leftmargin=1.0cm}
\setlist[enumerate]{label=\arabic*, leftmargin=1.0cm}

\setlist[itemize,1]{label=$\bullet$}
\setlist[itemize,2]{label=$\circ$}
\setlist[itemize,3]{label=$\sqbullet$}

\setlist[enumerate,1]{label={\arabic*.}}
\setlist[enumerate,2]{label={\alph*.}}
\setlist{itemsep=0.1ex}


% Number equations within individual chapters
\numberwithin{equation}{chapter}
\makeatletter
\let\oldtagform@\tagform@
\renewcommand\tagform@[1]{\maketag@@@{\ignorespaces#1\unskip\@@italiccorr}}
\renewcommand{\eqref}[1]{\textup{\oldtagform@{\ref{#1}}}}
\makeatother


% Set the figure and table caption style
\usepackage{floatrow}
\usepackage[font=small]{caption}
\floatsetup[table]{capposition=top}


% Defines a new end page taking the name used to define the chapter and the letter that is set before the pagination number
\newcommand{\newendpage}[2]{
    \chapter*{#1}
    \setcounter{page}{1}
    \renewcommand{\thepage}{#2\arabic{page}}
    \addcontentsline{toc}{chapter}{#1}
}


% Defines a new appendix chapter (takes appendix chapter sequential occurrence number)
\newcommand{\newappendices}[0]{
    \chapter*{Appendices}
    \setcounter{page}{1}
    \renewcommand{\thepage}{A\arabic{page}}
    \addcontentsline{toc}{chapter}{Appendices}
}

% no compression on pdf generation
\special{dvipdfmx:config z 0}

% Adds paragraph space and removes indent
\usepackage[skip=8pt]{parskip}
\newcommand{\newendline}[0]{
    \par \noindent
}

\usepackage{forloop}
