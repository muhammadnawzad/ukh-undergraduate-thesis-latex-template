% Set up the document
\LoadClass[a4paper, 12pt, oneside]{report}
\usepackage{lmodern}
\usepackage{chngcntr}
\usepackage{graphicx}
\usepackage[rgb]{xcolor}
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
\pagestyle{fancy}


% Set the margins
\usepackage[margin=0cm,showframe]{geometry}
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
    {\textcolor[rgb]{1,0.8,0}{\fontsize{18}{20}\textbf{\thesisTitle}}}\\
    {\textcolor[rgb]{1,0.8,0}{\fontsize{18}{20}\textbf{\thesisSubtitle}}} \\[2.5cm]

    \textcolor[rgb]{1,0.8,0}{\fontsize{12}{14}\textit{By:}} \\
    {\textcolor[rgb]{1,0.8,0}{\fontsize{16}{18}\textbf{\thesisAuthor}}} \\ [2cm]

    \textcolor[rgb]{1,0.8,0}{University of Kurdistan Hewlêr\\Erbil, Kurdistan}\\[2cm]
    \textcolor[rgb]{1,0.8,0}{\fontsize{13}{15}BSc\\\thesisDate}

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
    \addcontentsline{toc}{chapter}{Declaration}

    % start the page count from II and set the format to roman
    \pagenumbering{Roman}
    \setcounter{page}{2}

    \begin{flushleft}
        {\fontsize{16}{18}\textbf{Declaration}}
    \end{flushleft}

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
    \addcontentsline{toc}{chapter}{Supervisor's Certificate}
    \begin{flushleft}
        {\fontsize{16}{18}\textbf{Supervisor’s Certificate}}
    \end{flushleft}
    {\fontsize{12}{14}
    This dissertation/thesis has been written under my supervision and has been submitted for the award of the degree of ‘Bachelor of Science’ in ‘{\studentMajor}’ with my approval as supervisor.
    }\\
    \vspace{1cm}

    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Signature} \hspace{7.45cm}
    {\fontsize{12}{14}Name} \\ [1cm]
    \rule{8.2cm}{0.5pt} \hspace{1cm} \\
    {\fontsize{12}{14}Date} \\ [1cm]

    {\fontsize{12}{14}\textbf{I confirm that all the requirements have been fulfilled.}} \\ [1.5cm]

    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Signature} \hspace{7.45cm}
    {\fontsize{12}{14}Name} \\ [1cm]
    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Head of Department of} \hspace{5.1cm}
    {\fontsize{12}{14}Date} \\ [1cm]

    {\fontsize{12}{14}\textbf{I confirm that all the requirements have been fulfilled.}} \\ [1.5cm]

    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Signature} \hspace{7.45cm}
    {\fontsize{12}{14}Name} \\ [1cm]
    \rule{8.2cm}{0.5pt} \hspace{1cm} \rule{6cm}{0.5pt} \\
    {\fontsize{12}{14}Dean of School of} \hspace{6cm}
    {\fontsize{12}{14}Date}
    \clearpage
}

% Ser the examining committee certification page
\newcommand{\examiningCommittee}[0]{
    \addcontentsline{toc}{chapter}{Examining Committee Certification}
    \begin{flushleft}
        {\fontsize{16}{18}\textbf{Examining Committee Certification}}
    \end{flushleft}

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
    {\fontsize{12}{14}Date} & \hspace{1cm}{\fontsize{12}{14}Date} \\
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
    \addcontentsline{toc}{chapter}{Dedication}

    \begin{flushleft}
        {\fontsize{16}{18}\textbf{Dedication}}
    \end{flushleft}

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
\titlespacing*{\chapter}{0pt}{-27pt}{20pt}
\titleformat{\chapter}[block]
    {\fontsize{16}{18}\bfseries}{Chapter \thechapter}{5pt}{}

% Format section titles
\titleformat{\section}
    {\fontsize{14}{16}\bfseries}{\thesection}{5pt}{}

% Format subsection titles
\titleformat{\subsection}
    {\fontsize{12}{14}\bfseries}{\thesubsection}{5pt}{}

% Number of sections and subsections
\setcounter{secnumdepth}{3}
\numberwithin{section}{chapter}
\numberwithin{subsection}{section}


% Set table of contents style.
\renewcommand*\contentsname{Table of Contents}

% if the page number is not a roman character for chapters, don't show the page number, or the dots.
\titlecontents{chapter}[0em]{\addvspace{10pt}}{Chapter \thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{{\IfInteger{\thecontentslabel}{}{.}}}{{\IfInteger{\thecontentslabel}{}{\contentspage}}}}

% section and subsection style for toc
\titlecontents{section}[2.5em]{\addvspace{10pt}}{\thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{.}\contentspage}
\titlecontents{subsection}[5em]{\addvspace{10pt}}{\thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{.}\contentspage}

% Set the list of tables
\titlecontents{table}[0em]{\addvspace{10pt}}{Figure \thecontentslabel\hspace{5pt}}{\hspace*{0em}}{\titlerule*[5pt]{.}\contentspage}

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
\makeglossaries


% Set the list of abbreviations and symbols style
\let\svitem\item%
\def\mybox#1{\makebox[2cm][l]{\bfseries#1}}
\newenvironment{leftitemize}
{\renewcommand\item[1][$\bullet$]{\svitem[\mybox{##1}]}%
    \begin{itemize}[leftmargin=\dimexpr2cm+\labelsep]}{\end{itemize}}


% Sets list of contents, tables, figures, abbreviations, and symbols
\newcommand{\lists}[0]{
    \tableofcontents
    \listoftables
    \listoffigures
    \addcontentsline{toc}{chapter}{Table of Contents}
    \addcontentsline{toc}{chapter}{List of Tables}
    \addcontentsline{toc}{chapter}{List of Figures}
    \include{prelude/list_of_abbreviations.tex}
    \include{prelude/list_of_symbols.tex}
    \clearpage
}
