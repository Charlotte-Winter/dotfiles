vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "chawi"
local hl = vim.api.nvim_set_hl

local bg, bg_dark, bg_float, fg, fg_dark
local comment, keyword, function_, string_, number, type_, constant, operator, variable, param
local selection, cursor, line_num, line_cur
local error, warning, info, hint

if vim.o.background == "dark" then
  bg = "None"
  bg_dark = "#0f131a"
  bg_float = "#181f2a"
  fg = "#e2e9f5"
  fg_dark = "#475569"

  comment = "#64748b"
  keyword = "#0284c7"
  function_ = "#0d9488"
  string_ = "#16a34a"
  number = "#6366f1"
  type_ = "#3b82f6"
  constant = "#4f46e5"
  operator = "#0ea5e9"
  variable = "#0f172a"
  param = "#7c3aed"

  selection = "#bae6fd"
  cursor = "#0369a1"
  line_num = "#94a3b8"
  line_cur = "#0ea5e9"

  error = "#dc2626"
  warning = "#d97706"
  info = "#2563eb"
  hint = "#059669"
else
  bg = "None"
  bg_dark = "#f0f4f8"
  bg_float = "#e5ebf1"
  fg = "#1e293b"
  fg_dark = "#7e8e9f"

  comment = "#44566c"
  keyword = "#6cb6eb"
  function_ = "#56cbd6"
  string_ = "#89ca9d"
  number = "#a6b5f7"
  type_ = "#8baac9"
  constant = "#b9cde3"
  operator = "#7da9c7"
  variable = "#d5e1f2"
  param = "#b3a3db"

  selection = "#223247"
  cursor = "#84c1d9"
  line_num = "#394659"
  line_cur = "#84c1d9"

  error = "#e05f5f"
  warning = "#e0a35f"
  info = "#5faae0"
  hint = "#49cca3"
end

hl(0, "Normal",         { fg = fg, bg = bg })
hl(0, "NormalFloat",    { fg = fg, bg = bg_float })
hl(0, "FloatBorder",    { fg = comment, bg = bg_float })
hl(0, "ColorColumn",    { bg = bg_dark })
hl(0, "Cursor",         { fg = bg, bg = cursor })
hl(0, "CursorLine",     { bg = "#292e42" })
hl(0, "CursorColumn",   { bg = "#292e42" })
hl(0, "LineNr",         { fg = line_num })
hl(0, "CursorLineNr",   { fg = line_cur, bold = true })
hl(0, "Visual",         { bg = selection })
hl(0, "VisualNOS",      { bg = selection })
hl(0, "Search",         { fg = bg, bg = constant })
hl(0, "IncSearch",      { fg = bg, bg = line_cur })
hl(0, "MatchParen",     { fg = line_cur, bold = true, underline = true })
hl(0, "Question",       { fg = info })
hl(0, "MoreMsg",        { fg = info })
hl(0, "ErrorMsg",       { fg = error, bold = true })
hl(0, "WarningMsg",     { fg = warning })
hl(0, "Pmenu",          { fg = fg, bg = bg_dark })
hl(0, "PmenuSel",       { fg = bg, bg = function_ })
hl(0, "PmenuSbar",      { bg = bg_dark })
hl(0, "PmenuThumb",     { bg = comment })
hl(0, "StatusLine",     { fg = fg, bg = bg_dark })
hl(0, "StatusLineNC",   { fg = fg_dark, bg = bg_dark })
hl(0, "TabLine",        { fg = fg_dark, bg = bg_dark })
hl(0, "TabLineFill",    { bg = bg_dark })
hl(0, "TabLineSel",     { fg = fg, bg = bg, bold = true })
hl(0, "VertSplit",      { fg = bg_dark, bg = bg })
hl(0, "WinSeparator",   { fg = "#3b4261", bold = true })
hl(0, "SignColumn",     { bg = bg })
hl(0, "Folded",         { fg = comment, bg = bg_drk })
hl(0, "FoldColumn",     { fg = comment, bg = bg })
hl(0, "Title",          { fg = function_, bold = true })
hl(0, "SpecialKey",     { fg = comment })
hl(0, "NonText",        { fg = comment })
hl(0, "Directory",      { fg = function_ })

hl(0, "Comment",        { fg = comment, italic = true })
hl(0, "Constant",       { fg = constant })
hl(0, "String",         { fg = string_ })
hl(0, "Character",      { fg = string_ })
hl(0, "Number",         { fg = number })
hl(0, "Boolean",        { fg = number, bold = true })
hl(0, "Float",          { fg = number })
hl(0, "Identifier",     { fg = variable })
hl(0, "Function",       { fg = function_ })
hl(0, "Statement",      { fg = keyword })
hl(0, "Conditional",    { fg = keyword, italic = true })
hl(0, "Repeat",         { fg = keyword, italic = true })
hl(0, "Label",          { fg = keyword })
hl(0, "Operator",       { fg = operator })
hl(0, "Keyword",        { fg = keyword, bold = true })
hl(0, "Exception",      { fg = error })
hl(0, "PreProc",        { fg = type_ })
hl(0, "Include",        { fg = keyword })
hl(0, "Define",         { fg = keyword })
hl(0, "Macro",          { fg = type_ })
hl(0, "PreCondit",      { fg = keyword })
hl(0, "Type",           { fg = type_ })
hl(0, "StorageClass",   { fg = keyword })
hl(0, "Structure",      { fg = type_, bold = true })
hl(0, "TypeDef",        { fg = type_ })
hl(0, "Special",        { fg = operator })
hl(0, "SpecialChar",    { fg = number })
hl(0, "Tag",            { fg = keyword })
hl(0, "Delimiter",      { fg = fg })
hl(0, "SpecialComment", { fg = comment, bold = true })
hl(0, "Debug",          { fg = warning })
hl(0, "Underlined",     { underline = true })
hl(0, "Ignore",         { fg = bg })
hl(0, "Error",          { fg = error, undercurl = true })
hl(0, "Todo",           { fg = bg, bg = warning, bold = true })

hl(0, "@variable",            { fg = variable })
hl(0, "@variable.builtin",    { fg = error, italic = true })
hl(0, "@variable.parameter",  { fg = param })
hl(0, "@variable.member",     { fg = variable })
hl(0, "@property",            { fg = variable })
hl(0, "@constant",            { fg = constant })
hl(0, "@constant.builtin",    { fg = number, bold = true })
hl(0, "@constant.macro",      { fg = type_ })
hl(0, "@module",              { fg = type_ })
hl(0, "@label",               { fg = keyword })
hl(0, "@string",              { fg = string_ })
hl(0, "@string.documentation",{ fg = comment })
hl(0, "@string.regexp",       { fg = number })
hl(0, "@string.escape",       { fg = number, bold = true })
hl(0, "@character",           { fg = string_ })
hl(0, "@number",              { fg = number })
hl(0, "@number.float",        { fg = number })
hl(0, "@type",                { fg = type_ })
hl(0, "@type.builtin",        { fg = type_, italic = true })
hl(0, "@type.definition",     { fg = type_ })
hl(0, "@attribute",           { fg = keyword })
hl(0, "@function",            { fg = function_ })
hl(0, "@function.builtin",    { fg = function_, bold = true })
hl(0, "@function.macro",      { fg = type_ })
hl(0, "@function.method",     { fg = function_ })
hl(0, "@keyword",             { fg = keyword, bold = true })
hl(0, "@keyword.coroutine",   { fg = keyword })
hl(0, "@keyword.function",    { fg = keyword, italic = true })
hl(0, "@keyword.operator",    { fg = operator })
hl(0, "@keyword.import",      { fg = keyword, bold = true })
hl(0, "@keyword.return",      { fg = keyword, italic = true })
hl(0, "@operator",            { fg = operator })
hl(0, "@punctuation.delimiter", { fg = bg_dark })
hl(0, "@punctuation.bracket", { fg = fg })
hl(0, "@comment",             { fg = comment, italic = true })
hl(0, "@tag",                 { fg = keyword })
hl(0, "@tag.attribute",       { fg = param })
hl(0, "@tag.delimiter",       { fg = operator })
hl(0, "@constructor",         { fg = type_ })

hl(0, "DiagnosticError",      { fg = error })
hl(0, "DiagnosticWarn",       { fg = warning })
hl(0, "DiagnosticInfo",       { fg = info })
hl(0, "DiagnosticHint",       { fg = hint })

hl(0, "DiagnosticsSignError", { fg = error, bg = bg })
hl(0, "DiagnosticsSignWarn",  { fg = warning, bg = "#2d2a20" })
hl(0, "DiagnosticsSignInfo",  { fg = info, bg = "#20242d" })
hl(0, "DiagnosticsSignHint",  { fg = hint, bg = "#202d2d" })

hl(0, "DiagnosticUnderLineError", { undercurl = true, sp = error })
hl(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = warning })
hl(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = info })
hl(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = hint })

hl(0, "DiagnosticVirtualTextError", { fg = error, bg = "#2d202a" })
hl(0, "DiagnosticVirtualTextWarn",  { fg = warning, bg = "#2d2a20" })
hl(0, "DiagnosticVirtualTextInfo",  { fg = info, bg = "#20242d" })
hl(0, "DiagnosticVirtualTextHint",  { fg = hint, bg = "#202d2d" })

hl(0, "LspInlayHint",             { fg = "#545aa7", bg = bg_dark, italic = true })

hl(0, "SnacksDashboardHeader",    { fg = function_, bold = true })
hl(0, "SnacksDashboardFooter",    { fg = comment, italic = true })
hl(0, "SnacksDashboardSpecial",   { fg = line_out })
hl(0, "SnacksNotifierInfo",       { fg = info, bg = bg_float })
hl(0, "SnacksNotifierWarn",       { fg = warning, bg = bg_float })
hl(0, "SnacksNotifierError",      { fg = error, bg = bg_float })

hl(0, "GitSignsAdd",              { fg = string_ })
hl(0, "GitSignsChange",           { fg = warning })
hl(0, "GitSignsDelete",           { fg = error })

hl(0, "NeoTreeNormal",            { fg = fg, bg = bg_dark })
hl(0, "NeoTreeNormallNC",         { fg = fg, bg = bg_dark })
hl(0, "NeoTreeDirectoryName",     { fg = function_ })
hl(0, "NeoTreeDirectoryIcon",     { fg = function_ })
hl(0, "NeoTreeFileName",          { fg = fg })

hl(0, "SpeelBad",                 { undercurl = true, sp = error })
hl(0, "SpellCap",                 { undercurl = true, sp = warning })
hl(0, "Spe.lLocal",               { undercurl = true, sp = info })
hl(0, "SpellRare",                { undercurl = true, sp = hint })

hl(0, "DiffAdd",                  { bg = "#2e2c30" })
hl(0, "DiffChance",               { bg = "#3e3e2e" })
hl(0, "DiffDelete",               { bg = "#3c2e2e" })
hl(0, "DiffText",                 { bg = "#4e4e3e", bold = true })

hl(0, "@diff.plus",               { fg = string_ })
hl(0, "@diff.minus",              { fg = error })
hl(0, "@diff.delta",              { fg = warning })

hl(0, "ModeMsg",                  { fg = fg, bold = true })
hl(0, "MsgArea",                  { fg = fg })
hl(0, "WildMenu",                 { fg = bg, bg = function_ })

hl(0, "Conceal",                  { fg = comment })

hl(0, "CursorLineSign",           { bg = "#292e42" })
hl(0, "CursorLineFold",           { bg = "#292e42" })

hl(0, "FloatTitle",               { fg = constant, bg = bg_float, bold = true })
hl(0, "FloatFooter",              { fg = comment, bg = bg_float })
hl(0, "FloatShadow",              { bg = "#000000", blend = 60 })

hl(0, "LspReferenceText",         { bg = "#2d3f76" })
hl(0, "LspReferenceRead",         { bg = "#2d3f76" })
hl(0, "LspReferenceWrite",        { bg = "#383576" })

hl(0, "@lsp.type.class",          { link = "@type" })
hl(0, "@lsp.type.comment",        { link = "@comment" })
hl(0, "@lsp.type.decorator",      { link = "@attribute" })
hl(0, "@lsp.type.enum",           { link = "@type" })
hl(0, "@lsp.type.enumMember",     { link = "@constant" })
hl(0, "@lsp.type.function",       { link = "@function" })
hl(0, "@lsp.type.interface",      { link = "@type" })
hl(0, "@lsp.type.macro",          { link = "@function.macro" })
hl(0, "@lsp.type.method",         { link = "@function.method" })
hl(0, "@lsp.type.namespace",      { link = "@module" })
hl(0, "@lsp.type.parameter",      { link = "@variable.parameter" })
hl(0, "@lsp.type.property",       { link = "@property" })
hl(0, "@lsp.type.struct",         { link = "@type" })
hl(0, "@lsp.type.type",           { link = "@type" })
hl(0, "@lsp.type.typeParameter",  { link = "@type.builtin" })
hl(0, "@lsp.type.variable",       { link = "@variable" })

hl(0, "EndOfBuffer",              { fg = bg })
hl(0, "Substitute",               { fg = bg, bg = yellow })
hl(0, "QuickFixLine",             { bg = selection, bold = true })
hl(0, "MsgSeparator",             { fg = comment, bg = bg_dark })



