local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- GLOBAL SOUND SETTINGS
local function PlayClickSound()
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://91741510066624"
sound.Volume = 10
sound.Parent = game:GetService("SoundService")
sound:Play()
game:GetService("Debris"):AddItem(sound, 1)
end

local function PlayExecuteSound()
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://71262389650741"
sound.Volume = 15
sound.Parent = game:GetService("SoundService")
sound:Play()
game:GetService("Debris"):AddItem(sound, 5)
end

PlayExecuteSound()

local Window = Rayfield:CreateWindow({
    Name = "👑 DÈÀTHDRÀGØÑ HUB V1 👑",
    LoadingTitle = "ROCKY V1",
    LoadingSubtitle = "BEST GNG ŌF NEW SMITH",

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "ENDLESS KA DADDY",
        FileName = "Main"
    },

    KeySystem = true,

    KeySettings = {
        Title = "DEATH DRAGON HUB",
        Subtitle = "ENTER KEY",
        Note = "KEY CHIYE TO RØÇKY PAPA SE BHEEK MANG GANG KA NHI H TO NHI H TO CH*D DALE*E BHAG JA🚩🏴‍☠️",
        FileName = "DD_Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"DEATHAURA1"}
    }
})

local TargetPlayer = nil
local BangSpeed = 1
local PhonkVolume = 5
local Toggles = {
Bang = false, MouthBang = false, Headsit = false, FrontHeadsit = false,
Orbit = false, Fling = false, Noclip = false, FlyWalk = false,
AntiVoid = false, AntiBang = false, AntiFling = false, AntiSit = false, AntiAFK = false
}

local function GetPlayer(name)
name = name:lower()
for _, p in pairs(game.Players:GetPlayers()) do
if p.Name:lower():sub(1, #name) == name or p.DisplayName:lower():sub(1, #name) == name then return p end
end
return nil
end

-- TAB 1: INFO 👑
local Tab1 = Window:CreateTab("INFO 👑", 4483362458)
Tab1:CreateLabel("MADE BY RØCKY 😎")
Tab1:CreateLabel("👑 DEATGDRAGON-FATHER ŌF NEW SMITH 💀😈")
Tab1:CreateLabel("ROBLOX ID-DD_ROCKY")
Tab1:CreateLabel("JO LE PANGA USKI MA CHODO NANGA LOL")
Tab1:CreateLabel("TOH MERE GNG WASIO AAG LAGA DO?🔥")
Tab1:CreateLabel("INSTAGRAM ID > R O C K Y")

-- TAB 2: TROLL 🌚
local Tab2 = Window:CreateTab("TROLL 🌚", 4483362458)
Tab2:CreateInput({Name = "TARGET NAME", PlaceholderText = "Enter Name", Callback = function(Text) PlayClickSound() TargetPlayer = GetPlayer(Text) end})
Tab2:CreateInput({Name = "SPEED", PlaceholderText = "Default 1", Callback = function(Text) BangSpeed = tonumber(Text) or 1 end})
Tab2:CreateButton({Name = "GOTO TARGET", Callback = function() PlayClickSound() if TargetPlayer and TargetPlayer.Character then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPlayer.Character.HumanoidRootPart.CFrame end end})
Tab2:CreateToggle({Name = "VIEW TARGET", CurrentValue = false, Callback = function(v) PlayClickSound() if v and TargetPlayer and TargetPlayer.Character then workspace.CurrentCamera.CameraSubject = TargetPlayer.Character.Humanoid else workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid end end})
Tab2:CreateToggle({Name = "BANG", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.Bang = v spawn(function() while Toggles.Bang and task.wait() do pcall(function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1.1 + math.sin(tick() * (BangSpeed * 20)) * 0.8) end) end end) end})
Tab2:CreateToggle({Name = "MOUTH BANG", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.MouthBang = v spawn(function() while Toggles.MouthBang and task.wait() do pcall(function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPlayer.Character.Head.CFrame * CFrame.new(0, 0.2, -1.2 - math.sin(tick() * (BangSpeed * 20)) * 0.8) * CFrame.Angles(0, math.pi, 0) end) end end) end})
Tab2:CreateToggle({Name = "HEADSIT", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.Headsit = v spawn(function() while Toggles.Headsit and task.wait() do pcall(function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPlayer.Character.Head.CFrame * CFrame.new(0, 0.5 + math.sin(tick() * (BangSpeed * 20)) * 0.5, 0) end) end end) end})
Tab2:CreateToggle({Name = "FRONTHEADSIT", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.FrontHeadsit = v spawn(function() while Toggles.FrontHeadsit and task.wait() do pcall(function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPlayer.Character.Head.CFrame * CFrame.new(0, 0.4, -0.2 - math.sin(tick() * (BangSpeed * 25)) * 0.5) * CFrame.Angles(0, math.pi, 0) end) end end) end})
Tab2:CreateToggle({Name = "ORBIT", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.Orbit = v spawn(function() local angle = 0 while Toggles.Orbit and task.wait() do pcall(function() angle = angle + (0.2 * BangSpeed) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, angle, 0) * CFrame.new(0, 0, 5) end) end end) end})
Tab2:CreateToggle({Name = "FLING", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.Fling = v spawn(function() while Toggles.Fling and task.wait() do pcall(function() local lp = game.Players.LocalPlayer.Character lp.HumanoidRootPart.CFrame = TargetPlayer.Character.HumanoidRootPart.CFrame lp.HumanoidRootPart.Velocity = Vector3.new(0, 8000, 0) lp.HumanoidRootPart.RotVelocity = Vector3.new(0, 15000, 0) end) end end) end})

-- TAB 3: SHIELD 🛡️
local Tab3 = Window:CreateTab("SHIELD 🛡️", 4483362458)
Tab3:CreateToggle({Name = "Anti void on off", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.AntiVoid = v spawn(function() while Toggles.AntiVoid and task.wait() do pcall(function() local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart if hrp.Position.Y < -15 then hrp.Velocity = Vector3.new(0, 0, 0) hrp.CFrame = CFrame.new(hrp.Position.X, 50, hrp.Position.Z) end end) end end) end})
Tab3:CreateToggle({Name = "Anti bang on off", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.AntiBang = v spawn(function() while Toggles.AntiBang and task.wait(0.1) do pcall(function() local char = game.Players.LocalPlayer.Character char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 1000, 0) task.wait(0.1) char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1000, 0) end) end end) end})
Tab3:CreateToggle({Name = "Anti fling on off", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.AntiFling = v spawn(function() while Toggles.AntiFling and task.wait() do pcall(function() local lp = game.Players.LocalPlayer.Character if lp:FindFirstChild("HumanoidRootPart") then lp.HumanoidRootPart.Velocity = Vector3.new(0,0,0) lp.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0) end end) end end) end})
Tab3:CreateToggle({Name = "Anti sit on off", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.AntiSit = v spawn(function() while Toggles.AntiSit and task.wait() do pcall(function() game.Players.LocalPlayer.Character.Humanoid.Sit = true end) end end) end})
Tab3:CreateToggle({Name = "Anti afk on off", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.AntiAFK = v if v then game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true else game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false end end})
Tab3:CreateButton({Name = "ANTI FAKEOUT", Callback = function() PlayClickSound() loadstring(game:HttpGet("https://pastebin.com/raw/80Nva2Fj"))() end})

-- TAB 4: SPAM 💀 (UPDATED & NEW ADDED)
local Tab4 = Window:CreateTab("SPAM 💀", 4483362458)
Tab4:CreateButton({Name = "DÈÀTHDRÀGØÑ SPAM", Callback = function() PlayClickSound()


---

-- SEND MESSAGE (Chat Version)

local function send(msg)
local TextChatService = game:GetService("TextChatService")
if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
local channel = TextChatService.TextChannels.RBXGeneral
channel:SendAsync(msg)
else
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end
end


---

-- LOADED MESSAGE (Chat Execution Msg)

task.spawn(function()
local line = string.rep("_", 150)
send(line.."[😎 DEATH DRAGON [THE KING] LOADED🦁]")
end)

-- CONSOLE EXECUTION MESSAGE
local execMsg = [[
[☘️😎 DEATH DRAGON 🩷🔥]
@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@
@@@@@@@@@
SPAM LOADED....💀
]]
print(execMsg)
warn(execMsg)


---

-- GUI SETUP

local ScreenGui = Instance.new("ScreenGui")
local ToggleButton = Instance.new("TextButton")
local UICorner_Toggle = Instance.new("UICorner")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TargetInput = Instance.new("TextBox")
local StyleInput = Instance.new("TextBox")
local DelayInput = Instance.new("TextBox")
local StartBtn = Instance.new("TextButton")
local StopBtn = Instance.new("TextButton")

-- Sound Effect on Execution
local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://18667264971"
sound:Play()

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Floating Toggle Button (Moveable)
ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ScreenGui
ToggleButton.Position = UDim2.new(0.05, 0, 0.2, 0)
ToggleButton.Size = UDim2.new(0, 55, 0, 55)
ToggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ToggleButton.Text = "😈"
ToggleButton.TextSize = 30
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Active = true
UICorner_Toggle.CornerRadius = UDim.new(0, 10)
UICorner_Toggle.Parent = ToggleButton

local ToggleStroke = Instance.new("UIStroke", ToggleButton)
ToggleStroke.Thickness = 3
task.spawn(function()
while task.wait() do
ToggleStroke.Color = Color3.fromRGB(255, 0, 0)
task.wait(0.5)
ToggleStroke.Color = Color3.fromRGB(255, 255, 0)
task.wait(0.5)
end
end)

-- Main Menu
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Position = UDim2.new(0.35, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 280, 0, 350)
MainFrame.Visible = false
MainFrame.Active = true

local RainbowGlow = Instance.new("UIStroke", MainFrame)
RainbowGlow.Thickness = 3
RainbowGlow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

task.spawn(function()
while task.wait() do
local hue = tick() % 5 / 5
RainbowGlow.Color = Color3.fromHSV(hue, 1, 1)
end
end)

Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "DÈÀTHDRÀØÑ HUB V1 👑"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold

-- UI Box Styling
local function CreateBox(obj, text, pos)
obj.Parent = MainFrame
obj.Size = UDim2.new(0, 240, 0, 38)
obj.Position = pos
obj.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
obj.TextColor3 = Color3.fromRGB(255, 255, 255)
obj.PlaceholderText = text
obj.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
obj.Font = Enum.Font.GothamBold
obj.Text = ""
local stroke = Instance.new("UIStroke", obj)
stroke.Color = Color3.fromRGB(255, 255, 255)
stroke.Thickness = 2
Instance.new("UICorner", obj).CornerRadius = UDim.new(0, 6)
end

CreateBox(TargetInput, "[ENTER R4DI NAME]", UDim2.new(0.07, 0, 0.2, 0))
CreateBox(StyleInput, "[STYLE] e.g. @", UDim2.new(0.07, 0, 0.35, 0))
CreateBox(DelayInput, "[DELAY] + Slow / - Fast", UDim2.new(0.07, 0, 0.5, 0))
DelayInput.Text = "1"

-- Start/Stop Buttons
StartBtn.Parent = MainFrame
StartBtn.Size = UDim2.new(0, 110, 0, 45)
StartBtn.Position = UDim2.new(0.07, 0, 0.75, 0)
StartBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 0)
StartBtn.Text = "START"
StartBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", StartBtn)

StopBtn.Parent = MainFrame
StopBtn.Size = UDim2.new(0, 110, 0, 45)
StopBtn.Position = UDim2.new(0.53, 0, 0.75, 0)
StopBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
StopBtn.Text = "STOP"
StopBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", StopBtn)

-- Spam Logic
local spamming = false
ToggleButton.MouseButton1Click:Connect(function()
MainFrame.Visible = not MainFrame.Visible
end)

local function getSpamText(target, symbol)
local s = (symbol ~= "" and symbol) or "@"
local lines = {
"TMKX MEH REACT 😃", "TMKX MEH DRAGON 🐉", "ITNA LALLU FYTER?🤣",
"TMKX MEH RELATIONSHIP 🩷", "TMKX MEH HULK 🧌", "TMKX MEH GAS ⛽",
"TMKX MEH CAT 😺", "TMKX MEH GODZILLA 💀", "TMKX MEH VENOM 🦂",
"TMKX MEH HALWA 🎂", "DAFFN BY DD PAPA 😈", "TMKX MEH SIGMA 🗿",
"TMKX MEH VOID 🔊", "LEAVE KARDE?😂", "TMKX MEH HAGGYS 🌚",
"TMKX MEH NEW SMITH 🏠", "TMKX MEH DOOR 🚪", "TMKX MEH BEAST 💥",
"DEATH DRAGON KA SCRIPT 😇", "TMKX MEH SEA 🌊", "TMKX MEH RAINBOW 🌈",
"TMKX MEH SHIP 🚢", "TMKX MEH HUG 🫂", "TMKX MEH CHAIR 🪑",
"BOL ROCKY P3PA", "TMKX MEH PARLE G 🍪", "YASH ON TOP👑",
"TMKX MEH ALPHA", "TMKX MEH CHAOS", "TMKX MEH BUILDING"
}

local topSep = string.rep(s, 25)
local midSep = string.rep(s, 35)
local selected = lines[math.random(1, #lines)]

return "DEATHDRAGON😎\n"..topSep.."\n"..midSep.."\n"..topSep.."\n["..target.."] "..selected

end

StartBtn.MouseButton1Click:Connect(function()
if spamming then return end
spamming = true
local target = (TargetInput.Text ~= "" and TargetInput.Text) or "Target"
local symbol = StyleInput.Text

task.spawn(function()
while spamming do
local waitTime = tonumber(DelayInput.Text) or 1
send(getSpamText(target, symbol))
task.wait(waitTime)
end
end)

end)

StopBtn.MouseButton1Click:Connect(function()
spamming = false
end)

-- Mobile/PC Dragging Fix
local UIS = game:GetService("UserInputService")
local function MakeDraggable(obj)
local dragStart, startPos, dragging
obj.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = obj.Position
end
end)
UIS.InputChanged:Connect(function(input)
if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
local delta = input.Position - dragStart
obj.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
end)
UIS.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = false
end
end)
end

MakeDraggable(ToggleButton)
MakeDraggable(MainFrame)
Tab4:CreateButton({Name = "FORBID SPAMMER", Callback = function() PlayClickSound() loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Forbid-Spammer-149128"))() end})

-- TAB 5: Other 📁
local Tab5 = Window:CreateTab("Other 📁", 4483362458)
Tab5:CreateToggle({Name = "FLY WALK ON/OFF", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.FlyWalk = v spawn(function() local bg = Instance.new("BodyGyro", game.Players.LocalPlayer.Character.HumanoidRootPart) bg.P = 9e4 bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) bg.cframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame local bv = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart) bv.velocity = Vector3.new(0, 0.1, 0) bv.maxForce = Vector3.new(9e9, 9e9, 9e9) while Toggles.FlyWalk and task.wait() do pcall(function() game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true local cam = workspace.CurrentCamera.CFrame bv.velocity = (cam.LookVector * (game.Players.LocalPlayer.Character.Humanoid.WalkSpeed * 2)) bg.cframe = cam end) end bg:Destroy() bv:Destroy() game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false end) end})
Tab5:CreateToggle({Name = "Speed 300 on off", CurrentValue = false, Callback = function(v) PlayClickSound() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v and 300 or 16 end})
Tab5:CreateToggle({Name = "Inf jump on off", CurrentValue = false, Callback = function(v) PlayClickSound() _G.InfJump = v game:GetService("UserInputService").JumpRequest:Connect(function() if _G.InfJump then game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end end) end})
Tab5:CreateToggle({Name = "Noclip on off", CurrentValue = false, Callback = function(v) PlayClickSound() Toggles.Noclip = v game:GetService("RunService").Stepped:Connect(function() if Toggles.Noclip then for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do if part:IsA("BasePart") then part.CanCollide = false end end end end) end})
Tab5:CreateButton({Name = "3F STALKER", Callback = function() PlayClickSound() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-3F-Stalker-Hub-147717"))() end})
Tab5:CreateButton({Name = "Copy Ninja", Callback = function() PlayClickSound() loadstring(game:HttpGet("https://pastebin.com/raw/4etfSURt"))() end})
Tab5:CreateButton({Name = "Sky destroyer", Callback = function() PlayClickSound() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-sky-destroyer-V2-AXEZZ-110640"))() end})
Tab5:CreateButton({Name = "Emote", Callback = function() PlayClickSound() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Gaze-emote-74592"))() end})
Tab5:CreateButton({Name = "Rejoin", Callback = function() PlayClickSound() game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer) end})
Tab5:CreateButton({Name = "Server hop", Callback = function() PlayClickSound() loadstring(game:HttpGet("https://pastebin.com/raw/m888X7p3"))() end})

-- TAB 6: PHONK 🎶
local Tab6 = Window:CreateTab("PHONK 🎶", 4483362458)
local CurrentPhonk = nil
Tab6:CreateSlider({Name = "PHONK VOLUME", Range = {0, 10}, Increment = 1, CurrentValue = 5, Callback = function(Value) PhonkVolume = Value if CurrentPhonk then CurrentPhonk.Volume = Value end end})
local function PlayPhonk(id) if CurrentPhonk then CurrentPhonk:Stop() CurrentPhonk:Destroy() end CurrentPhonk = Instance.new("Sound", game:GetService("SoundService")) CurrentPhonk.SoundId = "rbxassetid://"..id CurrentPhonk.Volume = PhonkVolume CurrentPhonk:Play() end
Tab6:CreateButton({Name = "PHONK 1", Callback = function() PlayClickSound() PlayPhonk("140691985128867") end})
Tab6:CreateButton({Name = "PHONK 2", Callback = function() PlayClickSound() PlayPhonk("140504265985079") end})
Tab6:CreateButton({Name = "PHONK 3", Callback = function() PlayClickSound() PlayPhonk("138682744064257") end})
Tab6:CreateButton({Name = "PHONK 4", Callback = function() PlayClickSound() PlayPhonk("121130248495127") end})
Tab6:CreateButton({Name = "PHONK 5", Callback = function() PlayClickSound() PlayPhonk("136079183541105") end})

Rayfield:Notify({
    Title = "👑 DÈATHDRAGON HUB V1 👑",
    Content = "DD_ROCKY-FATHER ŌF NEW SMITH!💀",
    Duration = 5
})
