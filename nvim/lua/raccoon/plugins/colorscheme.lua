-- Rainy Night Monochrome

local p = {
    bg     = '#080a0a',
    fg     = '#c5c9c8',
    cursor = '#aeb7b3',

    black        = '#101313',
    bright_black = '#45504c',

    red        = '#25282a',
    bright_red = '#806f75',

    green        = '#303833',
    bright_green = '#718276',

    yellow        = '#3d423e',
    bright_yellow = '#8a8b72',

    blue        = '#3a4147',
    bright_blue = '#6e7f8a',

    magenta        = '#48454c',
    bright_magenta = '#7b7180',

    cyan        = '#465354',
    bright_cyan = '#788b8a',

    white        = '#b9bfbd',
    bright_white = '#a5aaa5',
}

vim.o.background = 'dark'
vim.o.termguicolors = true
vim.cmd('hi clear')
vim.g.colors_name = 'rainy-night-monochrome'

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI
hl('Normal',        { fg = p.fg, bg = p.bg })
hl('NormalFloat',   { fg = p.fg, bg = p.black })
hl('FloatBorder',   { fg = p.bright_black, bg = p.black })
hl('Cursor',        { fg = p.bg, bg = p.cursor })
hl('CursorLine',    { bg = p.black })
hl('CursorLineNr',  { fg = p.bright_white, bold = true })
hl('LineNr',        { fg = p.bright_black })
hl('SignColumn',    { bg = p.bg })
hl('ColorColumn',   { bg = p.black })
hl('Visual',        { bg = p.blue })
hl('Search',        { fg = p.bg, bg = p.bright_yellow })
hl('IncSearch',     { fg = p.bg, bg = p.yellow })
hl('Pmenu',         { fg = p.fg, bg = p.black })
hl('PmenuSel',      { fg = p.bg, bg = p.bright_cyan })
hl('PmenuSbar',     { bg = p.black })
hl('PmenuThumb',    { bg = p.bright_black })
hl('StatusLine',    { fg = p.fg, bg = p.black })
hl('StatusLineNC',  { fg = p.bright_black, bg = p.black })
hl('WinSeparator',  { fg = p.bright_black })
hl('TabLine',       { fg = p.bright_black, bg = p.black })
hl('TabLineSel',    { fg = p.fg, bg = p.bg })
hl('TabLineFill',   { bg = p.black })
hl('MatchParen',    { fg = p.bright_yellow, bold = true })
hl('NonText',       { fg = p.bright_black })
hl('Whitespace',    { fg = p.bright_black })
hl('EndOfBuffer',   { fg = p.bg })
hl('Directory',     { fg = p.bright_blue })

-- Syntax
hl('Comment',     { fg = p.bright_black, italic = true })
hl('String',      { fg = p.bright_green })
hl('Character',   { fg = p.bright_green })
hl('Number',      { fg = p.bright_yellow })
hl('Boolean',     { fg = p.bright_yellow })
hl('Float',       { fg = p.bright_yellow })
hl('Constant',    { fg = p.bright_yellow })
hl('Identifier',  { fg = p.fg })
hl('Function',    { fg = p.bright_cyan })
hl('Statement',   { fg = p.bright_blue })
hl('Conditional', { fg = p.bright_blue })
hl('Repeat',      { fg = p.bright_blue })
hl('Keyword',     { fg = p.bright_blue, italic = true })
hl('Operator',    { fg = p.fg })
hl('PreProc',     { fg = p.bright_magenta })
hl('Include',     { fg = p.bright_magenta })
hl('Type',        { fg = p.bright_cyan })
hl('StorageClass',{ fg = p.bright_cyan })
hl('Structure',   { fg = p.bright_cyan })
hl('Special',     { fg = p.bright_white })
hl('Underlined',  { fg = p.bright_blue, underline = true })
hl('Error',       { fg = p.bright_red, bold = true })
hl('Todo',        { fg = p.bg, bg = p.bright_yellow, bold = true })

-- Treesitter
hl('@variable',         { fg = p.fg })
hl('@variable.builtin', { fg = p.bright_red })
hl('@parameter',        { fg = p.fg, italic = true })
hl('@punctuation',      { fg = p.bright_white })
hl('@constructor',      { fg = p.bright_cyan })
hl('@tag',               { fg = p.bright_blue })
hl('@tag.attribute',     { fg = p.bright_cyan })

-- LSP diagnostics
hl('DiagnosticError', { fg = p.bright_red })
hl('DiagnosticWarn',  { fg = p.bright_yellow })
hl('DiagnosticInfo',  { fg = p.bright_blue })
hl('DiagnosticHint',  { fg = p.bright_cyan })
hl('DiagnosticUnderlineError', { undercurl = true, sp = p.bright_red })
hl('DiagnosticUnderlineWarn',  { undercurl = true, sp = p.bright_yellow })
hl('DiagnosticUnderlineInfo',  { undercurl = true, sp = p.bright_blue })
hl('DiagnosticUnderlineHint',  { undercurl = true, sp = p.bright_cyan })

-- Diff
hl('DiffAdd',    { fg = p.bright_green, bg = p.black })
hl('DiffChange', { fg = p.bright_yellow, bg = p.black })
hl('DiffDelete', { fg = p.bright_red, bg = p.black })
hl('DiffText',   { fg = p.bright_cyan, bg = p.black })

-- nvim-tree
hl('NvimTreeNormal',           { fg = p.fg, bg = p.bg })
hl('NvimTreeFolderIcon',       { fg = p.bright_blue })
hl('NvimTreeFolderName',       { fg = p.bright_blue })
hl('NvimTreeOpenedFolderName', { fg = p.bright_blue, bold = true })
hl('NvimTreeRootFolder',       { fg = p.bright_cyan, bold = true })
hl('NvimTreeIndentMarker',     { fg = p.bright_black })
hl('NvimTreeGitDirty',         { fg = p.bright_yellow })
hl('NvimTreeGitNew',           { fg = p.bright_green })
hl('NvimTreeGitDeleted',       { fg = p.bright_red })

-- bufferline
hl('BufferLineIndicatorSelected', { fg = p.bright_cyan })
hl('BufferLineFill',              { bg = p.bg })

-- blink.cmp
hl('BlinkCmpMenu',          { fg = p.fg, bg = p.black })
hl('BlinkCmpMenuBorder',    { fg = p.bright_black, bg = p.black })
hl('BlinkCmpMenuSelection', { fg = p.bg, bg = p.bright_cyan })
hl('BlinkCmpDoc',           { fg = p.fg, bg = p.black })
hl('BlinkCmpDocBorder',     { fg = p.bright_black, bg = p.black })
