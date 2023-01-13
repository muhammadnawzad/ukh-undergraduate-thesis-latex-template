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


