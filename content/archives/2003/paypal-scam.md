-----
kind: article
title: "PayPal scam"
tags:
- technology
created_at: 2003/06/25
permalink: paypal-scam
toc: false
-----

<p>This morning I received a superficially very convincing email which appeared to be from PayPal, asking me to update my account information. I might have been taken in, but for the fact that I received 8 indentical emails together (not even PayPal is usually that inept), and that the message was sent to an email account that I have not registered with PayPal. A closer inspection of the message source revealed that the link in the email was being diverted to another server:</p>

<code>http://www.paypal.com@207.44.196.35/~redbarpr/cgi-bin/
webscr%3fcmd=verification/ (not linked so that you won't be tempted to click on it ;-) )</code>

<p> Apparently, <a href="http://www.webmasterworld.com/forum22/854.htm" title="Webmaster World">it's a known scam</a>, though a slightly more sophisticated one than others that have been attempted. By coincidence, it's also the first spam that Merlin Mann <a href="http://www.kungfugrippe.com/previously/002501.php">has caught in his spam honeypot</a>. It turns out that Red Bar Productions &mdash; who own that site &mdash; was hacked, and they have nothing to do with it. So, some git or gits have hacked this poor guy's server to run this spam, and even stolen PayPal's bandwidth as they used the original PayPal images in the email.</p>


