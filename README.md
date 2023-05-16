# workingterm.nvim

## Description

This small plugin allows you to open up Neovim's terminal emulator in the current working directory rather than the root directory.

### Installing

Vim-plug \
```Plug 'jacobsonryan/workingterm.nvim'```

Packer \
```use 'jacobsonryan/workingterm.nvim'```

## Setup
```
require('workingterm').setup({
  -- Set a key to switch from Terminal Mode to Normal Mode
  -- Default mapping is <C-/><C-n>
  key = '<Esc>'
})
```

## Usage
Use ```:OpenWorkingTerm<``` to open the termihal in a new tab.
