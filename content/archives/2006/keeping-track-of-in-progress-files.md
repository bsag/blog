-----
kind: article
title: "Keeping track of in-progress files"
tags:
created_at: 2006/01/23
permalink: keeping-track-of-in-progress-files
toc: false
-----

<p>In a comment on a previous article (I wish I could remember which one!), someone commented that they'd like to know a bit more about my setup in Tiger. I'm hoping to get to that in a little more depth in the future, but one feature of Tiger that I use extensively is Smart Folders. Specifically, I use Finder labels to mark files that I have to read or review (red), that are pending in some way (orange), and academic PDF articles that I've read (green). I can then use a Smart Folder to search for items that have, say, a red label, which gives me quick access to files I need to do something with, without having to file them in a special place, and then re-file them in their proper location when they're finished with.</p>

<p>However, now that <a href="http://www.cocoatech.com/index.php">Path Finder 4</a> is out (and has a load of nice new features), I've gone back to using that instead of Finder. Unfortunately, Path Finder doesn't yet have the ability to deal with Smart Folders because it's written in Cocoa, and Smart Folders are Carbon-only objects. They are going to be supported in a future version, but they will have to be implemented from scratch. In the meantime, what was I to do without my beloved Smart Folders? Well, I knew that spotlight queries can be run quite easily from the command line using the <code>mdfind</code> command, so I figured that it ought to be possible to write a script in Ruby that could call the <code>mdfind</code> command, process the results and duct tape together calls to the shell and Applescript to construct a kind of home-brew Smart Folders GUI. By running the Ruby script itself using a Quicksilver trigger, I could get hotkey access to the results of my query.</p>

<p>It turns out that there's a hard way to do it, and a much easier way. Unfortunately, I attempted the hard way first.</p>


<h4>The Hard Way</h4>

<p>This script runs the query of your choice using <code>mdfind</code> (in this case, files labelled red), collects the paths of the resulting files, escapes any spaces or parentheses correctly for the command line, constructs soft symlinks (like aliases) to those files in a temporary directory that you specify, and then opens that directory in Path Finder. As a bonus, if you've set the 'reveal' preference in Path Finder to open in a new tab, it will honour that preference. I could also add a couple of lines at the beginning to delete all the files in the temporary directory before repopulating it, so that it's updated properly. If you try this script out, you need to change the paths for the constants at the top to suit your own set up, and make sure that a) the script is in your PATH (e.g. /usr/local/bin or ~/bin), and b) that it's executable (<code>chmod +x scriptname.rb</code>).</p>

<pre>
<code>
#!/usr/bin/env ruby
# Performs an mdfind search using a specified query,
# makes soft symlinks to those items in a temporary folder,
# then opens a Path Finder window on that folder.

# Change these to suit your set up
# TEMP_FOLDER holds the aliases to your files
# QUERY is the smart folder query you want to run
# (open your existing Smart Folder in a text editor
# to find out what the query is)
# FIND_IN restricts your spotlight search to this folder
TEMP_FOLDER = "/Users/YOUR_USERNAME/tmp"
QUERY = "kMDItemFSLabel == 6"
FIND_IN = "/Users/YOUR_USERNAME"

# Clear out the temp folder

# Perform the spotlight search
spotlight_results = IO.popen("mdfind -onlyin #{FIND_IN} "#{QUERY}"","r")
if spotlight_results
  spotlight_results.each do |item|
    # Need to escape spaces 'n' braces in the path with backslashes
    esc_path = item.gsub!(/(s|(|))/, '\1')
    if esc_path =~ /(.*/)(.*)$/ # $1 is path, $2 is file name
      file_name = $2
    end
    symlink_path = TEMP_FOLDER + "/" + file_name
    res = `ln -s #{esc_path} #{symlink_path}`
    if !res
      `osascript -e "display dialog "Couldn't make link to the file""`
    end
  end
  # Finally open our TEMP_FOLDER using Applescript
`osascript< <EOS
tell application "Path Finder"
reveal "#{TEMP_FOLDER}"
end tell
EOS`
else
  `osascript -e "display dialog "No results were returned""`
end
</code>
</code></pre>

<p>OK, so that works pretty well, and has the advantage that it's easy to see your set of files at a glance and pick something to do next. But it's a bit slow, and as I said, there's a much easier way.</p>

<h4>The Easy Way</h4>

<p>I should really know by now that Quicksilver can do pretty much anything, and you should always try accomplishing a task with it first, instead of spending ages tweaking an unnecessary script. Ahem.</p>

<p>It was under my nose all the time, but Quicksilver has a plugin called 'Spotlight module' that provides a lot of integration with Spotlight. If you enable it and then go to the Catalogue > Modules > Spotlight Saved Searches, and enable and refresh that, you should find that it finds all of your Smart Folders (also called saved searches). Then all you need to do, assuming that the Smart Folder you want is called 'ToDo', is to activate Quicksilver, type 'todo' to find the saved search, and hit the right arrow or forward slash to browse the item. This will bring up a magnifying glass which is labelled 'Searching' and after a few moments the results list will be populated with the results of that query, which you can then open, re-label or do what ever you want to do with them.</p>

<p>Either way, I now have a pretty usable way to access the functionality of  Smart Folders until the Path Finder developers have built it in.</p>

