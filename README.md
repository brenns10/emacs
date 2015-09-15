Welcome to my Emacs Configuration directory!
============================================

I spend a lot of time in Emacs, so my configuration matters a lot to me.  In
order to make sure it is readable, understandable, and maintainable, I have made
it into a series of self-documenting Org-Mode files.  Every Org-Mode file in
this directory is run through Babel, and all the Emacs Lisp code within it is
evaluated.  Each Org-Mode file is a sort of "module", which configures one
aspect of my Emacs experience.  These modules declare which packages which they
depend on, and configure all my personal preferences.  Plus, since the modules
are written in Org-Mode, I can write good explanations for my configuration
choices using Org-Mode markup, which can even be browsed on GitHub.

Another interesting benefit of my configuration style is that it is almost
completely "self hosting."  That is, you can plop it down onto a new Emacs
installation, and it will install almost all packages and set up an Emacs that
is identical to my configuration.

There is a little bit of code in [init.el](init.el) that makes this all
possible.  Notably, it provides the `require-package` function, which takes a
list of package names and installs them if (and only if) they aren't already
installed.  Additionally, if you realize you don't want to use a module, you can
simply add it to `disabled-module-list` in [init.el](init.el) to prevent it from
loading.


Features
--------

- Solarized dark theme!  How could you write code with any other color scheme?
- Helm!  A much nicer way to call up all sorts of information, directly through
  Emacs.  See [helm.org](helm.org).
- Gnus for Google Inbox.  A pretty heavily configured Gnus that allows me to
  read and send email directly from Emacs.  See [gnus.org](gnus.org).
- AucTex!  A wonderful LaTeX mode for Emacs.  See [latex.org](latex.org).
- Much improved PDF browsing thanks to pdf-tools.  See [pdf.org](pdf.org).
- Elpy!  A great Python mode and integration package.  See
  [python.org](python.org).
- YaSnippet, for dynamically expanding snippets.  See [yas.org](yas.org).
- A nifty search engine interface I wrote for quick browsing within Emacs using
`eww`.  See [search.org](search.org).


External Configuration
----------------------

While I've gone to great pains to make my Emacs configuration self-hosted, not
all my configuration tasks can be done in Emacs Lisp.  For some of these
modules, you need to do something besides running them on startup.  If there is
any external configuration, there should be a section named "External
Configuration" that describes what needs to be done.  It will probably even have
commands to run, that should work on Arch Linux.

Here are the important externals:

- AucTex: `pacman -S auctex`
- English Aspell Dictionary: `pacman -S aspell-en`
- Poppler for PDF: `pacman S poppler-glib`