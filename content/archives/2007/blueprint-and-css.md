-----
kind: article
title: "Blueprint and CSS"
tags:
- technology
- software
created_at: 2007/08/18
permalink: blueprint-and-css
toc: false
-----

<p>A few days ago, I noticed a bit of buzz about a new CSS framework called <a href="http://bjorkoy.com/blueprint/">Blueprint</a>. The main idea behind the framework is to make it easy to construct purely CSS grid layouts, and also to set up good-looking typography, and to make the whole thing as similar as possible in all browsers. Even Internet Explorer. That's no small task.</p>

<p>I'm certainly not a CSS expert, but while I'm not too shabby at making things with pretty colours and attractive padding, I usually seem to come unstuck when it comes to positioning blocks of text on the page. Getting neat columns of text has always seemed a bit of a trial by ordeal to me, and line spacing has always been a matter of complete guesswork.</p>

<p>I've been putting off producing a few pages for a web site for work<sup id="r1-180807"><a href="#f1-180807">1</a></sup> for ages, so I decided that this would be a good opportunity to try Blueprint out. The site is very simple (just a few pages, mainly text with a few images), but I wanted it to look professional, clean, minimalist, but also attractive.</p>


<p>The Blueprint package contains a number of separate CSS files, each imported by one master file, which you link to in the head of your HTML file, along with a print stylesheet. The core of the idea is that it divides your page into 14 columns, each 50 pixels wide with a 20 pixel gutter between them. If you want a narrower page, a formula is provided to calculate a new width with fewer columns. Of course, you almost certainly don't want your text in 14 50 pixel wide columns, but the idea is that you use them rather like cells in a table, merging them when required to make wider columns or sub-columns. So, for each block of text, you just need to specify how many columns you want it to span, and whether you want it to be the first or last column (or span the page completely). So for example, this is a simple structure for a narrower, 13-column page:</p>

<pre>
<code>
&lt;div class=&quot;container&quot;&gt;
  &lt;div class=&quot;column span-13 first last&quot;&gt;
    This is the header
  &lt;/div&gt;

  &lt;div class=&quot;column span-3 first&quot;&gt;
    This is the left-most column
  &lt;/div&gt;

  &lt;div class=&quot;column span-7&quot;&gt;
    This is the main content
  &lt;/div&gt;

  &lt;div class=&quot;column span-3 last&quot;&gt;
    This is the sidebar on the right
  &lt;/div&gt;

  &lt;div class=&quot;column span-13 first last&quot;&gt;
    This is the footer
  &lt;/div&gt;
&lt;/div&gt;
</code>
</pre>

<p>Specifying both the classes <code>first</code> and <code>last</code> means that headers and footers properly span the page. Easy, no? The built-in typography is very clean and attractive, and there are nice classes built-in for simple horizontal rules, small text (for footers, for example) and 'quiet' text to blend into the background a bit more. I found that without any extra styling the default was already very pleasing, if a little plain. All I needed to do was add a few more classes to change a some colours for links and headings.</p>

<p>I really like the flexibility of Blueprint, and the way that it does all the donkey work of positioning things on the page for you, so that you can concentrate on the pretty colours, which is -- after all -- the fun part.</p>

<p><sup id="f1-180807">1</sup> Yes, I am on holiday, and yes, I was doing something that looked incredibly like work. Mr. Bsag spotted that and told me off, and wasn't placated by my explanation that it was just so that I could try out a cool new stylesheet framework. <a href="#r1-180807">&uarr;</a></p>

