% Set up the document
\LoadClass[a4paper, 12pt, oneside]{report}
\usepackage{lmodern}
\usepackage{chngcntr}
\usepackage{graphicx}
\usepackage[rgb]{xcolor}
\usepackage{fontspec}
\usepackage{ragged2e}
\usepackage{fancyhdr}
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
    {\textcolor[rgb]{1,0.8,0}{\fontsize{18}{20}\textbf{#1}}}\\
    {\textcolor[rgb]{1,0.8,0}{\fontsize{18}{20}\textbf{#2}}} \\[2.5cm]

    \textcolor[rgb]{1,0.8,0}{\fontsize{12}{14}\textit{By:}} \\
    {\textcolor[rgb]{1,0.8,0}{\fontsize{16}{18}\textbf{#3}}} \\ [2cm]

    \textcolor[rgb]{1,0.8,0}{University of Kurdistan Hewlêr\\Erbil, Kurdistan}\\[2cm]
    \textcolor[rgb]{1,0.8,0}{\fontsize{13}{15}BSc\\#4}

    \end{titlepage}
}

% Set the title page
\newcommand{\ukhtitlepage}[8]{
    \begin{titlepage}
    \centering
    \includegraphics[width=0.4\textwidth]{figures/logo.png}\\ [-0.75cm]
    {\fontsize{18}{20}\textbf{#1}}\\
    {\fontsize{18}{20}\textbf{#2}} \\[1cm]

    \fontsize{12}{14}\textit{By}\\
    {\fontsize{16}{18}\textbf{#3}}\\
    {\fontsize{12}{14}Student Number: #4}\\[1cm]

    \fontsize{12}{14}\textit{A thesis submitted in partial fulfilment of the requirements for the degree of}\\
    \fontsize{14}{16}{Bachelor of Science in #5}\\[1cm]

    {\fontsize{13}{15}Department of #6}\\
    {\fontsize{13}{15}School of #7}\\
    {\fontsize{13}{15}University of Kurdistan Hewlêr}\\[1cm]

    {\fontsize{13}{15}BSc}\\
    {\fontsize{13}{15}#8}\\
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
\newcommand{\declaration}[1]{
    \addcontentsline{toc}{chapter}{Declaration}

    % start the page count from II and set the format to roman
    \pagenumbering{Roman}
    \setcounter{page}{2}

    \begin{flushleft}
        {\fontsize{16}{18}\textbf{Declaration}}
    \end{flushleft}

    {\fontsize{12}{14}
    \begin{justify}
    #1
    \end{justify}}

    \vspace{1cm}

    {\fontsize{12}{14}Signature:} \\ [0.25cm]
    {\fontsize{12}{14}Name:} \\ [0.25cm]
    {\fontsize{12}{14}Date:}

}
