-----
kind: article
title: "Markdown"
tags:
- technology
created_at: 2004/03/16
permalink: markdown
toc: false
-----

<p>John Gruber has produced another text-to-HTML filter, called <a href="http://daringfireball.net/projects/markdown/" title="Markdown">Markdown</a>. I use <a href="http://textism.com/tools/textile/" title="Textile">Textile</a> extensively when writing this weblog, and find it very useful. I do know how to write HTML, and I don't find it particularly hard, but using a filter like this just makes it a bit quicker to write &mdash; and perhaps more importantly &mdash; easier to read and edit. If there's too much 'code furniture' on a page, it can be hard to pick up spelling or grammatical errors. Sometimes it's hard to motivate yourself to write, and then any kind of barrier between you and the words on the screen becomes more significant.</p>

<p>Markdown has a smaller syntax set than Textile, but it seems that this is deliberate. It only allows you to encode the kind of HTML formatting that can be represented with plain text. As John Gruber <a href="http://daringfireball.net/projects/markdown/syntax#philosophy" title="Explaining the philosophy of Markdown">explains</a>:</p>

<blockquote>
 <p>Markdown is not a replacement for HTML, or even close to it. Its
 syntax is very small, corresponding only to a very small subset of
 HTML tags. The idea is not to create a syntax that makes it easier to
 insert HTML tags. In my opinion, HTML tags are already easy to
 insert. The idea for Markdown is to make it easy to read, write, and
 edit prose. HTML is a publishing format; Markdown is a writing
 format. Thus, Markdown's formatting syntax only addresses issues that
 can be conveyed in plain text.</p>
</blockquote>

<p>This produces very clean markup, which is extremely readable. I particularly like the ability to form reference style links. To keep the main text as uncluttered as possible, you can refer to a URL as follows:</p>

<pre><code>[Google][1]
</code></pre>

<p>and have all the referenced URLs listed anywhere else in the document like so:</p>

<pre><code>[Google]: http://www.google.com "Optional title"
</code></pre>

<p>It works very neatly and makes it much easier to accumulate links at the bottom of the document as you are researching and writing, and then mark up the links in the text (the references at the bottom are converted to proper inline URLs).</p>

<p>I also like the fact that you can use Markdown to filter text files at the command line, or as a Unix filter in <a href="http://www.barebones.com/products/bbedit/index.shtml" title="BBEdit product page">BBEdit</a>, so that you can easily convert any piece of text intended for the web. I'm going to use the filter for a while and see if I get on with it &mdash; if I do, I'll set up the preferences so that you can also use Markdown in the comments.</p>

<p><strong>Update</strong>: For those of you not reading the comments, John Gruber pointed out an error in my examples. With the URL given in the text as:</p>

<pre><code>[Google][1]
</code></pre>

<p>you need a reference like this:</p>

<pre><code>[1]: http://www.google.com "Optional title"
</code></pre>


