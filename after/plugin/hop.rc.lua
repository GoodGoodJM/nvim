local status, hop = pcall(require, "hop")
if (not status) then return end

hop.setup {
  keys = 'etovxqpdygfblzhckisuran'
}

vim.keymap.set('n', '\\s', function()
  hop.hint_char1()
end)
