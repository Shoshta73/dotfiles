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
keymap.add({ ["ctrl+pageup"] = "root:switch-to-previous-tab" }, true)
keymap.add({ ["ctrl+pagedown"] = "root:switch-to-next-tab" }, true)

------------------------------- Fonts ----------------------------------------

style.font = renderer.font.load(USERDIR .. "/fonts/IosevkaNerdFont-Regular.ttf", 8 * SCALE)
style.code_font = renderer.font.load(USERDIR .. "/fonts/JetBrainsMonoNerdFont-Regular.ttf", 8 * SCALE)

------------------------------ Plugins ----------------------------------------

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

