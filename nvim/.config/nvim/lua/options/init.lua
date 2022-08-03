local opt = vim.opt -- to set options

opt.list = true                     -- Show some invisible characters
opt.number = true                   -- Show line numbers
opt.relativenumber = true           -- Relative line numbers
opt.scrolloff = 4                   -- Lines of context
opt.shiftround = true               -- Round indent
opt.shiftwidth = 2                  -- Size of an indent
opt.sidescrolloff = 8               -- Columns of context
opt.smartcase = true                -- Do not ignore case with capitals
opt.smartindent = true              -- Insert indents automatically
opt.wrap = true                     -- Enable line wrap

-- https://oroques.dev/2020/01/07/neovim-05.html
-- https://github.com/nanotee/nvim-lua-guide
-- https://github.com/svermeulen/vimpeccable
