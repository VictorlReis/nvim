if vim.g.vscode then
    vim.g.mapleader = " "
    vim.opt.clipboard = ""
    vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard
    --search ignoring case
    vim.opt.ignorecase = true
    vim.opt.smartcase = true -- disable ignorecase option if search contains upper case characters

    --open config Config config
    vim.cmd("nmap <leader>c :e ~/.config/nvim/init.lua<cr>")

    --clear search highlighting
    vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

    --skip folds
    vim.cmd('nmap j gj')
    vim.cmd('nmap k gk')
else
    require("config.lazy")
end


--go next tab:
-- gt
-- go previous tab:
-- gT
