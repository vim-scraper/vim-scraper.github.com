---
layout: new_news
title: Branches in Some Plugins
category: news
---

Script 790, [python.vim--Vasiliev](http://github.com/vim-scripts/python.vim--Vasiliev)
has been regenerated.  It actually contained two different scripts -- one for python2
and one for python3, flip-flopping between them at every commit.

This has been worked around by placing the python3 script into
[its own branch](http://github.com/vim-scripts/python.vim--Vasiliev/tree/python3).
If you use script 790, delete your local copy and re-clone.  It should
work fine now.

Thanks go again to [Jacobo de Vera](http://github.com/jdevera) for finding this.

