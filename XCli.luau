local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "XCli Main Window",
   Icon = turntable, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "XCli Main Loader",
   LoadingSubtitle = "by toxic",
   ShowText = "XCli", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "Q", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   -- ScriptID = "sid_xxxxxxxxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "XCli § Key System",
      Subtitle = "Enter the key to get access!",
      Note = "Enter our pastebin", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/SyCVj7VA"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

-- Tabs
local DashboardTab = Window:CreateTab("Dashboard", "layout-dashboard")
local ScriptsTab = Window:CreateTab("Scripts", "file-terminal")
local LoaderTab = Window:CreateTab("Loader", "loader")
local SettingsTab = Window:CreateTab("Settings", "user-round-cog")

-- Loaders
local Z3USButton = LoaderTab:CreateButton({
   Name = "Load Z3US (For Rivals, etc)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/blackowl1231/Z3US/refs/heads/main/main.lua"))()
   end,
})

local VoidwareButton = LoaderTab:CreateButton({
   Name = "Load Voidware (For 99 Nights In The Forest)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()
   end,
})

local IYButton = LoaderTab:CreateButton({
   Name = "Load IY (All Games)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local DevpackButton = LoaderTab:CreateButton({
   Name = "Load my dev pack!",
   Callback = function()
   loadstring(game:HttpGet("https://github.com/notpoiu/cobalt/releases/latest/download/Cobalt.luau"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vezise/2026/main/Vez/VexExplorer/VEXExplorer.lua"))()
   end,
})

-- Scripts

local ScriptLabel = ScriptsTab:CreateLabel("Error loading scripts!", "octagon-alert")

-- Dashboard
local DashboardLabel = DashboardTab:CreateLabel("About us!", "clipboard")
local AboutLabel = DashboardTab:CreateLabel("In development!", "octagon-alert")
-- Settings
local SettingsLabel = SettingsTab:CreateLabel("Cant show! Only for premium users!", "octagon-x")
