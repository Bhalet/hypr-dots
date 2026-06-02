DEFAULTS = DEFAULTS or {}

local editor = os.getenv("EDITOR")
if editor == nil or editor == "" then
  editor = "nano"
end

local visual = os.getenv("VISUAL")
if visual == nil then
  visual = ""
end

-- Make Changes Here
DEFAULTS.edit = "vim"
DEFAULTS.visual = "vim"
DEFAULTS.term = "kitty"
DEFAULTS.files = "nemo"
DEFAULTS.mail = "thunar"
DEFAULTS.search_engine = "https://www.google.com/search?q={}"


hl.env("EDITOR", DEFAULTS.edit)

-- Optional user overrides live outside the pristine lua/ source tree.
do
  local configHome = os.getenv("XDG_CONFIG_HOME") or ((os.getenv("HOME") or "") .. "/.config")
  local userDEFAULTS = configHome .. "/hypr/UserConfigs/user_defaults.lua"
  local ok, err = pcall(dofile, userDEFAULTS)
  if not ok and err and tostring(err):find("No such file or directory", 1, true) == nil then
    print("[WARN] Unable to load user defaults file " .. userDEFAULTS .. ": " .. tostring(err))
  end
end