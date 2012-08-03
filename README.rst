vim-diffoffer
=============

Quick and easy management of diff settings for the current buffer.

Configuration
=============

Map the diff toggle command to a key sequence by adding the following to your ``.vimrc``::

    map <leader>dod :DiffofferToggleDiff<CR>

To toggle diff filler (see ``'diffopt'``) as well, use::

    map <leader>dof :DiffofferToggleFiller<CR>

Not really a feature of this plugin, but a useful mapping to go along with the others is::

    map <leader>dou :diffupdate<CR>
