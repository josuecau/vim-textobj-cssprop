vim-textobj-cssprop
=======

To select css property text by vim-textobj.

This plugin depends on the [vim-textobj-user](https://github.com/kana/vim-textobj-user).
So you need to install it in order to use this plugin.

Key mappings
======
`aç` To select css property with `propname :` and `;`.

`iç` To select css property without `propname :` and `;`.

You can define your own mapping (e.g. `ac` / `ic`) by adding this in your `.vimrc`:

    let g:textobj_cssprop_no_default_key_mappings=1
    xmap ac <Plug>(textobj-cssprop-a)
    omap ac <Plug>(textobj-cssprop-a)
    xmap ic <Plug>(textobj-cssprop-i)
    omap ic <Plug>(textobj-cssprop-i)

Features added in this fork
=======

- Also works with Less and Sass (SCSS)
- Deals with specific cases:
    * Minified CSS (without white spaces)
    * No extra semi-colon at the end of ruleset
    * Properties like `filter: progid:DXImageTransform.…`
- New default mapping to avoid conflict with vim-textobj-comment
