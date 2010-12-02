-----
kind: article
title: "Renaming files"
tags:
- general
created_at: 2005/07/13
permalink: renaming-files
toc: false
-----

<p>I tried putting together a little Automator workflow to thumbnail some selected images in iPhoto and rename them. It worked well enough, but the thumbnailing component only allowed a suffix to be added to the file, whereas I wanted a prefix. I was able to work around it with another workflow to get selected files, trim the suffix off, then add it to the beginning of the filename. It worked, but it was hardly elegant.</p>

<p>Then I spotted a nice Perl script mentioned on a <a href="http://www.macosxhints.com/article.php?story=20050630022203488#comments">MacOSXHints thread</a> about renaming files. Michael Forman's <a href="http://www.michael-forman.com/perl/ren-regexp.html">ren-regexp</a> is really useful. Rather than just renaming files you specify, you can give a pattern to match for searching and replacing. So renaming files like <code>DSC01234_thumb.jpg</code> to <code>thumb_DCS01234.jpg</code> can be done in one easy step:</p>

<pre>
<code>ren-regexp 's/(.*)_thumb.jpg/thumb_$1.jpg/' *</code>
</pre>

<p>It's really neat and also has a spiffy <code>-t</code> switch, which shows you the result of your command without altering any files; a useful dry run when you are about to rename hundreds of files.</p>

<p>Since Automator workflows can include shell scripts, it becomes very easy to simplify the workflow. I know that there are quite a few such utilities around (both command-line and GUI), but this one just appealed to me. Like all the best *nix commands, it does one thing exceptionally well.</p>



