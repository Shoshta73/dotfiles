-- put user settings here
-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

------------------------------ Themes ----------------------------------------

core.reload_module("colors.gruvbox_dark")
-- light theme:
-- core.reload_module("colors.gruvbox_light")

--------------------------- Key bindings -------------------------------------

-- key binding:
keymap.add { ["ctrl+escape"] = "core:quit" }

-- pass 'true' for second parameter to overwrite an existing binding
keymap.add({ ["ctrl+pagedown"] = "root:switch-to-previous-tab" }, true)
keymap.add({ ["ctrl+pageup"] = "root:switch-to-next-tab" }, true)

------------------------------- Fonts ----------------------------------------

style.font = renderer.font.load(USERDIR .. "/fonts/IosevkaNerdFont-Regular.ttf", 8 * SCALE)
style.code_font = renderer.font.load(USERDIR .. "/fonts/JetBrainsMonoNerdFont-Regular.ttf", 8 * SCALE)

------------------------------ Plugins ----------------------------------------

--autosave
local autosave = require "plugins.autosave"
local as_olf = require "plugins.autosaveonfocuslost"

-- tetris
local tetris = require "plugins.tetris"

-- langugaes
local cmake = require "plugins.language_cmake"
local java = require "plugins.language_java"
local jsx = require "plugins.language_jsx"
local tsx = require "plugins.language_tsx"
local rust = require "plugins.language_rust"
local zig = require "plugins.language_zig"

--lsp
local lsp_snippets = require "plugins.lsp_snippets"
local lspconfig = require "plugins.lsp.config"

-- Activate clangd without overwriting any settings for c/c++
-- autocompletion (requires a compile_commands.json file on
-- your project directory usually generated by build tools
-- like cmake or meson)
-- See: https://clangd.llvm.org/installation.html#project-setup
lspconfig.clangd.setup()

-- Activate gopls
lspconfig.gopls.setup()

-- -- Activate the lua-language-server, set the server command and
-- -- modify the default settings in order to disable diagnostics.
-- lspconfig.sumneko_lua.setup {
--   command = {
--     "/path/to/lua-language-server/bin/Linux/lua-language-server",
--     "-E",
--     "/path/to/lua-language-server/main.lua"
--   },
--   settings = {
--     Lua = {
--       diagnostics = {
--         enable = false
--       }
--     }
--   }
-- }
-- -- Activate intelephense and pass additional initializationOptions
-- -- like the license key and storage path.
-- lspconfig.intelephense.setup {
--   init_options = {
--     licenceKey = "MYLICENSEKEY",
--     storagePath = "/home/myuser/.cache/intelephense"
--   }
-- }

---------------------------- Miscellaneous -------------------------------------

-- modify list of files to ignore when indexing the project:
-- config.ignore_files = {
--   -- folders
--   "^%.svn/",        "^%.git/",   "^%.hg/",        "^CVS/", "^%.Trash/", "^%.Trash%-.*/",
--   "^node_modules/", "^%.cache/", "^__pycache__/",
--   -- files
--   "%.pyc$",         "%.pyo$",       "%.exe$",        "%.dll$",   "%.obj$", "%.o$",
--   "%.a$",           "%.lib$",       "%.so$",         "%.dylib$", "%.ncb$", "%.sdf$",
--   "%.suo$",         "%.pdb$",       "%.idb$",        "%.class$", "%.psd$", "%.db$",
--   "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
-- }

