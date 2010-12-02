---
created_at: 2010/11/18
kind: article
publish: true
tags: [blogging, geek, code]
title: "Nanoc"
permalink: nanoc
---

As I mentioned [earlier][], I've switched to using [nanoc][] to generate this blog, so I thought I would write a little bit about why I chose it and how I switched. There are many static site generators out there, but when I looked into them in a bit more depth, nanoc stood out because of its flexibility. I also really like that fact that it was written in Ruby and that you could choose which templating system to use. In many ways, constructing a site with nanoc is very similar to building a site with Rails, only without the database: the content is generated from plain text files kept in the `/content` directory, getting its metadata from a YAML block at the top of each text file. It's very simple, human readable, and portable, and if you want to extend the metadata, you just add a line to the YAML block and some code to do something with your new attribute. So, for example, if I wanted to add a new reviews section, I could just label it `kind: review` and add some metadata for rating, type of review and so on.

The basic idea is that you create layouts (I used HAML and SASS, but you can use erb or plain HTML as you wish), then add some code to insert the contents of your site. The `Rules` file governs how all of this stuff is brought together. You can pre-process items (which I do to generate the tags and yearly archive pages), then you write rules to compile and route the items. The compilation rules specify which filters are used (e.g. `rdiscount` to transform Markdown to HTML), and which layout is used for that item. The routes specify the output directory and filename for the item, and thus its URL in the resulting site. This means that I can keep each article in a directory labelled for the year in `/content/archives/2010` to organise things a bit, for example, but have that written out to `/archives/post-title/` so that my old permalinks don't break.

I exported all the old posts from ExpressionEngine by creating a special export page which was plain text formatted in the right way, with easy-to-find separators between the posts. Then I had to cook up a little Ruby script to split the huge file into separate files containing each post, each named using the `permalink` attribute. That was a fun little geeky task, and went surprisingly smoothly, leaving only a little manual cleaning up to do here and there.

After that, I played around with a few test posts to recreate the old structure of the site and understand the system a bit better, before I tried it with all my old posts. In the end, I decided to use the nice nanoc blog template by [Mario Gutierrez][], which provided a good starting point, and helped me with the more tricky stuff like building the tags pages. I also got a lot of useful help from looking at Fabio Cevasco's [h3rald][], [Starr Horne's blog][], and [stoneship][], the blog of Denis Defreyne who wrote nanoc. All have some great tips and also publish the source of their sites so that you can dig around under the bonnet and see how they did it. I might do the same thing myself on Github at some point. I also had great assistance from several people including Denis on the nanoc Google group, which was an enormous help when I got a bit stuck.

I'm really happy with nanoc. I've still got to tidy up one or two things, but it's basically working how I want it to at the moment. The only disadvantage I've found is with compilation time with my big site (this is post 1401!), but even that has improved a great deal since I started using the pre-release 3.2.0a3 version of nanoc. At any rate, it's not a big deal to wait for a few minutes for the blog to compile, and if anything, it reinforces the fact that I'd like this blog to be longer form, more considered writing, in contrast to the kind of brief comments, links and so on I post on [Twitter][] and my Tumblr blog [slipstream][]. I quite like having that distinction.

[earlier]: http://rousette.org.uk/blog/archives/all-change-again/
[nanoc]: http://nanoc.stoneship.org/
[h3rald]: http://www.h3rald.com/articles/take-back-your-site-with-nanoc/
[stoneship]: http://stoneship.org/
[Starr Horne's blog]: http://starrhorne.com/posts/howto_build_a_blog_with_nanoc/
[Mario Gutierrez]: http://github.com/mgutz/nanoc3_blog
[Twitter]: http://www.twitter.com/bsag
[slipstream]: http://bsag.tumblr.com/
