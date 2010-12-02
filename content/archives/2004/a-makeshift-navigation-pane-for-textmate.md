-----
kind: article
title: "A makeshift navigation pane for TextMate"
tags:
created_at: 2004/10/11
permalink: a-makeshift-navigation-pane-for-textmate
toc: false
-----

<p>Various people have commented on the <a href="http://macromates.com/">TextMate</a> maillist about the lack of a function navigation menu in the application, like the ones that BBEdit and SubEthaEdit sport. This is a drop-down menu that allows you to jump to the definition of a method, a class, a function, or &mdash; in LaTeX &mdash; a section or subsection. Those things are pretty cool for sure, but others on the list commented that you could use the 'Find word' command to do something similar. You just place the cursor on the word you're looking for (for example, 'section'), and a separate window opens showing each line containing the word. You can then click the line to jump to the corresponding line in the main window.</p>

<p>I'm writing a talk in LaTeX using the beamer style at the moment, so I decided to add one or two things to this technique to make a nice little navigation pane to help me jump around my presentation while I'm writing it. My setting in the Command > Edit Menu dialogue are as follows:</p>

<p>Before running command: Do nothing
Commands: <code>grep -rn --regexp='frametitle|section'</code>
Standard input: Entire document
Standard output: Show in separate window
Pattern: <code> ^(d+):(s*)(\frametitle{|\section**{)(.+)}$</code>
Format string: $2$4
Line: 1</p>

<p>This finds every line containing the words 'frametitle' (the slide titles) or 'section'. It then strips away all the LaTeX junk from those lines so just the frame or section title is shown. Since I indent my LaTeX neatly, it also captures the whitespace before the line containing the section or frame title and prints that out to the command window. So you end up with a neat, indented hierarchy of section and frame titles which forms a skeleton outline of your talk, and which you can use to jump to particular points. If you add a hotkey, keep the command window open and drag the horizontal split widget to hide the source code at the bottom you've got a navigation pane that you can refresh with a hot key as you add to your talk. In many ways it's better than a drop-down menu because you can see the whole structure at a glance without moving your mouse.</p>

<p>This solution isn't anything revolutionary (I just modified the existing code), and it's tuned to my particular usage, but I hope it demonstrates just how powerful the flexibility of TextMate is.</p>

<p><strong>Update 29/11/2005:</strong>Hugo Mallinson sent me a much improved version of my regexp, which copes better with different kinds of formatting, sub-sections and so on. With his permission, here it is:

<pre>
<code>
command: grep -rn --regexp='section|item'
pattern: ^(d+):.*(sub)?(sub)?(section**{|(item{))(.+)}$
format: (?3  : )(?2  : )(?5 * : )$6
</code>
</pre>
</p>



