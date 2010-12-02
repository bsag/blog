-----
kind: article
title: "Rails GTD application"
tags:
created_at: 2004/11/28
permalink: rails-gtd-application
toc: false
-----

<p class="img-shadow"><img src="http://www.rousette.org.uk/ee/images/uploads/todolist.jpg"></p><p>I've decided that the GTD Todo application <a href="http://www.rousette.org.uk/blog/archives/2004/11/07/gtd-on-rails/">I've been developing</a> is probably now in a state where I feel comfortable about distributing it. It's certainly not finished in any sense of the word, and has lots of bugs. For that reason, I can't stress enough that you shouldn't use it for your precious dataâ€”I can't guarantee that it won't ruin your life in some way, and I don't want to be responsible for that. It's really for people who are learning Ruby or Rails, and are curious about what can be done by an absolute beginner (i.e. me). You can download the zip file <a href="http://www.rousette.org.uk/blog/projects/gtd_app.zip">here</a>â€”the installation instructions are in a README in todo/docs. You also need to have Ruby 1.8.x, mySQL and Rails 0.8 installed.</p>

<p>Needless to say, I'd be really grateful for any bug-fixes or suggestions for ways that it could be improved. It's a bit messy at the moment, and some things aren't fully implemented. I've developed it with the GTD method in mind, so the main page shows all your actions sorted by context. You can add new items on that page too, so adding and viewing actions is as easy as possible. There are a few other features:</p>

<ul>
<li>Due dates are very much optional, but if you add a due date (YYYY-MM-DD format), it is displayed with a coloured background, depending on how far away the date is. If it's due today, tomorrow or overdue, the background is red. If it's due in the next 7 days, it's orangeâ€”otherwise it's green. It's basically a traffic light code.</li>
<li>The last five completed items are shown at the bottom of the main page, with the most recently completed item last. But you can see all your completed items on the todo/completed page. Eventually, I want to sort this page nicely by date, and also add a search facility.</li>
<li>If you have <a href="http://bluecloth.rubyforge.org/">BlueCloth</a> installed, you can add notes in Markdown format. Items with notes show a small note icon, and if you click this, you can toggle the display of notes. There's also a link to show or hide all notes at the top of most pages.</li>
<li>Sometimes you want to focus just on one context at a time so that you can rip through all of your calls, for example, without getting distracted by other things. If you click on the context heading on the main page, you'll be taken to a page showing just the items in that context.</li>
<li>Projects are also supported. You can add and edit projects on the project/list page. Once on that page, clicking any of the project names will show you all of the action items associated with that project. Note that actions don't have to be part of a project, so the New Item form adds an empty field for the project by default.</li>
</ul>

<p>Some things aren't finished yet. You can only add new items from the main page, which is slightly awkward when you want to add a load of actions to a project in a batch. I'm also using the 'scaffold' version of the edit action at the moment, so while it works, it doesn't fit in well with the rest of the app. I have some plans for other features to add, but I'm exhausted now, so I'll write about them later. Enjoy!</p>

<p><strong>Update</strong>: In my tiredness yesterday, I forgot to properly credit Vince's <a href="http://darkhost.mine.nu:8080/~vince/rails/tutorial.html">todo tutorial</a>, which formed the basis of my app. I'm not sure that I would have been able to get started without it.</p>
<p><strong>Update 2</strong>: One more thing. Someone pointed out to me that I'm using the same database name as Vince's app, which is a <em>really</em> stupid rookie move on my part, and entirely due to my failure to be imaginative in naming things. So if you're already using Vince's app, hold off on installing mine for now. I'll have a go at changing the namespace of my app in the next version so that they don't conflict. [Hits forehead repeatedly...] Stick to the day job, bsag.</p>
