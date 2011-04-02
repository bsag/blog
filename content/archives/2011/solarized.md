---
created_at: 2011/04/02
kind: article
publish: true
tags: [geek]
title: "Solarized"
permalink: solarized
---

I've been using [Vim][] quite a lot recently, and I'm enjoying the experience a great deal. However, I have found it difficult to settle on a colour scheme that I really like. While there are a few Vim colour schemes that I quite like (Wombat, Two2Tango, Mayansmoke, for example), there was always some niggling thing that irritated me a little bit about each of them. One problem is that a lot of colour schemes fall into one of two extreme groups: they are either very colourful and bright (to the point of looking like an explosion in a sweet factory), or they are very low contrast, which is restful but ultimately makes for strained eyes. Another problem is that I edit all kinds of files in Vim, from plain text or Markdown files, through LaTeX to Ruby or HTML. Each of these types has different needs for syntax highlighting, and consequently it can be difficult to find one colour scheme to suit them all. To make matters worse, I tend to flit between light backgrounds and dark backgrounds for different types of files, depending on the time of day and how tired my eyes are. Most colour schemes offer only a dark background variant *or* a light background, but not both. This means that you have to get used to syntax highlights being different colours, depending on which scheme (dark or light) you are using.

These are all thoroughly First World Problems, I know, but irritating all the same if you write a lot in a text editor.

Anyway, yesterday I came upon a new set of colour schemes, courtesy of [Arnaud Limbourg][] on Twitter. The set of schemes is called [Solarized][], and has been developed by Ethan Schoonover. He has obviously put a great deal of thought and work into the scheme, because it is incredibly comprehensive. He has chosen colours for low brightness contrast, but contrasting hues so that it is easy to discern different syntax elements, and distinguish text from the background. Even better, there are both dark and light background schemes, which retain mostly the same colours, so there is continuity between the two. Using a bit of code for my `.vimrc` that Ethan provides, I've set up the F5 key to toggle between dark and light backgrounds, which is really handy.

As well as a Vim colourscheme (which works equally well for GUI and terminal Vim), there are also terminal colour schemes for both Apple's Terminal.app and iTerm2, Mutt colour schemes, palettes for Apple's Colour Picker, GIMP and Adobe Photoshop and Xdefaults/Xresources. It's all really well thought out and I am loving my new colour schemes. It makes Vim feel even more polished.

What's that you say? Did I get distracted geeking out over shiny colour schemes yesterday, when I should have been finishing a paper? Why, yes, how did you guess...

[Vim]: http://www.rousette.org.uk/blog/archives/vim-and-zsh-oh-my/
[Solarized]: http://ethanschoonover.com/solarized
[Arnaud Limbourg]: https://twitter.com/#!/arnaudlimbourg
