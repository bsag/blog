-----
kind: article
title: "Textmate improvements"
tags:
created_at: 2006/01/04
permalink: textmate-improvements
toc: false
-----

<p class="img-shadow"><img src="http://www.rousette.org.uk/images/uploads/batf_folded.jpg" border="0" alt="image" name="image" width="265" height="311" /></p>
<p> [Textmate][1] has seen some massive improvements recently. One of the most useful is the [scoping][2] feature that acts a little like CSS selectors, and allows you to restrict certain features to particular languages. So 'commenting out' sections of text gives you `# comment` in Ruby files, `// comment` in C files, and `/* comment */` in CSS files. Likewise, you can have spell checking turned on in text files, but turned off in source files, where it's generally not helpful. That's really just scratching the surface, and the stunning usefulness of scoping isn't fully apparent until you explore it properly.</p>
<p>A little while ago, I wanted to set up a kind of organised scratch file for jotting down odd bits of information, and to act as an _ad hoc_ journal at work. I tend to use either [Notebook][3] (when I'm primarily writing new text) or [DevonThink][4] (when I'm mainly organising existing files and snippets) for particular project resources, but I didn't find that worked well for the kinds of ephemeral-but-sometimes-useful-for-reference data I need to get down on a daily basis.</p>
<p>[1]: http://www.macromates.com
[2]: http://macromates.com/textmate/manual/scope_selectors#scope_selectors
[3]: http://circusponies.com/
[4]: http://www.devon-technologies.com/products/devonthink/overview.php</p>
<p>I wanted something that was super-quick to enter text into, easy to search, and that would provide an easy route for re-purposing the file, and TextMate fitted the bill beautifully. Since I wanted to write using Markdown markup anyway, I decided to use the Markdown language bundle as a starting point. First, I added a new pattern to match the date stamp you can see in the image above:</p>
<pre>
<code>
{ name = 'markup.datehdr.markdown';
   match = '(d){4}-(d){2}-(d){2}@(d){2}:(d){2}';
  },
</code>
</pre>
<p>Then I added a foldingStopMarker, so that the block starting with the date stamp and ending with a Markdown horizontal row (`***`) get automatically folded. So if you click one of the little triangles on the left hand side in the image above, the block unfolds as below:</p>
<p class="img-shadow"><img src="http://www.rousette.org.uk/images/uploads/batf_unfolded.jpg" border="0" alt="image" name="image" width="659" height="273" /></p>
<p> The word in square brackets is a tag to help me find related snippets, and a TextMate snippet (triggered by typing 'dts TAB') inserts the structure of the block with the current date stamp, and places the cursor inside the brackets to enter the tag. Another press of the tab key takes me into the 'body' of the block to start my incoherent ramblings.</p>
<p>As you can see, everything is coloured nicely, which helps to pick out information, and the headings (lines starting with `##`) also appear automatically in the popup list at the bottom of the window. That makes a nice way to quickly browse the file for particular content. For extra speed, I've set up a system wide hotkey (with QuicKeys) to open my big text file when I hit F13.</p>
<p>I've deliberately used a fairly strict structure so that it would be possible in the future to write a little Ruby script to suck the file in, put it into an SQLite database and then provide easy ways to browse tags, find text or search by date.
</p>



