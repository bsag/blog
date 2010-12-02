-----
kind: article
title: "Xcode and Smart Groups"
tags:
- technology
created_at: 2003/11/04
permalink: xcode-and-smart-groups
toc: false
-----

<p>When I posted about <a href="http://www.rousette.org.uk/mt-static/blog/archives/000488.html">Panther</a>, I wondered aloud why they didn't build in a 'Smart Playlists' kind of function into the Finder, so that you could have dynamic virtual folders which would automatically contain files matching the search terms you specified. At the weekend, I was having an exploratory play with [Xcode](http://www.apple.com/macosx/features/xcode/), and what should I find hiding there but exactly this kind of facility. In Xcode, they are called 'Smart Groups'.</p>

<p>You can define what should be in a Smart Group using either a simple filter (file name ends in .m for example), or using a regex search. By default, two Smart Groups are set up for implementation files (.m or .c), and for Interface Builder .nib files, along with some other hard coded groups for errors and warnings, executables and so on. Smart groups can't deal with the content of the file--which would be really cool--just the file name. However, the results of searches within files are automatically saved within a 'Find Results' group, and those searches can include regular expressions. Disappointingly, the find results don't get updated dynamically. So, if I search in my project for "panther", then I add another file which contains the word "panther", or I add "panther" to an existing file, I have to run the search again to update the results.</p>

<p>Xcode is pretty cool all round. You can also make bookmarks to particular lines in files, and view all your project files in a three-paned interface. You have groups on the left, the listing of the contents of folders and smart groups or find results in the top right, and the contents themselves in the bottom right. I don't know how to program in Java or Cocoa, but Xcode also helps you to build Applescript Studio applications based on--yes, you guessed it--Applescript. Since you can call shell scripts (including Perl scripts) from Applescript, I thought it might be a neat and easy way to build a neat GUI for more complicated scripts. It certainly makes it easy to build a GUI, without knowing anything about Cocoa. All you do is lay out your interface elements in your window, then tell the application what you want to happen when--let's say--someone clicks a particular button. You do this with an Applescript, and Xcode does all the Cocoa dirty work in the background.</p>
