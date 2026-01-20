-- https://github.com/Saghen/blink.cmp

local M = {}

---@param spec GhTheme.Spec
---@param config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, config, _opts)
  local has_ts = config.modules.treesitter == true
    or type(config.modules.treesitter) == 'table' and config.modules.treesitter.enable
  local syn = spec.syntax

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    BlinkCmpMenu              = { fg = spec.fg1, bg = spec.bg2 },
    BlinkCmpMenuBorder        = { link = 'FloatBorder' },
    BlinkCmpMenuSelection     = { bg = spec.sel0 },
    BlinkCmpScrollBarThumb    = { fg = spec.fg1, bg = spec.bg4 },
    BlinkCmpScrollBarGutter   = { fg = spec.fg1, bg = spec.bg2 },
        
    BlinkCmpDoc               = { fg = spec.fg1, bg = spec.bg0 },
    BlinkCmpDocBorder         = { link = 'FloatBorder' },
    BlinkCmpDocSeparator      = { link = 'Constant' },
    BlinkCmpDocCursorLine     = { link = 'Visual' },

    BlinkCmpSignatureHelp     = { fg = spec.fg1, bg = spec.bg0 },
    BlinkCmpSignatureHelpBorder = { link = 'FloatBorder' },
    BlinkCmpSignatureHelpActiveParameter = { link = 'LspSignatureActiveParameter' },

    BlinkCmpGhostText         = { link = 'NonText' },

    BlinkCmpSource            = { link = 'Comment' },

    BlinkCmpLabel             = { fg = spec.fg1, },
    
    BlinkCmpLabelDeprecated   = { fg = syn.dep, style = 'strikethrough' },
    BlinkCmpLabelMatch        = { fg = syn.func, },
    BlinkCmpLabelDetail       = { link = 'Comment' },
    BlinkCmpLabelDescription  = { link = 'Comment' },

    BlinkCmpKind              = { fg = spec.fg2, },
    BlinkCmpKindKeyword       = { link = 'Keyword' },
    BlinkCmpKindVariable      = { fg = syn.variable },
    BlinkCmpKindConstant      = { link = 'Constant' },
    BlinkCmpKindReference     = { link = 'Keyword' },
    BlinkCmpKindValue         = { link = 'Keyword' },

    BlinkCmpKindFunction      = { link = 'Function' },
    BlinkCmpKindMethod        = { link = 'Function' },
    BlinkCmpKindConstructor   = { link = 'Function' },
    BlinkCmpKindInterface     = { link = 'Type' },
    BlinkCmpKindEvent         = { link = 'Type' },
    BlinkCmpKindEnum          = { link = 'Type' },
    BlinkCmpKindUnit          = { link = 'Constant' },
    BlinkCmpKindClass         = { link = 'Type' },
    BlinkCmpKindStruct        = { link = 'Type' },

    BlinkCmpKindModule        = { link = 'Include' },
    BlinkCmpKindProperty      = { fg = syn.field },
    BlinkCmpKindField         = { fg = syn.field },
    BlinkCmpKindTypeParameter = { fg = syn.field },
    BlinkCmpKindEnumMember    = { fg = syn.field },
    BlinkCmpKindOperator      = { link = 'Operator' },
    BlinkCmpKindSnippet       = { fg = spec.fg2 },
  }
end

return M
