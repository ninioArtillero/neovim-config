-- Tidal Cycles
--
-- For UNIX-based operating system:
-- To install complementary scripts `tidal` and `tidalvim` (the later requieres tmux) 
-- run `make install` from the plugin repository. 
-- This creates symlinks on `/usr/local/bin`.
--
-- If using folke/lazy.nvim 
-- cd ~/.local/share/nvim/lazy/vim-tidal && make install
-- and similarly to uninstall
-- cd ~/.local/share/nvim/lazy/vim-tidal && make uninstall
-- Documentation:
-- cat ~/.local/share/nvim/lazy/vim-tidal/README.md
return {
  'tidalcycles/vim-tidal',
  config = function ()
    vim.cmd([[ let g:tidal_target = "terminal" ]])
    vim.cmd([[ let g:tidal_sc_boot_fallback = "$HOME/Proyectos/Tidal/superdirt_startup.scd" ]])
    vim.cmd([[ let g:tidal_sc_enable = 1 ]])
    vim.cmd([[ let g:tidal_flash_duration = "200" ]])
    vim.cmd([[ let g:tidal_paste_file = "/tmp/tidal_paste_file.txt" ]])
  end,
}
