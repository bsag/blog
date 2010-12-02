-----
kind: article
title: "Using Ruby one-liners with Quicksilver"
tags:
- technology
created_at: 2004/09/24
permalink: using-ruby-one-liners-with-quicksilver
toc: false
-----

<p>Sometimes a Unix-based system can be a beautiful thing. Take a little problem and solution I came across today. I had been writing some notes on a paper I was reading in the <a href="http://bike-nomad.com/vim/vimoutliner.html">Vim Outliner</a>, and wanted to paste a paragraph or two into the notes section of <a href="http://endnote.com/">Endnote</a> (a reference manager). But there was immediately an irksome problem: Endnote doesn't understand Unix line endings, and my notes were also hard-wrapped to 72 characters, with a 'pipe' character (|) and tab before each line of text. Worse still, Endnote doesn't have a find and replace command<sup>1</sup>. I could have opened up BBEdit or something similar and constructed the appropriate find and replace there, but that seemed annoyingly long-winded. Then I remembered that you can access the contents of the system clipboard directly using the commands <code>pbpaste</code> and <code>pbcopy</code>. Because they work like standard Unix commands, you can pipe other commands to them, and so build up a useful tool from a chain of smaller commands. This <a href="http://www.macosxhints.com/article.php?story=2003050204544799" title="Macosxhints: Filter clipboard contents via the Terminal">example</a> shows you how to filter the text on the clipboard through a command to munge it in some way, and then put it back on the clipboard ready for pasting &mdash; no intermediate files required!</p>

<p>So &mdash; as I'm learning Ruby &mdash; I thought I'd knock up a quick Ruby one-liner to strip out the line feeds, the pipes, tabs and superfluous space, and replace them with a single space:</p>

<pre>
<code>pbpaste | ruby -00 -pe 'gsub!(/nt+|s+/, " ")' | pbcopy</code>
</pre>

<p>That just passes the contents of the clipboard to the Ruby code which replaces all the unwanted gubbins with a single space, then puts the modified result back on the clipboard. Cool, isn't it? But not quite cool enough for me. I would have bring forward my Terminal window and type this lengthy command, which again seemed like too much work, particularly as I'm likely to need to do this many times in the future. I realized that I could select the command I'd just constructed in the Terminal and drag it onto <a href="http://quicksilver.blacktree.com/">Quicksilver's</a> shelf to make a clipping. Then I could run the whole thing from the clipboard. Here's how it works:</p>

<ol>
<li>Copy the text you want to munge.</li>
<li>Activate Quicksilver (Command-Space on my machine) and type a full stop (period) to put Quicksilver into text mode.</li>
<li>Hover over the shelf to activate it, and drag the clipping of the command you made earlier onto the text box in the Quicksilver command window.</li>
<li>Activate Quicksilver again &mdash; yes, your clipping is still there.</li>
<li>Type Tab, then 'ru' to bring up the 'Run in Shell' action. Hit return.</li>
<li>Switch to wherever you want to paste your modified text and type Command-V.</li>
</ol>

<p>It's much more laborious to describe than do, and there's another benefit. Once you've dragged the clipping onto the command window, you can hit '.' again to edit the contents. This means that you can easily make slight modifications to the command, but you can use your stored command as a guide to remind you of the correct format.</p>

<p>There are many other commands you could use. Want to shout at people? Try:</p>

<pre>
<code>pbpaste | ruby -00 -ne 'puts $_.upcase' | pbcopy</code>
</pre>

<p>There are lots of great Ruby one-liners <a href="http://www.rubygarden.org/ruby?OneLiners">here</a>, but you could just as easily use Perl, or any other scripting language or Unix command. I think it's a great demonstration of the way that you can blend traditional Unix tools with some of the newer MacOS X utilities like Quicksilver, which share much of the same philosophy, but work in a slightly different way.</p>

<p><sup>1</sup> In many ways, Endnote is unbelievably primitive &mdash; the developers seem only just to have realised that some people have scroll wheels on their mice, and that it would be nice to be able to use them.</p>

<p><strong>Update</strong>: I forgot that there's another way to get the Shelf items into Quicksilver. In the Catalog, look under Modules > Quicksilver, and you'll find an item for Shelf & Clipboard. Make sure the the checkbox is checked and rescan. now you should be able to search for 'shelf' in Quicksilver, the press the right arrow to descend into the clipboard and choose your clipping. No dragging required! Or you could go the whole hog and set up a trigger for the whole sequence if there's a one-liner you use a lot.</p>
