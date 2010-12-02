-----
kind: article
title: "Using TextMate for LaTeX"
tags:
created_at: 2005/02/02
permalink: using-textmate-for-latex
toc: false
-----

<p><a href="http://macromates.com/">TextMate</a> has got seriously sophisticated with recent versions. The latest beta features the ability to format the output from a command as HTML and present it in a window. As <a href="http://macromates.com/blog/archives/2005/02/01/beta-4-highlights/">Alan shows</a>, you can combine this with the <a href="http://www.schubert-it.com/pluginpdf/">Schubert</a> PDF browser plugin and little magic with commands to turn TextMate into a fully-fledged LaTeX editor. You just hit a command to compile the *.tex file, and an HTML window opens showing the output from <code>pdflatex</code>. If there are errors, you can click the error in the HTML file, and be taken to that line in your source file within TextMate. If everything compiles, it automatically opens the resulting PDF with the Schubert plug-in. It's deeply cool, and very timely since I'm in the middle of writing a lot of lectures using <a href="http://latex-beamer.sourceforge.net/" title="latex-beamer homepage">beamer</a>.</p>

<p>I've already got a load of snippets set up in TextMate , so that entering all the structure for frames and builds is really trivial; it makes writing lectures almost effortless. Well, not quite. I still harbour a vague hope that it might be possible to construct a complex snippet that would &mdash; when I typed <code>explbiol[TAB]</code> &mdash; automatically expand into a lucid, detailed and scholarly lecture series, explaining a particular area of biology. I'm not quite there yet.</p>

<p>The new file searching feature is wonderful too. You just hit command+T to open a floating window with a search box. If you type a few letters of the file you're looking for in your currently open project, it filters the list and you can open it by hitting enter. It's like Quicksilver for text files, and is a huge timesaver with big projects. TextMate has got to the point now where I use it for <strong>all</strong> text files, and even use the TextMate Service to edit text from other applications.</p>


