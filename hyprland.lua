-- Sourcing external config files


$configs = $HOME/.config/hypr/configs -- Default Configs directory path

require("$configs/Keybinds.conf") -- Pre-configured keybinds

------ Start of tinkering 
$UserConfigs = $HOME/.config/hypr/UserConfigs -- User Configs directory path

require("$UserConfigs/Startup_Apps.conf") -- put your start-up packages on this file

require("$UserConfigs/ENVariables.conf") -- Environment variables to load

--require("$UserConfigs/Monitors.conf") -- Its all about your monitor config (old dots) will remove on push to main
--require("$UserConfigs/WorkspaceRules.conf") -- Hyprland workspaces (old dots) will remove on push to main

require("$UserConfigs/Laptops.conf") -- For laptop related

require("$UserConfigs/LaptopDisplay.conf") -- Laptop display related. You need to read the comment on this file

require("$UserConfigs/WindowRules.conf") -- all about Hyprland Window Rules and Layer Rules

require("$UserConfigs/UserDecorations.conf") -- Decorations config file

require("$UserConfigs/UserAnimations.conf") -- Animation config file

require("$UserConfigs/UserKeybinds.conf") -- Put your own keybinds here

require("$UserConfigs/UserSettings.conf") -- Main Hyprland Settings.

require("$UserConfigs/01-UserDefaults.conf") -- settings for User defaults apps

-- nwg-displays
require("$HOME/.config/hypr/monitors.conf")
require("$HOME/.config/hypr/workspaces.conf")
-- = Source for hyprviz
reqire("./hyprviz.conf")