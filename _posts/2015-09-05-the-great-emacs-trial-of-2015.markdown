---
layout: post
title: "The Great Emacs Trial of 2015"
date: 2015-09-05T19:47:54-04:00
---

I recently swallowed my pride and gave Emacs a try, in hopes of collecting Vim-pirical[^1] evidence that I'd chosen the correct editor for myself initially. 
Though I didn't intend to write about the experience, I've been told that some of my insights as a heavy Vim user and Emacs newbie are interesting.
As well, the trial wasn't the black and white case I'd half hoped for, which means that my little experiment may be of use to some others.
At least, that's the hope.
<!--more-->

# The Emacsculate[^2] Conception

I associate with a fairly large number of Emacs users[^3], some of whom are converts from Vim.
Personally, I'm a Neovim[^4] user, but I'm frequently told that Emacs is worth a try - in particular, Emacs with `evil-mode`.
My usual counters are nothing especially original - Emacs is a great OS with a terrible editor, modal editing is much more powerful, etc.

Recently, however, one of my Emacs-using friends remarked that Vim is a "terrible implementation of a beautiful idea".
Based upon what I know about the Vim codebase[^5], Vim's lack of asynchonicity, Vimscript, etc. and my appreciation for the power of composable, modal editing, I found this to be a surprisingly compelling argument.

In addition, [evil-mode](http://wikemacs.org/wiki/Evil) has become a fairly full-featured replica of Vim's functionality, and I was wooed by promises of `package-install`, Elisp for configuration, and a collection of helpful blog posts on switching to Emacs from Vim[^6].

# $ emacs ~/.emacs

Once convinced to give emacs a chance, I proceeded to get it installed and set about replicating my Vim setup (in terms of Vim keybindings and certain plugins I consider essential - specifically [ctrlP](https://github.com/kien/ctrlp.vim), [syntastic](https://github.com/scrooloose/syntastic), [YouCompleteMe](https://github.com/Valloric/YouCompleteMe), and various linters/semantic completers for these).

Most of this was pretty straightforward. 
`evil-mode` installs with a single command and is enabled globally with a line of Elisp, and it's a similar case for adding Vim-like tabs, line numbers, and scrolling[^7].
`helm` is a pretty fantastic `ctrlP` analogue, and arguably more powerful[^8]

[^1]: The puns only get worse.
[^2]: This is a pun, not a typo.
[^3]: Gross, I know.
[^4]: If you don't use it, do. If you haven't heard of it, check it out: [neovim.io](http://neovim.io/)
[^5]: Based on [this excellent post](http://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/), [the source itself](https://github.com/vim/vim), and [general discussion](https://news.ycombinator.com/item?id=7287668).
[^6]: Namely [this post](http://blog.jakubarnold.cz/2014/06/23/evil-mode-how-to-switch-from-vim-to-emacs.html), the famous ["Emacs as My \<Leader\>"](https://bling.github.io/blog/2013/10/27/emacs-as-my-leader-vim-survival-guide/) post, and [this](http://juanjoalvarez.net/es/detail/2014/sep/19/vim-emacsevil-chaotic-migration-guide/) really good migration guide.
[^7]: Though I was surprised to find that this wasn't built in by default, particularly given stereotypes about emacs' "...and the backup kitchen sink" philosophy.
[^8]: That said, I think a lot of the added power comes from the fact that emacs