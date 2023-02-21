require('base')
require('highlights')
require('maps')
require('plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
	require('platform.macos')
end
if is_win then
	require('platform.windows')
end
if is_wsl then
	require('platform.wsl')
end
