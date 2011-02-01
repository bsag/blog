---
created_at: 2011/02/01
kind: article
publish: true
tags: [geek, code, software]
title: "Vim and Zsh, Oh My!"
permalink: vim-and-zsh-oh-my
---

Is there such a thing as too many text editors? I ask, because I seem to be perpetually cycling between a set of editors, unable to settle for once and all on one of them. On a fairly regular basis, I use BBEdit, TextMate, and MacVim, and now I find that my head has been turned once again by a brand, shiny new text editor, [Sublime Text X][]. Certainly I find that different kinds of editors tend to suit a particular kind of task (writing HTML, or Ruby or plain text, for example), but I can't help thinking that I would be a lot more productive if I could just become an expert in the One True Text Editor (in fact, _any_ One True Text Editor), and be happy with that.

I periodically go back to vim, or rather [MacVim][]. There's a lot to love about it, and every time you learn a new trick that makes your life easier, or solves a common pattern of editing problems, you feel invincible and all-powerful. Or maybe that's just me... But then there are the things that trip you up: Vim's modal editing is great, but it's easy to wreak havoc in only a few key strokes. I manage to put things right with a few undo commands, but it's a little unnerving. And then there's the buffer/window conundrum. I have `set hidden` in my .vimrc file, so I can close a buffer while there are other buffers with unsaved changes. However, I can't quite seem to get the hang of predicting when deleting or closing a buffer will wipe out my whole window. So I often accumulate a long list of buffers, then accidentally delete the active buffer and find that my window (and all the open buffers) are gone, and I have to open them all again. I feel stupid not knowing how to fix that, but if anyone has the solution, I will be forever in your debt! I know that I can delete a non-active buffer by finding its number and issuing a command like `:bd9` for example, but that seems awkward. Perhaps I'm just worrying too much about managing buffers, and should just leave them all open in the background and be done with it.

Anyway, despite a few hiccups, I'm really enjoying getting to know Vim again, partly because I found a great set of customisations and plugins, specifically designed for Mac users: [Janus][]. It just collects together a set of useful plugins and sets up some custom settings to make the transition a bit smoother. Aside from the window quandry, I'm really enjoying getting to know Vim again. I feel as if each time I go back to it, I get a little bit more expert. Perhaps it will stick this time.

One tiny change I made recently made a huge difference to my ease of navigating between buffers, and I can't believe I didn't think of it before:

    nmap <Left> :bp<CR>
    nmap <Right> :bn<CR>

That means that you can use the left and right arrow key (in normal mode) to move between the previous and next buffer, making it trivial to flip between them quickly. I also found the following gem in someone's .vimrc:

    nmap . .`[

I would never have thought of it myself, but what that does is to move the cursor back to where you started editing after you've used the `.` command to repeat the last edit. It's really handy, at least for the way I tend to use the dot command.
  
Another change I've made recently is to switch my shell to [zsh][] from bash. Again, I was helped greatly by a set of customisations quaintly entitled [oh-my-zsh][], which provides a set of themes and prompt styles to choose from, and generally sets up the defaults to be sane and comfortable. With highly configurable things like text editors and shells, it can be really useful to have somewhere functional to start, even if it just helps you to identify what _can_ be changed.

zsh has some rather nice enhancements over bash: the autocompletion and globbing is very slick, and I find the syntax a bit more logical and easier to remember than that for bash, but the two are closely related enough that the learning curve isn't too steep. I also like the vi-mode for command-line editing in zsh much more than the one in bash, which just encourages me to increase my Vim-skills even more.

[Sublime Text X]: http://www.sublimetext.com/x
[zsh]: http://www.zsh.org/
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
[Janus]: https://github.com/carlhuda/janus
[MacVim]: http://code.google.com/p/macvim/
