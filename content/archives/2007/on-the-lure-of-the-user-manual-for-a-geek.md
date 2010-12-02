-----
kind: article
title: "On the lure of the user manual for a geek"
tags:
- technology
- software
created_at: 2007/07/17
permalink: on-the-lure-of-the-user-manual-for-a-geek
toc: false
-----

<p>When I first used <a href="http://latex-beamer.sourceforge.net/">beamer</a> (the LaTeX package for making presentations), I noticed that there was an included packagage called <a href="http://sourceforge.net/projects/pgf/">PGF</a> for drawing figures. Unlike the drawing packages most people are familiar with, in which you click on tools and use the mouse to drag shapes out on a virtual page, PGF requires you to enter commands to specify points to be drawn in an x,y co-ordinate system. So, for example, if you wanted to draw a diagonal line going up and to the right, you'd specify a line from (0,0) to (1,1). I took a look at it and thought it looked interesting, but far too taxing on the brain when you could use something like <a href="http://www.omnigroup.com/applications/omnigraffle/">OmniGraffle</a> and actually <em>see</em> what you're drawing as you're drawing it.</p>

<p>And then I downloaded the latest version of beamer several weeks ago, and noticed that there's now a more user-friendly syntax layer on top of PGF, called <a href="http://sourceforge.net/projects/pgf/">TikZ</a>. TikZ tones down the hardcore nerdiness required to draw pictures (a bit), and after seeing some of the <a href="http://www.fauskes.net/pgftikzexamples/">rather gorgeous output</a> that it can produce, I could feel myself getting curious about it. Then I glanced at the superb <a href="http://www.ctan.org/tex-archive/graphics/pgf/doc/generic/pgf/version-for-pdftex/en/pgfmanual.pdf">user manual</a> (3.5 MB PDF file) and was really hooked.</p>

<p>You see, geeks love to learn new things. If it's a difficult new thing, that's even better, and if it's a difficult new thing that involves reading a lengthy but well-written manual, that's perfection.</p>

<p>In my heart of hearts, I know that for most kinds of diagrams I need to produce, it's going to be easier and quicker to use OmniGraffle. But for some kinds of figures where the structure is important (like flow charts), or where you need to precisely specify angles or sizes of objects, TikZ is better, <em>when you've got your head around the syntax</em>. TikZ drawings also look absolutely beautiful inside a beamer presentation, partly because the typography is so nice and it uses the same font that you've used in the text of your presentation. It also follows the same philosophy as LaTeX (and for that matter HTML/CSS), that the structure of a document should be described separately from its appearance. So you can, for example, set up separate styles to make all your arrows red and thin, which can be easily changed without altering the part where you describe <em>where</em> the arrows should go.</p>

<p>I've been very busy lately, so I've had to be disciplined, but reading the manual and trying things out has been a lot of geeky fun. Typing in strings of slightly cryptic text, building a presentation and then finding to that it actually produced what you told it to produce is a joy that non-geeks might find perplexing. If you then test your understanding by altering something and seeing what happens, that's even more fun.</p>

<p>I have to say that the TikZ  manual is an excellent example of a really well-constructed text for geeks. The first section uses real-world examples which it builds step-by-step, so that you get an idea of the basics, and can jump right in to <em>doing stuff</em>. It then gets into the nitty-gritty of installation and configuration, and finishes with a detailed reference section, which allows you to dip into particular details once you've got the basic idea of what is possible and how the system works. I think it's a pretty stunning example of the kind of quality and thoroughness that you can find with Open Source software.</p>
