---
created_at: 2011/04/28
kind: article
publish: true
tags: [geek, software]
title: "Vim And The Wonder Of Vundle"
permalink: vim-and-the-wonder-of-vundle
---

I'm on holiday, it has been beautiful weather outside and I have (mostly) been
indoors tinkering with my `.vimrc`. What a waste, you might be thinking. You
might be right, but I'm happy enough.

You see, I've had another enormously stressful month and a half, and so I've
been [self-medicating][] with geeky ephemera, and it has been fun. I have
fallen back in love with [vim][] (or more precisely, MacVim) recently, and have
been using it for everything, slowly getting to know vim's many interesting
features and shortcuts. I've been using vim or MacVim for every text-related
task, and I can feel my vim skills gradually creeping up its vertiginous
learning cliff.

One problem I've had relates to keeping plugins organised and up to date. Many
people use [Pathogen][] for this task, which is an excellent tool. However, it
doesn't help you to actually install scripts, nor does it keep a list (as far
as I know) of scripts you have installed to make replicating a setup on another
machine easy.

This week, I came across [Vundle][]. It's similar in many ways to Pathogen, in
that it keeps all your plugins in a `.vim/bundle` directory. However, it also
offers an easy way to install scripts by using a few lines in your `.vimrc` in
which you list which scripts you want to install. These can be from GitHub,
Vim-Scripts git repositories, or any other git repository for which you have a
public URL. Once you have all your scripts listed, you can issue a
`:BundleInstall` command within vim, and Vundle installs and configures the
plugins for you. Even better, if you decide you don't want a plugin installed,
you delete the line from `.vimrc` and then use the `:BundleClean` command.

This means that it's easy to keep the same bundles installed on multiple
machines and &mdash; almost as important &mdash; keep track of which plugins
you have installed. I've taken to placing any plugin-specific configurations
just under the line listing the plugin source in `.vimrc` which makes it easy
to find the relevant lines to tweak them, and also to clean up everything to do
with that plugin if you decide not to keep it.

As a result of the ease with which you can try out new plugins, I've discovered
a few gems. [Gitv][] is a great port of gitx to vim, allowing you to explore
commits, diff files and use blame on your git repository, all within vim.
Staying with the git theme, [gist-vim][] is a clever way of posting a Gist on
GitHub directly from a vim buffer, or you can use it to browse, copy to the
clipboard or edit an existing Gist.

Finally, I'm trying out [vim-easymotion][]. I don't yet know if I'll stick with
it, but it is a handy way to boost vim's capabilities for jumping around within
a file. You use the `\w` command to highlight the start of each word.
Easy-Motion temporarily overlays a red character over the beginning of each
word, and you just hit that letter to jump to the word. Of course, vim already
has numerical prefixes for the jump word command, so that in normal mode you
can type `3w` to jump forwards to the start of the third word from the current
cursor position. However, if you are jumping ahead a few words, it is easier to
see where you want to get to that to count the number of words. There are
similar commands to jump forwards to a letter, backwards and so on. It's pretty
nifty, and worth a try if you use vim.

Anyway, the end result of all this geekery is that I feel more relaxed and more
organised. I have also spent some time outside sorting out the garden, and
I've also done a few minor DIY jobs around the house which have been pretty
satisfying. I still feel as if I need another week to really unwind, but I
certainly feel better than I did a week ago.

[self-medicating]: http://www.rousette.org.uk/blog/archives/soothing-tasks/
[vim]: http://www.rousette.org.uk/blog/archives/vim-and-zsh-oh-my/
[Pathogen]: https://github.com/tpope/vim-pathogen
[Vundle]: https://github.com/gmarik/vundle
[Gitv]: https://github.com/gregsexton/gitv
[gist-vim]: https://github.com/mattn/gist-vim
[vim-easymotion]: https://github.com/Lokaltog/vim-easymotion
