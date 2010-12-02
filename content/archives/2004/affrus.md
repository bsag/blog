-----
kind: article
title: "Affrus"
tags:
- technology
created_at: 2004/03/17
permalink: affrus
toc: false
-----

<p>Regular readers will know that I'm learning <a href="http://www.perl.org/" title="Perl.org">Perl</a>, and always on the lookout for good books, tutorials or tools to help me along. So I was quite excited to see it mentioned on <a href="http://www.tidbits.com" title="TidBITS - a great online Mac magazine">TidBITS</a> that Late Night Software have just brought out a Perl editor and debugger called <a href="http://www.latenightsw.com/affrus/index.html" title="Late Night Software - Affrus">Affrus</a>. I know that many Perl aficionados maintain that you don't need an IDE for Perl, but the fact that the <a href="http://www.perldoc.com/perl5.8.0/pod/perlfaq3.html#top" title="Is there an IDE or Windows Perl Editor?">question is a FAQ</a> on Perldoc.com suggests that many people still want one.</p>

<p>It's true that with <code>use strict;</code> and <code>use warnings;</code> you get a pretty good idea where your code is going wrong. There's also <code>perldebug</code> which gives you all the debugging functions you are ever likely to want, albeit with a rather intimidating command line interface. <a href="http://www.barebones.com/products/bbedit/index.shtml" title="BBEdit product page">BBEdit</a> has excellent Perl support (including the ability to run a script and see the output, and to look up the documentation for functions in <code>perldoc</code>), as do vi or <a href="http://www.vim.org/" title="Vim Online">vim</a> if you use the appropriate plugins. But I was curious to see what else it could offer, and downloaded the demo.

The interface is quite clean, with a single editing window for the code, with tabs at the top to open the variables, errors or debugging windows. The editor has nice syntax highlighting, but otherwise isn't quite as fully featured as BBEdit. However, the developers have thoughtfully added an "Edit in BBEdit" menu item, so that users of BBEdit get the best of both worlds. I tried writing a simple script and debugging it with Affrus, and it certainly made it easier to see where my rather stupid errors were. You can step through code, or let it run to a breakpoint, and the values of all the variables are displayed in a window for your inspection. Another nice touch is that you can save any number of different command line arguments to be passed to your script so that you can select the appropriate one from a popup menu when you run it.</></p>

<p>ght Software are also well known for their Applescript products, and Affrus seems to be highly scriptable; so if it doesn't work in the way you want, you can probably write an Applescript to make it so (bsag does Jean-Luc Picard 'pointing gesture'). It seems a neat and well-integrated solution, but I think I'll stick with my existing tools for the moment. It has encouraged me to learn how to use <code>perldebug</code> properly though &mdash; I might spend less time going around in circles when trying to get scripts to work.</p>
