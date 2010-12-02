-----
kind: article
title: "Trees, trunks and metadata"
tags:
- technology
created_at: 2003/02/11
permalink: trees-trunks-and-metadata
toc: false
-----

<p>Dan Hon has written a <a href="http://danhon.com/articles/archive/000403.shtml" title="Inflection Point">very interesting article</a> about the limitations of the filing cabinet metaphor of computer filesystems, and the about the finality of saving a document.</p>

<p>He touched on a number of things that bug me on a regular basis. I speak &mdash; as usual &mdash; from a MacOSX viewpoint here.</p>

<p class="img-shadow"><img src="http://www.rousette.org.uk/mt-static/blog/archives/images/tb.jpg" alt="Tinderbox screenshot" border=0 width=75 /></p>

<p><strong>Representing files in ways that give cues to their content</strong>. Icons should tell you what <em>kind</em> of file it is, not what application last opened it (or what the default handler is). PDF files might have an Adobe icon or a Preview one. Of course, I can set one or the other to be the default for *.pdf files, but that sets what application will deal with the file. I want to choose what I open it with, but some standard, application-independent icon would make the files visually more distinctive. Dan mentioned having an icon change to reflect how many pages were in the document, how old it was, and so on. I think this is a great idea: <a href="http://www.eastgate.com/Tinderbox/index.html" title="Tinderbox">Tinderbox</a> already does this with its notes. Notes containing a little text have an icon with one line, those with a lot of text have an icon with many lines. New notes are subtly darker shaded, then fade gradually lighter over time (see screenshot). Something like this extended to the whole filesystem would be great.</p>

<p><strong>The problems of finding files.</strong> This is a tough one. I have a reasonably tidy filing system â compared to those who spray their desktop with files willy-nilly â but I still spend time trying to find stuff I've stored. Very often, files need to appear in two folders to fit in with the categorization. Sure, I could use aliases, but that's rather a clunky way to do it. Creo have a nice application called <a href="http://www2.creo.com/sixdegrees/" title="Six Degrees">Six Degrees</a>, which deals with email, contacts and attachments. They make the point that recognition works much better than recall: find files which match whatever you do remember about the one you're looking for (the recipient, part of the name, the rough date) and you'll most likely recognize it immediately. As Dan points out, this kind of metadata is very useful in searching, but harder to implement with less structured data.</p>

<p><strong>Rolling Undos</strong>. Now we're talking. We've all been there: you edit, save, then think "Doh! I wanted that previous version, but now I've saved, and it's gone". A "timeline" which you could scrub through to view previous versions of the document sounds like a fantastic idea. As someone who also writes a lot collaboratively, a facility like this could also allow merging of edits made by other people (otherwise known as reverting to your own version when a colleague makes a pig's ear of it). Some way to highlight changes (like Word's Track Changes, but better) would be important, and might also be useful even when you're looking at your own edits. I'd love to be able to abandon the whole âwhat to name the file' problem. âPaper v4â², âPaper v5â² and so forth gets clumsy very quickly, and how do I remember what I added in each one? I also always get bitten by the âPaper final' filename. Never, ever name a file final anything â kiss of death. Oh, and one more thing (I've watched one too many Jobs keynotes) â all of this should work with any application in which you edit text.</p>
