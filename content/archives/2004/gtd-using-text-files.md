-----
kind: article
title: "GTD using text files"
tags:
created_at: 2004/10/21
permalink: gtd-using-text-files
toc: false
-----

<p>A little while ago, I <a href="http://www.rousette.org.uk/blog/archives/2004/09/16/getting-things-done-the-practicalities/">wrote about</a> how I used <a href="http://www.eastgate.com/Tinderbox/">Tinderbox</a> to implement my the GTD method. At the time, this was inspired by Merlin Mann's entry about <a href="http://merlin.blogs.com/43folders/2004/09/how_does_a_nerd.html#more">hacking GTD</a>, in which he described his own &mdash; rather neat &mdash; method using plain text files.</p>

<p>Well, now that I'm using <a href="http://www.macromates.com/">TextMate</a> so much for everyday work (and can keep a set of related files as a project in one window), I thought I might &mdash; just as an experiment &mdash; see how easy it would be to translate my method in to plain text files. It's not that I don't like my method using Tinderbox, or that I think this is necessarily the best or easiest way to do things. It's more a case of exploring other possibilities (professional curiosity is part of my job, after all), flexing my Ruby coding muscles, and seeing how far you can push the scripting abilities of TextMate. Some of you might quite legitimately wonder if I ever get anything done on my GTD list if I'm spending so much time fiddling with the list itself, but somehow I am still regularly managing to complete things off my list.</p>

<p><a href="http://www.braino.org/blog/archives/001440.php">Daniel Von Fange</a> wrote about a very cool little script to mark items as done and copy them into a 'completed.txt' file together with a date/time stamp. I've modified his code slightly to use the following idiom:</p>

<pre>
<code>
ruby <<END
# code goes here
END
</code>
</pre>

<p>This makes it easier to embed the code in a TextMate command and use TextMate environmental variables like $TM_SELECTED_TEXT and $TM_FILEPATH. I thought it would be nice to be able to sort my tasks by context ('@lab', '@email' etc.), regardless of whether they came from the actions.txt file or the projects.txt file. So each line of the file has the following format: '[ ] @context: Task text'. I also put any notes that go with the task below that line, indented and prefixed with '< '. As I use Markdown format for the file, this translates into the notes being wrapped in a blockquote in the HTML output. I also use TextMate's 'Fold selection' command to fold the task and notes so that just the task line is visible, and I can toggle display of the notes bit with F1. I then wrote a simple Ruby script to go through all the files containing tasks (just two in my case, but it could be as many as you like) pulling just the task text out of the file and sorting the actions by context:</p>

<pre>
<code>
#!/usr/bin/env ruby
# 2004-10-21
# Pull the context specific actions out of 'files'
# Print them sorted by context
# Types of contexts we want to find
context = ['@office', '@agenda', '@lab', '@lib', '@email', '@call']
# Files containing GTD stuff
files = ["/Users/me/projects.txt", "/Users/me/actions.txt"]
# Set up regexp:
# $1 is the context, $2 is the task itself,
# given a line of format '[ ] @context: Task text'
# Search all files for each @context
context.each do |context|
  puts "#{context}".upcase
  search = Regexp.new("^\[\s\]\s(#{context}:)\s(.+)$")
  files.each do |file|
    f = File.open(file)
      f.grep(search) do |line|
        puts "#$2"
      end
      f.close
  end
  puts
end
</code>
</pre>

<p>I then call that script in <a href="http://projects.tynsoe.org/en/geektool/">GeekTool</a> and have the list displayed nicely on my desktop. Whenever I complete a task it gets deleted from the main working files, so whenever I want to see an up-to-date list of all the things I have to do, sorted by context, I just use the Show desktop Expos&eacute; shortcut to clear the decks, and there's the list, tattooed on my desktop.</p>

<p>I don't know if it's because I'm enjoying Ruby so much, but I'm really having fun with these tiny hacks and scripts.</p>
