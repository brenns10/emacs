Emacs Configuration
===================

This is my Emacs configuration directory.  After getting a rather complicated
configuration going a while back, I decided that it would be best to break it up
into multiple files.  That way, code could be broken up into sections based on
the intent of the configuration.  I researched ways to do that, and I noticed
that a lot of people were using Org-Mode's embedded code features to create
documents that read like English with code embedded.

So that's how my configurations are structured.  If you're browsing this on
GitHub, you can read the documents rendered like Markdown, with code embedded
and syntax highlighted.

My other idea was that I wanted my Emacs configuration to bootstrap itself.
That is, I wanted the packages I used to be installed if they weren't available.
That way, I could install Emacs, clone this repository, run it, and Emacs would
install all packages necessary to have an identical configuration up and
running.

Important files:

* [init.el](init.el): Loaded at startup; bootstraps the rest of my config files.
* [stemacs.org](stemacs.org): This is the main configuration file.  It runs all
  the topical configuration files.
* Everything else is a "topical" configuration file -- it is for a specific
  purpose, and it is run by [stemacs.org](stemacs.org).
