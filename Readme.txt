When creating a new file for a chapter use input in the chapter.tex file. 
Use \nl instead of \\ between two texts
Use \figx when you input a picture/figure from the figure folder
\figx[scale if needed]{pictureNameandLabel}{caption}
Put your figures in the figures folder
When you input a file use \inputPA for files in the Probleanalyse folder and 
\inputPS for files in the Problemloesning folder
Example: \inputPA{introduction}

@MISC{hydremaHistory,
  author = {Hydrema},
  title = {History of hydrema},
  year = {2015},
  howpublished = {\url{http://www.hydrema.com/home/company/history.aspx}}
 }
 
This is an example of how to setup a source in the lib.bib
Disclaimer, this file will be updated when new commands are added DO READ IT

For inputting graphs use 
\begin{tikzpicture}
	\begin{axis}
	[xlabel={$x$},
	ylabel={$y$},
	xmin = 0, xmax=255,
	ymin = 0, ymax=255
  	]
    \addplot []{} 
  \end{axis}
\end{tikzpicture}
For further reference check 
http://pgfplots.sourceforge.net/pgfplots.pdf