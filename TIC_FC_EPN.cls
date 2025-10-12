% =======================================================
% Clase TIC_FC_EPN.cls provee la estructura general del documento Trabajo de Integración Curricular para las carreras de la Facultad de Ciencias de la EPN

% Diseñado y creado por: Dr. Paul Acevedo Tapia

% =======================================================

% ========== Inicialización clase

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TIC_FC_EPN}[2021/12/30 Trabajo de Integración Curricular]
\LoadClass[11pt,oneside,a4paper]{report}

% ========== Paquetes

% Codificación texto de entrada a Unicode
\RequirePackage[utf8]{inputenc} 

% Idiomas documento: inglés y español
\RequirePackage[english,spanish, es-nodecimaldot]{babel}

% Amplía opciones de impresión de caracteres especiales como (< |), copia y pega texto apropiadamente de documentos (DVI/PS/PDF)
\RequirePackage[T1]{fontenc}

% Ajusta fuente de texto del documento
\RequirePackage{bookman} 

% Control gráficos
\RequirePackage{graphicx, float, subfigure}

\graphicspath{{Imagenes/}}

% Ajuste dimensiones página
\RequirePackage[includeheadfoot]{geometry}

% Manejo escritura matemática
\RequirePackage{amsmath,amsfonts,amsthm,amssymb,mathrsfs}

% Manejo hipervínculos en archivo pdf
\RequirePackage{hyperref}
\RequirePackage{fvextra}
\RequirePackage{csquotes}


% Ajustes títulos capítulo, sección, etc.
\RequirePackage{titlesec}
\RequirePackage{setspace} 

% Ajuste colores texto
\RequirePackage{xcolor}

% Ajusta espaciado documento
\RequirePackage{setspace}
\onehalfspacing

% Ajuste texto a mayúsculas, minúsculas
\RequirePackage{textcase}

%\RequirePackage{fancyhdr}
%\RequirePackage{blindtext}

% Bibliografía
\RequirePackage[
backend=biber,
%style=apa, %utilizar comando \parencite
%style=vancouver, %utilizar comando \cite
style=phys,
articletitle=false,biblabel=brackets,
chaptertitle=false,pageranges=false
]{biblatex}

\addbibresource{referencias-tic.bib}

%Listas
\RequirePackage{enumitem}
\renewcommand{\theenumi}{\Alph{enumi}}

% ========== Ajustes generales

% Ajustes dimensiones horizontales página
\setlength{\hoffset}{0cm}
\setlength{\textwidth}{15cm}

% Ajustes dimensiones verticales página
\setlength{\voffset}{0cm}
\setlength{\topmargin}{-1.5cm}
\setlength{\headsep}{0.5cm}
\setlength{\headheight}{0.4cm}
\setlength{\textheight}{23.8cm}
\setlength{\footskip}{0.7cm}

% Ajustes hipervínculos
%\hypersetup{colorlinks=true,linkcolor=blue,urlcolor=blue,citecolor=green}
\hypersetup{colorlinks=true,
    linkcolor=blue,
    urlcolor=blue,
    citecolor=blue, 
    filecolor=blue}

\urlstyle{same}

% Formato título capítulo
\titleformat
{\chapter} % command
[display] % shape
{\bfseries\Large} % format
{\Huge Capítulo \ \thechapter} % label
{0.2cm} % sep
{
    \rule{\textwidth}{0.35mm}
    \vspace{0.2cm}
    \centering
}
[
\vspace{-0.5cm}%
\rule{\textwidth}{0.35mm}
]

% Añade una página en blanco sin numeración de página
\def\paginablanco{%
\clearpage%
\thispagestyle{empty}%
\null%
\clearpage%
}

%Tabla de contenidos
% \RequirePackage{tocbibind}

%Nueno comando de secciones para páginas previas al contenido
\newcommand\ssection{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\large\bfseries}}

% ========== Portada

% Variables de información

\newcommand{\titulotic}[1]%
    {\newcommand\@titulotic{#1}}
\newcommand{\profesion}[1]%
    {\newcommand\@profesion{#1}}
\newcommand{\estudiante}[1]%
    {\newcommand\@estudiante{#1}}
\newcommand{\correoestudiante}[1]%
    {\newcommand\@correoestudiante{#1}}
\newcommand{\director}[1]%
    {\newcommand\@director{#1}}
\newcommand{\correodirector}[1]%
    {\newcommand\@correodirector{#1}}
\newcommand{\fecha}[1]%
    {\newcommand\@fecha{#1}}


% Contenido portada

\newcommand\portada{%
    \thispagestyle{empty}

    \begin{minipage}{2.7cm}
        \begin{flushleft}
            \includegraphics[scale=0.076]{Imagenes/logoEPNnuevo.png}
        \end{flushleft}
    \end{minipage}
    \hfill
    \begin{minipage}{2.7cm}
        \begin{flushright}
            \includegraphics[scale=0.070]{Imagenes/logoCiencias.png}
        \end{flushright}
    \end{minipage}\vspace{0.5cm}
    \vspace{0.5cm}
    \begin{center}
        {\LARGE\textbf{ESCUELA POLITÉCNICA NACIONAL}}\\[2.5\baselineskip]
        {\Large\textbf{FACULTAD DE CIENCIAS}}\\[2.5\baselineskip]
        {\large\textbf{\MakeTextUppercase{\@titulotic}}}\\
        [2.5\baselineskip]
        {\textbf{TRABAJO DE INTEGRACIÓN CURRICULAR PRESENTADO COMO REQUISITO PARA LA OBTENCIÓN DEL TÍTULO DE \MakeTextUppercase{\@profesion}}}\\[2.5\baselineskip]
        {\textbf{\MakeTextUppercase{\@estudiante}}}\\[0.1\baselineskip]
        %{\@correoestudiante}\\[2.5\baselineskip]
        {\href{mailto:\@correoestudiante}{\@correoestudiante}}\\[2.5\baselineskip]
        %\href{mailto:luis.palacios01@epn.edu.ec}{luis.palacios01@epn.edu.ec}}
        {\textbf{DIRECTOR: \MakeTextUppercase{\@director}}}\\[0.1\baselineskip]
        %{\@correodirector}\\[2.5\baselineskip]
        {\href{mailto:\@correodirector}{\@correodirector}}\\[2.5\baselineskip]
        {\textbf{\MakeTextUppercase{\@fecha}}}
    \end{center}
    \vspace*{\fill}
    \newpage
    
    %\paginablanco
}

% ========== Certificaciones

% Reserva espacio para la firma
\newcommand{\firmaestudiante}{
    \par\noindent\makebox[6.5cm]{
        % \includegraphics[scale=1.]{Imagenes/student_signature.png}
    }
    \par\noindent\makebox[6.5cm]{
    \hrulefill
    }
}

\newcommand{\firmadirector}{
    \par\noindent\makebox[6.5cm]{
        % \includegraphics[scale=1.]{Imagenes/advisor_signature.png}
    }
    \par\noindent\makebox[6.5cm]{
    \hrulefill
    }
}

\newcommand{\certificaciones}{
    %\thispagestyle{empty}
    \setlength{\parskip}{0.3\baselineskip}
    \setstretch{1.3}
    \vspace*{\fill}
    \begin{center}
        \textbf{CERTIFICACIONES}
    \end{center}

    \vspace{2\baselineskip}
    
    Yo, \MakeTextUppercase{\@estudiante}, declaro que el trabajo de integración curricular aquí descrito es de mi autoría; que no ha sido previamente presentado para ningún grado o calificación profesional; y, que he consultado las referencias bibliográficas que se incluyen en este documento.

        \vspace{2cm}
        \begin{center}
            \firmaestudiante\\
            \@estudiante
        \end{center}
        
        \vspace{1cm}Certifico que el presente trabajo de integración curricular fue desarrollado por \@estudiante, bajo mi supervisión.
        
        \vspace{2cm}
        \begin{center}
            \firmadirector\\
            \@director\\
            \textbf{DIRECTOR}
        \end{center}

     \vspace*{\fill}
     \newpage
     
     %\paginablanco
}

% ========== Declaración de autoría
\newcommand{\declaracionautoria}{
    %\thispagestyle{empty}
     \vspace*{\fill}
     \begin{center}
         \textbf{DECLARACIÓN DE AUTORÍA}
     \end{center}

     \vspace{2\baselineskip}
     
     A través de la presente declaración, afirmamos que el trabajo de integración curricular aquí descrito, así como el(los) producto(s) resultante(s) del mismo, es(son) público(s) y estará(n) a disposición de la comunidad a través del repositorio institucional de la Escuela Politécnica Nacional; sin embargo, la titularidad de los derechos patrimoniales nos corresponde a los autores que hemos contribuido en el desarrollo del presente trabajo; observando para el efecto las disposiciones establecidas por el órgano competente en propiedad intelectual, la normativa interna y demás normas.

    \vspace{1cm}\noindent \@estudiante
    
    \vspace{0.5cm}\noindent \@director
    
    \vspace*{\fill}
    \newpage
    
    %\paginablanco
}

% ========== Resumen

\newenvironment{resumen}{
    %\thispagestyle{empty}
    \vspace*{\stretch{1}}
    \begin{center}
        % \textbf{RESUMEN}
        \ssection*{RESUMEN}
        \addcontentsline{toc}{section}{\textbf{RESUMEN}}
    \end{center}
    \vspace{2\baselineskip}
}
{
    \vspace*{\stretch{2}}
    \newpage
}

% ========== Abstract

\newenvironment{resumenEng}{
    %\thispagestyle{empty}
    \vspace*{\stretch{1}}
    \begin{center}
        % \textbf{ABSTRACT}
        \ssection*{ABSTRACT}
        \addcontentsline{toc}{section}{\textbf{ABSTRACT}}   
    \end{center}
    \vspace{2\baselineskip}
}
{
    \vspace*{\stretch{2}}
    \newpage
}

% ========== Dedicatoria
\newenvironment{dedicatoria}{
    %\thispagestyle{empty}
    \vspace*{\stretch{1}}
    \begin{center}
        \textbf{DEDICATORIA}
    \end{center}
    \vspace{2\baselineskip}
}
{
    \vspace*{\stretch{2}}
    \newpage
}

% ========== Agradecimiento

\newenvironment{agradecimiento}{
    %\thispagestyle{empty}
    \vspace*{\stretch{1}}
    \begin{center}
        \textbf{AGRADECIMIENTO}
    \end{center}
    \vspace{2\baselineskip}
}
{
    \vspace*{\stretch{2}}
    \newpage
}

% ========== Fortran Code

\RequirePackage{xcolor}
\RequirePackage{lmodern}
\RequirePackage{listings}
\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}
\lstset{
basicstyle=\footnotesize,        % the size of the fonts that are used for the code
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=false,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{mygreen},    % comment style
  extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  language=[95]Fortran,                 % the language of the code
  numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=1,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{mymauve},     % string literal style
  tabsize=4,                       % sets default tabsize to 2 spaces
  title=\lstname                   % show the filename of files
}


% ========== Python Code
\RequirePackage{minted} % First pip install pygments

\setminted[python]{breaklines, framesep=2mm, fontsize=\footnotesize, numbersep=5pt}