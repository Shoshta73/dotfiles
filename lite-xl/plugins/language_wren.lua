-- mod-version:3
local syntax = require "core.syntax"

syntax.add {
  name = "Wren",
  files = { "%.wren$" },
  comment = "//",
  block_comment = {"/*", "*/"},
  patterns = {
    { pattern = "//.-\n",                                 type = "comment"  },
    { pattern = { "/%*", "%*/" },                         type = "comment"  },
    { pattern = { '"', '"', '\\' },                       type = "string"   },
    { pattern = "%d+%.%d+[Ee]%d+",                        type = "number"   },
    { pattern = "%d+%.%d+",                               type = "number"   },
    { pattern = "%d+[Ee]%d+",                             type = "number"   },
    { pattern = "0x%x+",                                  type = "number"   },
    { pattern = "%d+",                                    type = "number"   },
    { pattern = "%.%.%.?",                                type = "operator" },
    { pattern = "[<>!=]=",                                type = "operator" },
    { pattern = "|[^|]+|%s+",                             type = "string"   },
    { pattern = "[%+%-=/%*%^%%<>!~|&?:]",                 type = "operator" },
    { pattern = "_[%w_]*",                                type = "keyword2" },
    { regex   = [[\bFn.new\b]],                           type = "literal"  },
    { pattern = "#!?%a[%w_]*%s*%(?[%w _,\"=]*%)?",        type = "comment"  },
    { pattern = "%a[%w_]*()%s+()is()%s+%a[%w_]*%s*%f[{]", type = {"function", "normal", "keyword", "normal"}},
    { pattern = "%a[%w_]*%s*=()%s*%f[(]",                 type = {"function", "normal"} },
    { pattern = "%a[%w_]*()%s*%f[({]",                    type = {"function", "normal"} },
    { pattern = "%a[%w_]+",                               type = "symbol"   },
  },
  symbols = {
    ["break"]     = "keyword",
    ["class"]     = "keyword",
    ["construct"] = "keyword",
    ["continue"]  = "keyword",
    ["else"]      = "keyword",
    ["for"]       = "keyword",
    ["foreign"]   = "keyword",
    ["if"]        = "keyword",
    ["import"]    = "keyword",
    ["in"]        = "keyword",
    ["is"]        = "keyword",
    ["return"]    = "keyword",
    ["static"]    = "keyword",
    ["super"]     = "keyword",
    ["var"]       = "keyword",
    ["while"]     = "keyword",
    ["this"]      = "keyword2",
    ["true"]      = "literal",
    ["false"]     = "literal",
    ["null"]      = "literal",
  },
}