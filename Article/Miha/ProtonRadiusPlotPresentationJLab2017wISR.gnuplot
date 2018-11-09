set terminal pslatex color size 9.,4.0  9
set pointsize 1.5
set xtics nomirror scale 1.5
set ytics nomirror scale 1.5
set style line 3 lw 2 lt 1 lc rgb "#000000"
set style line 1 lw 2 lt 1 lc rgb "#FF5050"
set style line 2 lw 1 lt 1 lc rgb "#FF8080"
#set rmargin at screen 1
#set lmargin at screen 0

! echo "1 0">CODATA12.dat
! echo "1 40">>CODATA12.dat

offset = 0.01

set encoding iso_8859_1

set border linewidth 2
set style line 50 lt 1 lc rgb "#888888" lw 8
set border ls 50

set xlabel "$r_\\mathrm{{E}}~~~[\\mathrm{fm}]$" textcolor rgb "#888888"
set ylabel "  "
set style data yerrorbars 
set output "ProtonRadius.tex"
set xrange [0.74:0.94]
set yrange[0:40]
set xtics mirror
set ytics mirror
set style fill solid 0.8 
set label 24 "\\sz \\bf  CODATA 2014" at 0.936,20 rotate by 90 right
set label 25 "{\\bf \\color[rgb]{0,0,0} Nuclear scat. data}" at 0.764+offset,5.5 rotate by 0 right
set label 26 "{\\bf \\color[rgb]{0,0,1} $\\mathrm{e}\\mathrm{H}$ atomic data}" at 0.761+offset,29.5+1 rotate by 0 right
set label 27 "{\\bf \\color[rgb]{1,0,0} $\\mu\\mathrm{H}$ atomic data}" at 0.76+offset,26.5+6.1+1 rotate by 0 right
set label 28 "{\\tiny \\color[rgb]{1,0,0} $(\\sigma \\times 20)$}" at 0.758+offset,25.6+6.1+1 rotate by 0 right
set label 29 "{\\bf \\color[rgb]{0.5,0,1} Reanalyses}" at 0.757+offset,16.5 rotate by 0 right
set label 30 "{\\bf \\color[rgb]{0,0.5,0} $\\mu$D+iso}" at 0.76+offset,35.5+1 rotate by 0 right
set label 31 "{\\tiny \\color[rgb]{0,0.5,0} $(\\sigma \\times 5)$}" at 0.758+offset,34.5+1 rotate by 0 right


set ytics nomirror (\
"\\tiny \\bf \\color{mygrey}  Hand et al. (1963)"		1,\
"\\tiny \\bf \\color{mygrey}  Frerejacque et al. (1966)"	2,\
"\\tiny \\bf \\color{mygrey}  Akimov et al. (1972)"		3,\
"\\tiny \\bf \\color{mygrey}  Borkowski et al. (1975)"	4,\
"\\tiny \\bf \\color{mygrey} Simon et al. (1980)"		5,\
"\\tiny \\bf \\color{mygrey}  McCord et al. (1991)"		6,\
"\\tiny \\bf \\color{mygrey}  Eschrich et al. (2001)"	7,\
"\\tiny \\bf Bernauer et al. (2010)"	8,\
"\\tiny \\bf \\color{mygrey}  Zhan et al. (2011)"		9,\
"\\tiny \\bf \\color{mygrey}  Wong et al. (1994)"		11,\
"\\tiny \\bf \\color{mygrey}  Mergell et al. (1996)"		12,\
"\\tiny \\bf \\color{mygrey}  Rosenfelder et al. (2000)"	13,\
"\\tiny \\bf \\color{mygrey}  Blunden et al. (2005)"		14,\
"\\tiny \\bf \\color{mygrey}  Sick et al. (2005)"	15,\
"\\tiny \\bf \\color{mygrey}  Belushkin et al. (2007)"	16,\
"\\tiny \\bf \\color{mygrey}  Hill et al. (2010)"		17,\
"\\tiny \\bf \\color{mygrey}  Borisyuk (2010)"		18,\
"\\tiny \\bf \\color{mygrey}  Ron et al. (2011)"		19,\
"\\tiny \\bf \\color{mygrey}Sick et al. (2012)"		20,\
"\\tiny \\bf \\color{mygrey}  Adamuscin et al. (2012)"	21,\
"\\tiny \\bf \\color{mygrey}  Lorenz et al. (2012)"		22,\
"\\tiny \\bf \\color{mygrey}  Lorenz et al. (2015)"		23,\
"\\tiny \\bf Arringron et al. (2015)"		24,\
"\\tiny \\bf \\color{mygrey}Lee et al. (2015)"			25,\
"\\tiny \\bf Griffioen et al. (2015)"		26,\
"\\tiny \\bf Higinbotham et al. (2016)"		27,\
"\\tiny \\bf \\color{mygrey} Udem et al. (1997)"		29,\
"\\tiny \\bf \\color{mygrey} Melnikov et al. (2000)"		30,\
"\\tiny \\bf Combined spectr. data"		31,\
"\\tiny \\bf \\color{mygrey} Pohl et al. (2010)"		33,\
"\\tiny \\bf Antognini et al. (2013)"	34,\
"\\tiny \\bf Pohl et al. (2016)"	36,\
"\\tiny \\bf ISR (2013)"			39,\
"\\sx" 40\
)



plot "CODATA12.dat" using (0.8751):(20.0):(0.0051):(20.0) w boxxy lc rgb "#FF6600" lt 1 notitle,\
	"" using (0.8751):($2) w l lw 4 lt 1 lc rgb "#CC5200" notitle,\
	"NuclearScatteringData.dat" using 3:2:($4) w xerrorbars pt 7 ps 1.2 lt 1 lw 1 lc rgb "#444444" notitle,\
	"NuclearScatteringDataSelected.dat" using 3:2:($4) w xerrorbars pt 7 ps 2 lc 0 lt 1 lw 4 notitle,\
	"ReanalysisResults.dat" using 3:($2+10):($4) w xerrorbars pt 13 ps 1.5 lc rgb "#CC66FF" lw 1 lt 1 notitle,\
	"ReanalysisResultsSelected.dat" using 3:($2+10):($4) w xerrorbars pt 13 ps 2.5 lc rgb "#8800FF" lw 4 lt 1 notitle,\
	"" using (0.844):(16):(0.844-0.004):(0.844+0.008) w xerrorbars pt 13 ps 1.5 lc rgb "#CC66FF" lw 1 lt 1 notitle,\
	"" using (0.84):(27.2):(0.015):(0.4) w boxxy lc rgb "#8800FF" lt 1 notitle fs pattern 2,\
	"AtomicData.dat" using 3:($2+28):($4) w xerrorbars pt 5 ps 1.2 lc rgb "#6666FF" lt 1 lw 2 notitle,\
	"AtomicDataSelected.dat" using 3:($2+28):($4) w xerrorbars pt 5 ps 2 lc rgb "#0000FF" lt 1 lw 4 notitle,\
	"" using (0.84184):(33):(0.00067*20) w xerrorbars pt 5 lt 1  lc rgb "#FF6666" notitle,\
	"" using (0.84087):(34):(0.00039*20) w xerrorbars pt 5 lc 1 ps 2 lt 1 lw 4 notitle,\
	"" using (0.8356):(36):(0.0020*4) w xerrorbars pt 15 ps 2 lt 1 lw 4  lc rgb "#008800" notitle,\
	"" using (0.810):(39):(0.035) w xerrorbars pt 5 ps 2 lt 1 lw 4  lc rgb "#B30059" notitle,\
	"" using (0.810):(39):(0.082) w xerrorbars pt 5 ps 2 lt 1 lw 4  lc rgb "#B30059" notitle,\

set output

! /bin/echo "\documentclass[12pt]{article}\
\renewcommand\tiny{\fontsize{8pt}{8pt}\selectfont}\
\def\sx{{\color[rgb]{1,1,1}\hspace*{-5.6mm} \raisebox{0.5mm}{\rule{3mm}{1mm}}} }\
\def\sy{{\color[rgb]{0,0,0}\hspace*{-5.6mm} \raisebox{1mm}{\rule{3mm}{0.1mm}}} }\
\def\sz{\color[rgb]{1,0.6,0}}\
\usepackage{palatino}\
\usepackage{mathpazo}\
\usepackage{color}\
\usepackage{xcolor}\
\definecolor{mygrey}{rgb}{0.5,0.5,0.5}\
\begin{document}\pagestyle{empty}\
\include{ProtonRadius}\
\end{document}" > main.tex
! latex main
! dvips -E main
! mv main.ps ProtonRadiusPresentationJLab2017wISR.eps
! rm main.*
