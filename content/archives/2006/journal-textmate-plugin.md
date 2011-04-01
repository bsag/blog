-----
kind: article
title: "Journal TextMate plugin"
tags:
- life
created_at: 2006/02/17
permalink: journal-textmate-plugin
toc: false
-----

<p>About a month ago, I <a href="http://www.rousette.org.uk/blog/archives/2006/01/04/textmate-improvements/">mentioned</a> that I'd made some customisations to <a href="http://macromates.com/">TextMate</a> to help me with the plain text journal file I keep to jot things down on a day-to-day basis, and a couple of people expressed an interest in me releasing a bundle with the modifications. It almost didn't seem worth doing because what I'd mostly done was to add minor things to the Markdown bundle. However, I thought that people might be able to add to it and improve it, so I decided to bundle it up.</p>


<h4>Language and snippets</h4>

<p>The language section of the Journal bundle includes the Markdown bundle, so that you can use the Markdown format in your Journal files. I've also just copied over a few of the useful snippets and commands, like the excellent snippets for adding unordered or numbered list items. You just hit the enter key at the end of a line (not return), and the snippet inserts either a <code>*</code> or increments the appropriate number depending on whether you're in an ordered or unordered list. I added a similar snippet ('Add unordered todo item') which uses Shift-Enter to add <code>* []</code>, placing the cursor between the square brackets for the first tab position, and outside it for the second. It's handy if you want an ad-hoc todo list to keep track of what you have to do today---put an 'X' in the square brackets to mark as done.</p>

<p>There's also the snippet to make the entry itself (as I described in the my previous article), which is inserted with the tab trigger 'dts'. I also modified <a href="http://www.schussman.com/">Alan's</a> <a href="http://www.rousette.org.uk/blog/archives/2006/01/04/textmate-improvements/#comment-4943">excellent suggestion</a> to paste the clipboard into a new entry (tab trigger: dtsp).</p>

<h4>Macro</h4>

<p>There's already a built-in command to toggle all of the entries open or closed (Option-Command-0), but I wanted to be able to toggle a single entry closed when my cursor was somewhere between the date header and the closing <code>***</code>. So I made a macro called 'Toggle folding on this block' which is triggered with Control-Command-F1.</p>

<h4>Commands</h4>

<p class="img-shadow"><img src="http://www.rousette.org.uk/images/uploads/journal_preview.png" border="0" alt="image" name="image" width="322" height="364" /></p>

<p>The Preview in Browser command is just copied straight over from the Markdown bundle, but I've modified the Preview command to pretty up the output a bit, as you can see in the image to the left. Tags are marked up with a coloured background, and entries outlined in colour with a prominent heading. The CSS styles are in the Preview command, so if you open up the Bundle Editor you can tweak the styles to your taste.</p>

<p>I think that's about it---get the Journal bundle <a href="https://www.strongspace.com/dargo/public/projects/Journal.tmbundle.zip">here</a>. To use it, place it in your ~/Library/Application Support/TextMate/Bundles folder, then make sure that your journal text files have the Journal language selected (use the drop-down language menu at the bottom of the window). If you want to get syntax highlighting, you'll need to visit Preferences then Fonts &amp; Colors and make new elements in the panel below. For example, if you want to make the [tag] a different colour, make a new element, call it Keyword tag (or whatever you like), style it the way you want, and then set the Scope Selector to <code>markup.tg.markdown</code>.</p>

<p>
<strong>Update 31-03-2011:</strong> Apparently Merlin Mann (hello Merlin!) was kind enough to mention this bundle on <a href="http://macpowerusers.com/2011/03/mpu-046-workflows-with-merlin-mann-ii/">MacPowerUsers Podcast</a>, and those of you have visited will have noticed that the link to the bundle was broken. Oops. I had left it on Bingodisk (a service which has now closed) and neglected to make a backup. Double oops. Anyway, I have uploaded my own copy and altered the link, so you should be able to get hold of it now. I can't absolutely guarantee that I haven't tinkered with the bundle since originally publishing this post, but I think that it should be substantially the same. You might also like to check out Alan Schussman's <a href="https://github.com/ats/JournalTasks.tmbundle">JournalTasks bundle</a>, which adds various useful task-related features. Happy Journalling!
</p>

<p>
  <strong>Update 01-04-2011:</strong> I didn't realise that there were two podcasts with Merlin, so linked to the wrong one. I've updated it to the correct episode (46) now.
</p>
