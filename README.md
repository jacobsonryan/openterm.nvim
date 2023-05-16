# workingterm.nvim

## Description

This small plugin allows you to open up Neovim's terminal emulator in the current working directory rather than the root directory.

### Installing

[vim-plug](https://github.com/junegunn/vim-plug) 
```lua
Plug 'jacobsonryan/workingterm.nvim'
```

[packer.nvim](https://github.com/wbthomason/packer.nvim) 
```lua
use 'jacobsonryan/workingterm.nvim'
```

## Setup
```lua
require('workingterm').setup({
  -- Set a key to switch from Terminal Mode to Normal Mode
  -- Default mapping is <C-/><C-n>
  key = '<Esc>'
})
```

## Usage
```lua
local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-n>", ":OpenWorkingTerm<cr>", { silent = true })
```
