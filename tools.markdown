---
layout: default
title: Tools
---

These projects attempt to make downloading plugins from the
mirror even easier.

 * [vim-update-bundles](http://github.com/bronson/vim-update-bundles)
   is a small Ruby script that makes it easy to set up a new vim
   environment and install and remove plugins using [Pathogen].
 * [vundle](http://github.com/gmarik/vundle) is similar and written
   in 100% vimscript.
 * Also see the alternatives below.  They don't use the mirror but
   some of them make downloading scripts much easier.

These help manage the plugins once they're downloaded.

 * [Pathogen] allows you to store your scripts individually in
   ~/.vim/bundles instead of one gigantic communal directory tree.
 * [tplugin](http://github.com/tomtom/tplugin_vim)
   can be thought of as a mix of [Pathogen] and
   [AsNeeded](http://github.com/vim-scripts/AsNeeded).

# Manual

Less software is more.  If you want to manage your plugins
by hand, here are some docs.

 * [A screencast](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
   showing how to manage plugins manually using Pathogen and git submodules.
 * [The Modern Vim Config with Pathogen](http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen),
   a blog post by Tammer Saleh.

# Alternatives

Vim users have created a number of techniques to manage plugins
over the years.  If the mirror doesn't suit your needs, maybe one of
these will.

 * [vim-addon-manager](http://github.com/MarcWeber/vim-addon-manager)
   is a package manager written 100% in VimL.
 * [Vimana](http://github.com/c9s/Vimana) is a Perl-based package manager.
 * [vim-nicktears](http://github.com/carllerche/vim-nicktears) manages
   Vim plugins using [Rubygems](http://rubygems.org/).
 * [Vim Script Updater](http://www.vim.org/scripts/script.php?script_id=3135)
   manages plugins using Python.
 * [GetLatestVimScripts](http://www.vim.org/scripts/script.php?script_id=642)
   a 100% VimL solution to keep plugins updated.

Also see the [question on StackOverflow](http://stackoverflow.com/questions/2458398/package-management-for-vim).

[Pathogen]:http://github.com/tpope/vim-pathogen

