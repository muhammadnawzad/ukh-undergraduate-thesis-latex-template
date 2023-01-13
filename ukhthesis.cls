% Set up the document
\LoadClass[a4paper, 12pt, oneside]{report}
\usepackage{lmodern}
\usepackage{chngcntr}
\usepackage{graphicx}
\usepackage[rgb]{xcolor}
\usepackage{fontspec}

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
    \includegraphics[width=0.4\textwidth]{logo.png} \\[1cm]
    {\textcolor[rgb]{1,0.8,0}{\fontsize{18}{20}\textbf{#1}}}\\
    {\textcolor[rgb]{1,0.8,0}{\fontsize{18}{20}\textbf{#2}}} \\[2.5cm]

    \textcolor[rgb]{1,0.8,0}{\textit{By:}} \\
    {\textcolor[rgb]{1,0.8,0}{\fontsize{16}{18}\textbf{#3}}} \\ [2cm]

    \textcolor[rgb]{1,0.8,0}{University of Kurdistan Hewlêr\\Erbil, Kurdistan}\\[2cm]
    \textcolor[rgb]{1,0.8,0}{\fontsize{13}{15}BSc\\#4}

    \end{titlepage}
}
