-----
kind: article
title: "Numbering lines with Ruby"
tags:
- technology
created_at: 2004/10/08
permalink: numbering-lines-with-ruby
toc: false
-----

<p>I've been fiddling around a little more with <a href="http://www.rousette.org.uk/blog/archives/2004/09/24/using-ruby-one-liners-with-quicksilver/">integrating Ruby scripts and one-liners</a> with Quicksilver, and I found a way to number the lines of a selection. This is handy for those times when you decide to bullet-point some text. Generating bullet numbering manually is a chore, and if you rearrange your points you need to renumber all the following points. It's a simple and not very elegant bit of code &mdash; I'm sure someone with more than my newbie's knowledge of Ruby could make it much more efficient. For some reason, I couldn't seem to cram it all into a one-liner, so you'll have to save the code below as a file somewhere on your system.</p><p>You need to call this script via Quicksilver or the command line like this: <code>ruby /pathto/line_nos.rb | pbcopy</code>. Then copy your text to be numbered, run the line above, then paste. Voila! Numbered lines. Note that the backslash at the end of the line starting '$std_out' indicates a continuation line.</p>

<pre><code>
#!/usr/bin/env ruby
# line_nos.rb
text = `pbpaste`
lines = text.split(" n")
def number_lines(max)
  i = 0
  while i < max
    yield i
    i += 1
  end
end
$std_out = number_lines(lines.length) {|val| num = val + 1;
   puts "#{num}. #{lines[val]}n"}
</code></></code></pre>


