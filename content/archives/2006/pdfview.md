-----
kind: article
title: "PDFView"
tags:
- technology
- software
created_at: 2006/12/16
permalink: pdfview
toc: false
-----

<p>I've always greatly prefered MacOS X's Preview PDF viewing application to the bloated mess that is Adobe Reader, but it has a number of irritating features. The first is that I almost always find myself zooming in to a document to increase the font size for comfortable onscreen viewing. However, in Preview, you have to keep hitting the zoom button or shortcut until you get the size you want, <em>then</em> adjust the window size to fill the screen. It often takes quite a bit of manual tweaking before you get the window filling the screen. The preference item PDF > Auto-scale ought to do the trick, but it scales the document to fit a full page on screen, which makes the text much too small to read (for my eyes, anyway). Also, if you want to use Preview to present a LaTeX beamer presentation, you get an annoying 'onscreen display' for navigation, which is distracting and a bit unnecessary. Finally, if you use LaTeX it's inconvenient to use Preview to, well, preview the document, because it doesn't update the display when you edit and rebuild the PDF.</p>

<p>I've just found (via the TextMate mailing list) another application that fixes all those annoyances: <a href="http://pdfview.sourceforge.net/">PDFView</a>. It's free and Open Source, it's fast and it's very nice to use. The auto-scale feature actually works, and it opens windows by default to fill the screen. There's a separate 'Fullscreen' view for reading without distractions (which shows just the document and scrollbar on a blank background), and 'Presentation' view, which fits the full page onscreen without scrollbars, so you can show beamer presentations properly, and it updates automatically when you rebuild a LaTeX PDF file, making it the perfect viewer to use together with TextMate when creating LaTeX files.</p>

<p>I think it says a lot for the quality of PDFView that after only a few minutes of using it, I changed the default application for PDF files from Preview to PDFView.</p>



