-----
kind: article
title: "GTD on Rails"
tags:
created_at: 2004/11/07
permalink: gtd-on-rails
toc: false
-----

<p>A while ago, I mentioned <a href="http://www.rubyonrails.org/show/HomePage">Rails</a> &mdash; the Ruby-based framework that allows you to quickly build database driven web applications. I'm still in the process of learning Ruby, but I decided that perhaps the best way to learn would be to actually try to build something. By using Rails, I could build something with a GUI, not just a command line interface, without having to jump through hoops to install and use something like Tk to draw windows, menus and so on.</p>

<p>I worked though Vince's excellent Todo application <a href="http://darkhost.mine.nu:8080/~vince/rails/tutorial.html">tutorial</a>, and decided to use that as a base to elaborate a more complex GTD-style Todo application. My aim was really to use it as a learning tool, but if I come out with something I can actually use at the end, so much the better.</p>

<p>I haven't finished it yet, but it's coming along nicely. I've got a main page which lists all my todos by context (@office, @call etc.), stores a creation date and completion date automatically, and allows you to set a due date (I'm going to flag these up visually when they get within a few days of being due). You can also store notes for an item (and have Markdown syntax in the note marked up as HTML automatically!). A link indicates if an item has a note attached and you can then click the link to toggle display of the note inline. I'm planning to set up a Projects page which will allow you to view and manage Todos which relate to a particular Project, though these will all be visible (sorted by context) on the main page. I also plan to provide an interface to edit and delete contexts so that you don't need to mess with the database tables if you decide you want to add a new one.</p>

<p>There's nothing particularly fancy about it, but remember that I'm not only new to Rails, but also new to Ruby and MySQL. I'm stunned that a framework which can create something as complex and professional as <a href="http://www.basecamphq.com/">Basecamp</a> can also allow a totally green newbie like me to make something cool and functional, without making me tear my hair out. In fact, it's been really fun, and I have at times felt moved to punch the air and exclaim, "I rule!" when I solve a little problem. Ahem. The people who hang out in the #rubyonrails channel (irc://irc.freenode.net/#rubyonrails) are also fantastically helpful and enthusiastic, and perhaps one of the best possible advertisements for both Ruby and Rails. </p>


