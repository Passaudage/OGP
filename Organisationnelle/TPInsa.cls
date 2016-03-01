\NeedsTeXFormat{LaTeX2e}
 
\ProvidesClass{TPInsa}[2014/11/11 Classe personnelle, V0.1]
 
% classe de base
 
\LoadClass[a4paper, 11pt]{article}
 
% extensions
 
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{tocloft}
\RequirePackage{xspace}
\RequirePackage{fancyvrb}
\RequirePackage{ltablex}
\RequirePackage{placeins}
\RequirePackage[left=2.3cm, right=2.3cm, top=3cm, bottom=3cm]{geometry}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{lmodern}
\RequirePackage{calc}
\RequirePackage{dashrule}
\RequirePackage{booktabs}
\RequirePackage{adjustbox}
\RequirePackage{fourier}
\RequirePackage{float}
\RequirePackage{array}
\RequirePackage{titlesec}

\RequirePackage[table, svgnames]{xcolor}
\RequirePackage{fancyhdr}
\definecolor{rougeSombreRemy}{RGB}{0,156,0}
\definecolor{rougePetantRemy}{RGB}{0,216,0}
\definecolor{grisSombre}{RGB}{34, 30, 30}
\definecolor{grisClair}{RGB}{136, 130, 130}
\RequirePackage[frenchb]{babel}
\RequirePackage{subfig}
\RequirePackage{environ}
\RequirePackage[
	linktocpage=true,
	colorlinks=true,
	linkcolor=rougeSombreRemy,
	urlcolor=rougeSombreRemy
]{hyperref}
\RequirePackage{enumitem}
\RequirePackage[
	figurename=Figure , 
	tablename=Table ,
	format=plain,
	font=normal,
	labelsep=endash,
	labelfont={
		up, bf, color=rougeSombreRemy
	},
	textfont={
		normalfont
	}
				]{caption}
                
\RequirePackage{listings}
\lstdefinestyle{shared}
{
    numbers=left,
    numbersep=1em,
   	basicstyle=\ttfamily,
    breaklines=true,
    tabsize=2,
    columns=flexible,
}

\RequirePackage{tikz}
\RequirePackage{pgfplots}

\pgfplotsset{compat=1.5}
\usepgfplotslibrary{dateplot}
\usetikzlibrary{pgfplots.dateplot}

\usetikzlibrary{fadings}

\sffamily
\RequirePackage{helvet}
\sffamily
\DeclareFontShape{T1}{lmss}{bx}{sc} { <-> ssub * phv/bx/sc }{}
\DeclareFontShape{T1}{lmss}{m}{sc} { <-> ssub * phv/m/sc }{}
\renewcommand{\rmdefault}{lmr}
\renewcommand{\sfdefault}{lmss}
\renewcommand{\ttdefault}{lmtt}
 
\newcommand{\langue}{\emph} % mots en langues étrangères
\newcommand{\cita}{\emph} % citation en italique
\newcommand{\nomprog}{\texttt} % nom de programme en police teletype
\newcommand{\octet}[1]{{\ttfamily\mbox{#1}}}

\definecolor{grisTresClair}{RGB}{226, 220, 220}

\newcommand{\raisedrule}[2][.5ex]{\leaders\hbox{\rule[#1]{1pt}{#2}}\hfill}

\renewcommand{\familydefault}{\sfdefault}

\setlength{\parskip}{.5\baselineskip}%

\hyphenation{Forget}
\hyphenation{Luc}
\hyphenation{Quentin}
\hyphenation{Labernia}
\hyphenation{Nicolas}
\hyphenation{Bonfante}
\hyphenation{Paul}
\hyphenation{Compagnon}
\hyphenation{Ghayth}
\hyphenation{Barhoumi}
\hyphenation{Javin}
\hyphenation{Marc}

%----Custom list----------------------------------------------------
\newlist{funcdescr}{description}{1}
\setlist[funcdescr]{font={\color{black}\ttfamily}}
\setlist[itemize]{topsep=0pt,after=\vspace{.5\baselineskip}}

%----Variables------------------------------------------------------
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}

%sectionnement
\titleformat{\section}
{\sffamily\Large\bfseries\color{rougeSombreRemy}}{\thesection}{1em}{}

\titleformat{\subsection}
{\sffamily\large\bfseries\color{rougePetantRemy}}{\thesubsection}{1em}{}

\titleformat{\subsubsection}
{\sffamily\normalsize\bfseries}{\thesubsubsection}{1em}{}

\titleformat{\paragraph}
{\sffamily\normalsize\bfseries\color{grisClair}}{\theparagraph}{1em}{}
\titleformat{\subparagraph}[runin]
{\sffamily\normalsize\bfseries}{\thesubparagraph}{1em}{}

\titlespacing*{\chapter} {0pt}{50pt}{40pt}
\titlespacing*{\section} {0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsection} {0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing*{\paragraph}
{0pt}{3.25ex plus 1ex minus .2ex}{0.5ex plus .2ex}
\titlespacing*{\subparagraph} {\parindent}{3.25ex plus 1ex minus .2ex}{1em}

%-------------------------------------------------------------------

\renewcommand{\thesection}{\Roman{section}.}
\renewcommand{\thesubsection}{\Alph{subsection}.}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}}
\renewcommand{\theparagraph}{\alph{paragraph}}

%-------------- Ligne grise--------------------------------------
\newcommand{\lignegrise}{\noindent{\color{gray}\hdashrule[0pt][x]{\linewidth}{2pt}{2pt}}}

%-------------- Liste des figures --------------------------------------
\renewcommand{\cftafterloftitle}{%
{\color{rougeSombreRemy}\large\sffamily\bfseries~\decofourright}\hfill\vspace{-0.4em}\strut{}\\%
\lignegrise{}}
\renewcommand{\cftloftitlefont}{\lignegrise
\par\noindent\hfill\large\color{rougeSombreRemy}\sffamily\bfseries\decofourleft~}
\renewcommand{\cftfigdotsep}{\cftnodots}
\newcommand{\listeFigures}[1][]{\clearpage#1\listoffigures%
\lignegrise\clearpage}


%-------------- Table des matières--------------------------------------
\renewcommand{\cftaftertoctitle}{%
{\color{rougeSombreRemy}\large\sffamily\bfseries~\decofourright}\hfill\vspace{-0.4em}\strut{}\\%
\lignegrise{}}
\renewcommand{\cfttoctitlefont}{\lignegrise
\par\noindent\hfill\large\color{rougeSombreRemy}\sffamily\bfseries\decofourleft~}

\addtolength{\cftsecnumwidth}{0.3em}
\setlength{\cftsubsubsecnumwidth}{1.6em}
\setlength{\cftparanumwidth}{1.6em}

\renewcommand{\cftsecfont}{\bfseries\sffamily\large\color{grisSombre}}
\renewcommand{\cftsubsecfont}{\sffamily\color{grisSombre}}
\renewcommand{\cftsecpagefont}{\bfseries\sffamily\large\color{grisSombre}}
\renewcommand{\cftsubsecpagefont}{\sffamily\color{grisSombre}}
\renewcommand{\cftsubsecdotsep}{\cftnodots}
\renewcommand{\cftsubsubsecdotsep}{\cftnodots}
\renewcommand{\cftparadotsep}{\cftnodots}



\newcommand{\tableMatieres}{\tableofcontents
\lignegrise\clearpage}

%--------------- Page titre ----------------------------------------------------
\newcommand{\pageTitre}{
\begin{titlepage}
\begin{tikzpicture}[remember picture,overlay]
	\fill[color=rougeSombreRemy] (current page.south west) rectangle
	(current page.north east);
	\fill[color=white] (current page.north west)
	++(.25\paperwidth, 0) .. controls +(-0.2\paperwidth, -0.75\paperheight) ..
	+(0.75\paperwidth, -0.85\paperheight) -- (current page.north east) --
	cycle;
	\fill[color=white] (current page.south east) ++
	(0, .05\paperheight) .. controls +(-.8\paperwidth, .1\paperheight)
	.. +(-.9\paperwidth, -.15\paperheight) -- (current page.south east);

	\end{tikzpicture}
  \strut{}\vspace{2cm}\hfill\begin{minipage}[t]{0.75\linewidth}
	\flushleft
	\color{grisSombre}
	{
	\large	OGP}\vspace{8\lineskip}\par

	{\parbox{\linewidth}{\bfseries\Huge \makeatletter\@title\makeatother}\vspace{12\lineskip}}

  \strut{}\hfill{\color{rougeSombreRemy}\Large Heptanome
	4404}\vspace{24\lineskip}

	\strut{}\hfill{\LARGE\color{grisClair}\bfseries Généré le \makeatletter\@date\makeatother}
  \end{minipage}
	\vfill
	{
		\LARGE
		\strut{}\hfill\begin{minipage}[t]{\widthof{Jérémy Wimsingues}}
		Ghayth Barhoumi\\
		Nicolas Bonfante\\
		Paul Compagnon\\
		Luc Forget\\
		Marc Javin\\
		Quentin Labernia
	\end{minipage}
	}
	\vfill
	\vfill

\end{titlepage}

}


%--------------------------------------------------------------Tableaux
\renewcommand{\tabularxcolumn}[1]{>{\small}m{#1}}
\renewcommand{\arraystretch}{1.2}
\newcommand{\rowstyle}[1]{\gdef\currentrowstyle{#1}#1\ignorespaces}
\newcolumntype{+}{>{\global\let\currentrowstyle\relax}}
\newcolumntype{=}{>{\currentrowstyle}}
\NewEnviron{tabularRemy}[1]{%
   \begin{tabularx}{\textwidth}{ +#1 }%
	   \rowcolor{rougePetantRemy}
	   \rowstyle{\color{white}\bfseries}
    \BODY
   \end{tabularx}
}
\rowcolors{2}{grisTresClair}{}

%---------------------------------------------------------------Images
\newcommand{\strechedFigure}[3][!ht]{
\begin{figure}[#1]
	\centering
	\includegraphics[width=\linewidth]{#2}
	\caption{#3}
	\end{figure}
}

\newcommand{\strechedHeightFigure}[3][!ht]{
\begin{figure}[#1]
	\centering
	\includegraphics[height=.95\textheight]{#2}
	\caption{#3}
	\end{figure}
}

\newcommand{\unscaledFigure}[3][!ht]{
\begin{figure}[#1]
	\centering
	\includegraphics{#2}
	\caption{#3}
	\end{figure}
}

\newcommand{\fixedWidthFigure}[4][!ht]{
\begin{figure}[#1]
	\centering
	\includegraphics[width=#4]{#2}
	\caption{#3}
	\end{figure}
}
                                 
%---------------------------------------------- Graphiques
%Couleurs, dégradés
\definecolor{chartcol1}{HTML}{3274c5}
\definecolor{chartcol2}{HTML}{48a82d}
\definecolor{chartcol3}{HTML}{d29414}
\definecolor{chartcol4}{HTML}{b43732}
\definecolor{chartcol5}{HTML}{6637a0}
\definecolor{chartcol6}{HTML}{4984cc}
\definecolor{chartcol7}{HTML}{927144}
\definecolor{chartcol8}{HTML}{d8d8d8}

\newcommand{\cyclelist}{{ "chartcol1",
"chartcol2",
"chartcol3",
"chartcol4",
"chartcol5",
"chartcol6",
"chartcol7",
"chartcol8" }}

\pgfplotscreateplotcyclelist{chartColor}{
    {chartcol2, very thick},
{chartcol3, very thick},
{chartcol4, very thick},
{chartcol5, very thick},
{chartcol6, very thick},
{chartcol7, very thick},
{chartcol8, very thick},
{black, thick}, {black}
}

\newcommand{\radius}{3}

\pgfdeclareradialshading{bead}{\pgfpoint{0cm}{0cm}}%
{color(0cm)=(transparent!0);
color(1cm)=(transparent!100);
color(2cm)=(transparent!100);
color(3cm)=(transparent)}

\tikzfading[name=bead]

\newcommand{\anglepie}{0}
\newcommand{\nbitem}{}
\newcommand{\smallradius}{0.2}

\newcount\cyclecount\cyclecount=-1
\newcount\legendeidx\legendeidx=-1
\newcount\ind \ind=-1

\newcommand{\piechart}[2]{
	{
		\renewcommand{\anglepie}{0}
		\renewcommand{\nbitem}{#1}
		\global\cyclecount=-1
		\global\ind=-1
		\global\legendeidx=-1
		\begin{tikzpicture}[nodes = {font=\sffamily}]
		\foreach \percent/\name in {
			#2
					} {
			\ifx\percent\empty\else               % If \percent is empty, do nothing
			\global\advance\cyclecount by 1     % Advance cyclecount
			\global\advance\legendeidx by 1     % Advance cyclecount
			\global\advance\ind by 1            % Advance list index
			\ifnum6<\cyclecount                 % If cyclecount is larger than list
			\global\cyclecount=0              %   reset cyclecount and
			\global\ind=0                     %   reset list index
			\fi
			\pgfmathparse{\cyclelist[\the\ind]} % Get color from cycle list
			\edef\color{\pgfmathresult}         %   and store as \color
			% Draw caption
			\pgfmathparse{(\nbitem - 1) * 3/2 * \smallradius - \legendeidx
				*3 *
			\smallradius}

			\xdef\ycoordonnee{\pgfmathresult}
			\fill [color={\color}] (1.5*\radius, \ycoordonnee) circle (\smallradius);
			\pgfmathparse{1.5*\radius + 2*\smallradius}
			\xdef\xcoordonnee{\pgfmathresult}
			\node[right] at (\xcoordonnee, \ycoordonnee) {\name};
			% Draw anglepie and set labels

			\pgfmathparse{\anglepie-\percent*3.6}  % Advance anglepie
			\xdef\anglepie{\pgfmathresult}         %   and store in \anglepie
			\fill[color={\color}] (0,0) -- (\anglepie:\radius)
			arc (\anglepie:\anglepie+\percent*3.6:\radius) -- cycle;

			\ifnum9>\percent
				\draw (\anglepie+0.5*\percent*3.6:0.8*\radius) --
				(\anglepie+0.5*\percent*3.6:1.1*\radius);
			\node at (\anglepie+3.6*\percent*0.5:1.2*\radius) {\percent\,\%};
			\else
				\node at (\anglepie+0.5*\percent*3.6:0.6*\radius)
				{\percent\,\%};
			\fi
				\fi
			};
			\fill [color=black, path fading=bead, opacity=0.15] (0,0) circle (\radius);
\end{tikzpicture}

}
}
%----------------------------------------------En têtes etc
\fancypagestyle{plain}{%
\lhead{\small\color{grisSombre}H4404}
\chead{}
\rhead{\small\color{grisSombre}\makeatletter\@title\makeatother}
\cfoot{Page \thepage}

\setlength{\headheight}{23pt}

\renewcommand{\headrulewidth}{1.6pt}% 2pt header rule
\renewcommand{\headrule}{\hbox to\headwidth{%
  \color{rougeSombreRemy}\leaders\hrule height \headrulewidth\hfill}}
  
\renewcommand{\footrulewidth}{1.6pt}
\renewcommand{\footrule}{\hbox to\headwidth{%
  \color{rougePetantRemy}\leaders\hrule height \footrulewidth\hfill}}
}


\pagestyle{plain}

\makeatletter
\renewcommand{\p@subsubsection}{\Roman{section}.\Alph{subsection}.\arabic{subsubsection}\expandafter\@gobble}
\makeatother


