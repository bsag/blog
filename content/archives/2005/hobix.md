-----
kind: article
title: "hobix"
tags:
- blogging
created_at: 2005/01/09
permalink: hobix
toc: false
-----

<p class="img-shadow"><img src="http://www.rousette.org.uk/images/uploads/hobix_madness.png" border="0" alt="image" name="image" width="365" height="223" /></p><p>In the course of keeping up with Ruby-related things, I came across a weblogging engine written in Ruby and called <a href="http://hobix.com/">hobix</a>. The hobix homepage could well be the maddest I've ever come across; the tagline "hobix: the white pantsuit of weblahhing (sic)" gives you fair warning. Hobix is written by <a href="http://whytheluckystiff.net/">_why the lucky stiff</a> (his friends call him _why), who is also the evil genius behind <a href="http://poignantguide.net/ruby/">Why's (Poignant) Guide to Ruby</a> (of which more later), and the excellent <a href="http://www.whytheluckystiff.net/ruby/redcloth/">RedCloth</a> (combined Textile and Markdown format markup in a Ruby library).</p>

<p>One of the unusual things about hobix is that you don't have to manually download and install things. You simply open up a terminal and type:</p>

<code>ruby -ropen-uri -e 'eval(open("http://go.hobix.com/").read)'</code>

<p>This gives you the friendly little ASCII goat pictured above, and step by step instructions for getting it installed. You can put it on a server or on your own machine; in the latter case, you just upload the HTML files it generates to a web server. All the configuration files and entries are written in <a href="http://www.yaml.org/">YAML</a> format, whichâ€”while a bit picky about whitespaceâ€”is fully human-readable. When you want to make a new post in your weblog called hobblog, you just type:</p>

<code>hobix post hobblog news/short-title</code>

<p>This opens your default editor (Vim in my case) with a skeleton of the post called 'short-title' in the section of hobblog called 'news'. When you save and close it, scripts rebuild the site automatically. It's so easy that I'm tempted to use it as a kind of personal wiki. You can either just view the files through <code>file:///path_to_files</code> URLs or you can run the site on a local Apache install or WEBrick server. It seems to me that it's not really any more difficult to post something than the steps required to post to a wiki if you're running it locally. It also makes you smile each time you use it (see screenshot above).</p>

<p>_why is a genius. His 'Why's (Poignant) Guide to Ruby' isâ€”I feel safe in assertingâ€”the only programming manual in which cartoon foxes chant "Chunky bacon! Chunky bacon!" until the author includes <code>chunky_bacon</code> as a variable name in his code examples. And guess what? You can also learn Ruby from it.</p>
