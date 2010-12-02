-----
kind: article
title: "Automation"
tags:
- technology
- software
created_at: 2008/04/23
permalink: automation
toc: false
-----

<p>I was quite excited about the prospect of <a href="http://www.apple.com/macosx/features/300.html#automator">Automator</a> when it was introduced, because it offered the prospect of being able to write quick scripts to solve little workflow problems, without having to know much about AppleScript. I can code in a number of languages (not brilliantly, but enough to get by), but for some reason, I find AppleScript quite difficult. It looks enough like English that you're lulled into thinking you know what you're doing until you get tripped up by some odd syntax. Anyway, Automator allows you to cobble together pre-built building blocks, recorded actions, and little shell scripts (in Python, Perl or Ruby as well as bash and other common shells) so that you don't need to write Applescripts if you don't want to.</p>

<p>Despite this convenience, I haven't used Automator quite as much as I'd thought I would, partly because applications like <a href="http://www.manytricks.com/butler/">Butler</a> lets you do a lot of things you might use Automator for, but in a more accessible way. However, there are occasions when a nicely crafted Automator workflow is very handy.</p>

<p>Mr. Bsag often has to send photographs or scans of his prints to galleries, and they often insist on a 300dpi TIFF. He stores these images in iPhoto, and while you can certainly export as TIFF, I haven't found an easy way to change the DPI (though you can do it in Preview in Leopard). However, you can change the DPI property of an image using the commandline tool, <code>sips</code>, as well as lots of other handy things. But Mr. Bsag wouldn't be comfortable with a commandline command, which would bring it back to me doing it for him, and I'm lazy. Enter Automator!</p>

<p>I made a quick workflow (see an image of the steps <a href="http://www.flickr.com/photos/bsag/2433286515/">here</a>) which gets the selected items in Finder, puts a dialog box to say what it is going to do an allow an escape, runs a Ruby script which calls a <code>sips</code> command on the arguments to change the DPI and convert to TIFF, then speaks a confirmation of how many files were converted. I made it into a Finder plug-in<sup id="r1-230408"><a href="#f1-230408">1</a></sup>, so that Mr. Bsag could just export his chosen images from iPhoto to the desktop, select them, then use the contextual menu to run the script. It seems to work fine. For common tasks like this where you want to batch convert some files to a standard format, Automator is ideal.</p>

<p><sup id="f1-230408">1</sup> The documentation for Automator says that if you make a workflow a Finder plugin, you should remove the first 'Get selected Finder items' step. When I did this it acted as if nothing was selected. With the selected Finder items step in place, it counts each selected file twice. Weird. In the final plug-in, I hacked around this by simply dividing <code>num</code> by 2. <a href="#r1-230408">&uarr;</a></p>


