-----
kind: article
title: "Multimarkdown"
tags:
created_at: 2006/05/29
permalink: multimarkdown
toc: false
-----

<p>When I first came across <a href="http://daringfireball.net/projects/markdown/">Markdown</a>, I loved the way that I could write simple, readable markup, which I could then easily convert to HTML with a script. It struck me at the time that since what Markdown does is to mark structure in a document, and then convert that structure from one form of text to another, it ought to be possible to convert Markdown-formatted text files to other kinds of structured text---like LaTeX.</p>

<p>I was thinking about modifying the Markdown script to do just that, but luckily for me, someone else got there first and made a much more thorough and elegant job of it than I would ever have managed. Fletcher Penney's <a href="http://fletcher.freeshell.org/wiki/MultiMarkdown">MultiMarkdown</a> is a wonderful script that can convert Markdown formatted text into HTML, LaTeX and even RTF. In fact, since it converts to valid XHTML first and then applies <a href="http://en.wikipedia.org/wiki/Xslt">XSLT</a> parsing to convert into other formats, the world is your bivalved mollusc. LaTeX and RTF are included, but you could use those examples to create an XSLT parser to convert to any other structured format. MultiMarkdown extends Markdown quite a bit by allowing you to add metadata (like a title, author etc.), and also adds support for footnotes, tables and citations, which work pretty well.</p>

<p><a href="http://www.macromates.com/">TextMate</a> now has support for MultiMarkdown built in to the Markdown bundle, which makes life even easier. It has, of course, always been possible to write a document in plain text and then manually add the LaTeX markup afterwards, but it's a bit of a pain. And if you're not sure what format you'll need to produce the end document in when you start, you can end up doing a lot of fiddling. Now I can just write text in Markdown without worrying about it, and then hit a hotkey to convert the file to HTML, LaTeX or RTF when I'm finished.</p>



