local Green = loadstring(game:HttpGet(
"https://raw.githubusercontent.com/BreakNameFast8/GreenX/refs/heads/main/Notification.lua"))()
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
-- wait
local Fluent = loadstring(game:HttpGet(
"https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet(
"https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet(
"https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({ 
    Title = "GreenX Hub (3)", SubTitle = "Owner: Break", 
    TabWidth = 160, Size = UDim2.fromOffset(520, 360),
    Acrylic = false, Theme = "Aqua", MinimizeKey = Enum.KeyCode.End
})
local Tabs = { Main = Window:AddTab({ Title = "Main", Icon = "rbxassetid://10723407389" }), Sub = Window:AddTab({ Title = "Items and Auto Farm", Icon = "rbxassetid://10723405360" }), Sh = Window:AddTab({ Title = "Store-Store", Icon = "rbxassetid://10734952479" }), Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }), SeaE = Window:AddTab({ Title = "Quest Sea", Icon = "sailboat" }), Race = Window:AddTab({ Title = "Trial V4", Icon = "cog" }), Ui = Window:AddTab({ Title = "Save Function", Icon = "star" }), Player = Window:AddTab({ Title = "players-Stats", Icon = "bar-chart-4" }), Mas = Window:AddTab({ Title = "Skill Mastery", Icon = "rbxassetid://10734984606" }), Esp = Window:AddTab({ Title = "ESP function", Icon = "sun-snow" }), Raid = Window:AddTab({ Title = "Dungeon", Icon = "swords" }), Travel = Window:AddTab({ Title = "Tweening Islands", Icon = "rbxassetid://10723346959" }), Fun = Window:AddTab({ Title = "Severs & Status", Icon = "mountain-snow" }), Fruit = Window:AddTab({ Title = "Devils Fruits", Icon = "rbxassetid://10709761889" }), }

local Options = Fluent.Options
do
 
    hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function()end)
    hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function()end)
local player = game.Players.LocalPlayer
local L1 = Instance.new("ScreenGui")
local L2 = Instance.new("TextButton")
local L3 = Instance.new("UICorner")
local L4 = Instance.new("ImageLabel")
local sound = Instance.new("Sound")
L3.Name = "UICorner"
L3.Parent = L2
L4.Name = "ButtonImage"
L4.Parent = L2
L4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L4.BackgroundTransparency = 1.000
L4.BorderSizePixel = 0
L4.Position = UDim2.new(0.1, 0, 0.1, 0) 
L4.Size = UDim2.new(0, 45, 0, 45)
L4.Image = ""
L1.Name = "MainGui"
L1.Parent = player:WaitForChild("PlayerGui")
L1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
L2.Name = "CustomButton"
L2.Parent = L1
L2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
L2.BackgroundTransparency = 0.2
L2.BorderSizePixel = 0
L2.Position = UDim2.new(0.1, 0, 0, 10)
L2.Size = UDim2.new(0, 53.5, 0, 53.5)
L2.Font = Enum.Font.LuckiestGuy
L2.Text = "GreenX\n Hub"
L2.TextColor3 = Color3.fromRGB(255, 255, 255)
L2.TextSize = 10.000
L2.Draggable = true
L2.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)    
end)

repeat wait() until game:IsLoaded()
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if getgenv().JoinTeam == "Marines" then
               for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Marines"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                        b:Fire() 
                    end
                    v.Function()
               end 
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                        b:Fire() 
                    end
                    v.Function()
                end 
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

Green:create("Waiting Tabs.Load =Close Ui")

if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game.Players.LocalPlayer:Kick("Unsupported Game")
end
--local Args = A
   --local A = {
     -- [1] = "CheckBone",
    --  [2] = BuyBones
     --    task.wait(0.1)
   --   {}
--   }
--   return
--local QuestCheck = {};
--CheckQuest = function();
	--questlib.CheckQuest(); 
	   --Check()
	 --  if not Check then
	--     break
	   --end
	--end
--return QuestCheck
	--CFrameMon = checkEnemySpawn(Name) or CFrameMyMon
--end
--CheckOldQuest = function(a)
	--questlib.CheckOldQuest(a)
	--CFrameMon = checkEnemySpawn(Name) or CFrameMyMon
--end

function CheckQuest()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                Mon = "Bandit"
                LevelQuest = 1
                --  Players = nil,
               -- if not Mon and not NameQuest
                 -- if Players == "2499" and Lock() end
               -- break
               -- end
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                InfoFarm = "Bandit Lv. 0 - 10"
                CFrameQuest = CFrame.new(1059.37, 15.45, 1550.42, 0.94, 0, -0.34, 0, 1, 0, 0.34, 0, 0.94)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
            else
                Mon = "Trainee"
                LevelQuest = 1
                NameQuest = "MarineQuest"
                NameMon = "Trainee"
                InfoFarm = "Trainee Lv. 0 - 10"
                CFrameQuest = CFrame.new(-2708, 25, 2103)
                CFrameMon = CFrame.new(-2708, 25, 2103)
            end
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            InfoFarm = "Monkey Lv. 10 - 15"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            if game:GetService("Workspace").Enemies:FindFirstChild("The Gorilla King") and MyLevel >= 20 then
                Mon = "The Gorilla King"
                LevelQuest = 3
                NameQuest = "JungleQuest"
                NameMon = "The Gorilla King"
                InfoFarm = "Gorilla King [Boss]"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            else
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                InfoFarm = "Gorilla Lv. 15 - 20"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            end
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07, 4.10, 3831.55, 0.97, 0, -0.26, 0, 1, 0, 0.26, 0, 0.97)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Bobby") and MyLevel >= 55 then
                Mon = "Bobby"
                LevelQuest = 3
                NameQuest = "BuggyQuest1"
                NameMon = "Bobby"
                CFrameQuest = CFrame.new(-1141.07, 4.10, 3831.55, 0.97, 0, -0.26, 0, 1, 0, 0.26, 0, 0.97)
                CFrameMon = CFrame.new(-1074.80, 22.08, 4487.10, 0.99, 0, -0.09, 0, 1, 0, 0.09, 0, 0.99)
            else
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07, 4.10, 3831.55, 0.97, 0, -0.26, 0, 1, 0, 0.26, 0, 0.97)
                CFrameMon = CFrame.new(-1074.80, 22.08, 4487.10, 0.99, 0, -0.09, 0, 1, 0, 0.09, 0, 0.99)
            end
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.49, 5.14, 4392.43, 0.82, 0, -0.57, 0, 1, 0, 0.57, 0, 0.82)
            CFrameMon = CFrame.new(1053.80, 52.40, 4491.19, 0.45, 0, 0.89, 0, 1, 0, -0.89, 0, 0.45)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.49, 5.14, 4392.43, 0.82, 0, -0.57, 0, 1, 0, 0.57, 0, 0.82)
            CFrameMon = CFrame.new(1581.26, 1.60, 4304.55, 0.91, 0, -0.42, 0, 1, 0, 0.42, 0, 0.91)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74, 88.15, -1298.91, -0.34, 0, 0.94, 0, 1, 0, -0.94, 0, -0.34)
            CFrameMon = CFrame.new(1419.83, 119.62, -1411.56, -0.10, 0, -0.99, 0, 1, 0, 0.99, 0, -0.10)
        elseif MyLevel == 100 or MyLevel <= 119 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Yeti") and MyLevel >= 105 then
                Mon = "Yeti"
                LevelQuest = 3
                NameQuest = "SnowQuest"
                NameMon = "Yeti"
                CFrameQuest = CFrame.new(1389.74, 88.15, -1298.91, -0.34, 0, 0.94, 0, 1, 0, -0.94, 0, -0.34)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            else
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74, 88.15, -1298.91, -0.34, 0, 0.94, 0, 1, 0, -0.94, 0, -0.34)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            end
        elseif MyLevel == 120 or MyLevel <= 149 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Vice Admiral") and MyLevel >= 130 then
                Mon = "Vice Admiral"
                LevelQuest = 2
                NameQuest = "MarineQuest2"
                NameMon = "Vice Admiral"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            else
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            end
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53, 716.37, -2619.44, 0.87, 0, 0.50, 0, 1, 0, -0.50, 0, 0.87)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53, 716.37, -2619.44, 0.87, 0, 0.50, 0, 1, 0, -0.50, 0, 0.87)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93, 1.66, 475.12, -0.09, 0, -0.99, 0, 1, 0, 0.99, 0, -0.09)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Swan") and MyLevel >= 240 then
                Mon = "Swan"
                LevelQuest = 3
                NameQuest = "ImpelQuest"
                NameMon = "Swan"
                CFrameQuest = CFrame.new(5191.32, 3.54, 691.62, 0.99, 0, 0.17, 0, 1, 0, -0.17, 0, 0.99)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") and MyLevel >= 230 then
                Mon = "Chief Warden"
                LevelQuest = 2
                NameQuest = "ImpelQuest"
                NameMon = "Chief Warden"
                CFrameQuest = CFrame.new(5191.32, 3.54, 691.62, 0.99, 0, 0.17, 0, 1, 0, -0.17, 0, 0.99)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif game:GetService("Workspace").Enemies:FindFirstChild("Warden") and MyLevel >= 220 then
                Mon = "Warden"
                LevelQuest = 1
                NameQuest = "ImpelQuest"
                NameMon = "Warden"
                CFrameQuest = CFrame.new(5191.32, 3.54, 691.62, 0.99, 0, 0.17, 0, 1, 0, -0.17, 0, 0.99)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            else
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93, 1.66, 475.12, -0.09, 0, -0.99, 0, 1, 0, 0.99, 0, -0.09)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            end
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.05, 6.35, -2986.48, -0.52, 0, -0.86, 0, 1, 0, 0.86, 0, -0.52)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.05, 6.35, -2986.48, -0.52, 0, -0.86, 0, 1, 0, 0.86, 0, -0.52)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37, 10.95, 8515.29, -0.50, 0, 0.87, 0, 1, 0, -0.87, 0, -0.50)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Magma Admiral") and MyLevel >= 350 then
                Mon = "Magma Admiral"
                LevelQuest = 3
                NameQuest = "MagmaQuest"
                NameMon = "Magma Admiral"
                CFrameQuest = CFrame.new(-5313.37, 10.95, 8515.29, -0.50, 0, 0.87, 0, 1, 0, -0.87, 0, -0.50)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            else
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37, 10.95, 8515.29, -0.50, 0, 0.87, 0, 1, 0, -0.87, 0, -0.50)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            end
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Lord") and MyLevel >= 425 then
                Mon = "Fishman Lord"
                LevelQuest = 3
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Lord"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            else
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.89, 843.87, -1949.97, 0.99, 0, -0.09, 0, 1, 0, 0.09, 0, 0.99)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Wysper") and MyLevel >= 500 then
                Mon = "Wysper"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Wysper"
                CFrameQuest = CFrame.new(-7859.10, 5544.19, -381.48, -0.42, 0, 0.91, 0, 1, 0, -0.91, 0, -0.42)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            else
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.10, 5544.19, -381.48, -0.42, 0, 0.91, 0, 1, 0, -0.91, 0, -0.42)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") and MyLevel >= 575 then
                Mon = "Thunder God"
                LevelQuest = 3
                NameQuest = "SkyExp2Quest"
                NameMon = "Thunder God"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            else
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            end
        elseif MyLevel >= 625 and MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0,
                -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Cyborg") and MyLevel >= 675 then
                Mon = "Cyborg"
                LevelQuest = 3
                NameQuest = "FountainQuest"
                NameMon = "Cyborg"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0,
                    -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            else
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0,
                    -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0,
                0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Diamond") and MyLevel >= 750 then
                Mon = "Diamond"
                LevelQuest = 3
                NameQuest = "Area1Quest"
                NameMon = "Diamond"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0,
                    0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            else
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0,
                    0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            end
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376,
                0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") and MyLevel >= 850 then
                Mon = "Jeremy"
                NameQuest = "Area2Quest"
                LevelQuest = 3
                NameMon = "Jeremy"
                CFrameQuest = CFrame.new(632.70, 73.11, 918.67, -0.03, 0, -1, 0, 1, 0, 1, 0, -0.03)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            else
                Mon = "Factory Staff"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.70, 73.11, 918.67, -0.03, 0, -1, 0, 1, 0, 1, 0, -0.03)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            end
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0,
                -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Fajita") and MyLevel >= 925 then
                Mon = "Fajita"
                LevelQuest = 3
                NameQuest = "MarineQuest3"
                NameMon = "Fajita"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0,
                    -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            else
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0,
                    -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            end
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0,
                0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0,
                0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0,
                -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0,
                -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0,
                0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0,
                0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0,
                -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0,
                -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0,
                0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0,
                0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0,
                0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0,
                0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0,
                0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0,
                0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0,
                0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0,
                -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0,
                -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0,
                -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625)
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0,
                0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0,
                0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0,
                -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0,
                -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32, 37.80, -12028.73, 0.96, 0, 0.29, 0, 1, 0, -0.29, 0, 0.96)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32, 37.80, -12028.73, 0.96, 0, 0.29, 0, 1, 0, -0.29, 0, 0.96)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.92, 37.80, -12842.54, -0.97, 0, 0.25, 0, 1, 0, -0.25, 0, -0.97)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.92, 37.80, -12842.54, -0.97, 0, 0.25, 0, 1, 0, -0.25, 0, -0.97)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrior"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "kissed"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
        elseif MyLevel == 2525 or MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16225.2431640625, 137.2132568359375, 1026.624267578125)
        end
    end
end


    function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end       
    
function Click()
    game:GetService 'VirtualUser':CaptureController()
    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end


function UpdateIslandESP()
	for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if v.Name ~= "Sea" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v);
						bill.Name = "NameEsp";
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = "GothamBold";
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(7, 236, 240);
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
					end;
				end;
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy();
			end;
		end);
	end;
end;
function isnil(thing)
	return thing == nil;
end;
local function round(n)
	return math.floor(tonumber(n) + 0.5);
end;
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for i, v in pairs((game:GetService("Players")):GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and (not v.Character.Head:FindFirstChild(("NameEsp" .. Number))) then
						local bill = Instance.new("BillboardGui", v.Character.Head);
						bill.Name = "NameEsp" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Character.Head;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Character.Head.Position)).Magnitude / 3) .. " Distance";
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0, 255, 0);
						else
							name.TextColor3 = Color3.new(255, 0, 0);
						end;
					else
						v.Character.Head["NameEsp" .. Number].TextLabel.Text = v.Name .. " | " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Character.Head.Position)).Magnitude / 3) .. " Distance\nHealth : " .. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. "%";
					end;
				elseif v.Character.Head:FindFirstChild("NameEsp" .. Number) then
					(v.Character.Head:FindFirstChild("NameEsp" .. Number)):Destroy();
				end;
			end;
		end);
	end;
end;
function UpdateChestChams()
	for i, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name, "Chest") then
				if ChestESP then
					if string.find(v.Name, "Chest") then
						if not v:FindFirstChild(("NameEsp" .. Number)) then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "NameEsp" .. Number;
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = Enum.Font.GothamSemibold;
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109);
								name.Text = "Chest 1" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							end;
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21);
								name.Text = "Chest 2" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							end;
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255);
								name.Text = "Chest 3" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							end;
						else
							v["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
						end;
					end;
				elseif v:FindFirstChild("NameEsp" .. Number) then
					(v:FindFirstChild("NameEsp" .. Number)):Destroy();
				end;
			end;
		end);
	end;
end;
function UpdateDevilChams()
	for i, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then
					if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
						local bill = Instance.new("BillboardGui", v.Handle);
						bill.Name = "NameEsp" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Handle;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(255, 255, 255);
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					else
						v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					end;
				end;
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
			end;
		end);
	end;
end;

function UpdateFlowerChams()
	for i, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then
					if not v:FindFirstChild(("NameEsp" .. Number)) then
						local bill = Instance.new("BillboardGui", v);
						bill.Name = "NameEsp" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(255, 0, 0);
						if v.Name == "Flower1" then
							name.Text = "Blue Flower" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							name.TextColor3 = Color3.fromRGB(0, 0, 255);
						end;
						if v.Name == "Flower2" then
							name.Text = "Red Flower" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							name.TextColor3 = Color3.fromRGB(255, 0, 0);
						end;
					else
						v["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
					end;
				elseif v:FindFirstChild("NameEsp" .. Number) then
					(v:FindFirstChild("NameEsp" .. Number)):Destroy();
				end;
			end;
		end);
	end;
end;
function UpdateRealFruitChams()
	for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle);
					bill.Name = "NameEsp" .. Number;
					bill.ExtentsOffset = Vector3.new(0, 1, 0);
					bill.Size = UDim2.new(1, 200, 1, 30);
					bill.Adornee = v.Handle;
					bill.AlwaysOnTop = true;
					local name = Instance.new("TextLabel", bill);
					name.Font = Enum.Font.GothamSemibold;
					name.FontSize = "Size14";
					name.TextWrapped = true;
					name.Size = UDim2.new(1, 0, 1, 0);
					name.TextYAlignment = "Top";
					name.BackgroundTransparency = 1;
					name.TextStrokeTransparency = 0.5;
					name.TextColor3 = Color3.fromRGB(255, 0, 0);
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				end;
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
			end;
		end;
	end;
	for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle);
					bill.Name = "NameEsp" .. Number;
					bill.ExtentsOffset = Vector3.new(0, 1, 0);
					bill.Size = UDim2.new(1, 200, 1, 30);
					bill.Adornee = v.Handle;
					bill.AlwaysOnTop = true;
					local name = Instance.new("TextLabel", bill);
					name.Font = Enum.Font.GothamSemibold;
					name.FontSize = "Size14";
					name.TextWrapped = true;
					name.Size = UDim2.new(1, 0, 1, 0);
					name.TextYAlignment = "Top";
					name.BackgroundTransparency = 1;
					name.TextStrokeTransparency = 0.5;
					name.TextColor3 = Color3.fromRGB(255, 174, 0);
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				end;
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
			end;
		end;
	end;
	for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle);
					bill.Name = "NameEsp" .. Number;
					bill.ExtentsOffset = Vector3.new(0, 1, 0);
					bill.Size = UDim2.new(1, 200, 1, 30);
					bill.Adornee = v.Handle;
					bill.AlwaysOnTop = true;
					local name = Instance.new("TextLabel", bill);
					name.Font = Enum.Font.GothamSemibold;
					name.FontSize = "Size14";
					name.TextWrapped = true;
					name.Size = UDim2.new(1, 0, 1, 0);
					name.TextYAlignment = "Top";
					name.BackgroundTransparency = 1;
					name.TextStrokeTransparency = 0.5;
					name.TextColor3 = Color3.fromRGB(251, 255, 0);
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				end;
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
			end;
		end;
	end;
end;
function UpdateIslandESP()
	for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if v.Name ~= "Sea" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v);
						bill.Name = "NameEsp";
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = "GothamBold";
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(7, 236, 240);
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
					end;
				end;
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy();
			end;
		end);
	end;
end;
function isnil(thing)
	return thing == nil;
end;
local function round(n)
	return math.floor(tonumber(n) + 0.5);
end;
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for i, v in pairs((game:GetService("Players")):GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and (not v.Character.Head:FindFirstChild(("NameEsp" .. Number))) then
						local bill = Instance.new("BillboardGui", v.Character.Head);
						bill.Name = "NameEsp" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Character.Head;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Character.Head.Position)).Magnitude / 3) .. " Distance";
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0, 255, 0);
						else
							name.TextColor3 = Color3.new(255, 0, 0);
						end;
					else
						v.Character.Head["NameEsp" .. Number].TextLabel.Text = v.Name .. " | " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Character.Head.Position)).Magnitude / 3) .. " Distance\nHealth : " .. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. "%";
					end;
				elseif v.Character.Head:FindFirstChild("NameEsp" .. Number) then
					(v.Character.Head:FindFirstChild("NameEsp" .. Number)):Destroy();
				end;
			end;
		end);
	end;
end;

function UpdateChestChams()
	for i, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name, "Chest") then
				if ChestESP then
					if string.find(v.Name, "Chest") then
						if not v:FindFirstChild(("NameEsp" .. Number)) then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "NameEsp" .. Number;
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = Enum.Font.GothamSemibold;
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109);
								name.Text = "Chest 1" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							end;
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21);
								name.Text = "Chest 2" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							end;
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255);
								name.Text = "Chest 3" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							end;
						else
							v["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
						end;
					end;
				elseif v:FindFirstChild("NameEsp" .. Number) then
					(v:FindFirstChild("NameEsp" .. Number)):Destroy();
				end;
			end;
		end);
	end;
end;
function UpdateDevilChams()
	for i, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then
					if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
						local bill = Instance.new("BillboardGui", v.Handle);
						bill.Name = "NameEsp" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Handle;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(255, 255, 255);
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					else
						v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					end;
				end;
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
			end;
		end);
	end;
end;
function UpdateFlowerChams()
	for i, v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then
					if not v:FindFirstChild(("NameEsp" .. Number)) then
						local bill = Instance.new("BillboardGui", v);
						bill.Name = "NameEsp" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(255, 0, 0);
						if v.Name == "Flower1" then
							name.Text = "Blue Flower" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							name.TextColor3 = Color3.fromRGB(0, 0, 255);
						end;
						if v.Name == "Flower2" then
							name.Text = "Red Flower" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
							name.TextColor3 = Color3.fromRGB(255, 0, 0);
						end;
					else
						v["NameEsp" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
					end;
				elseif v:FindFirstChild("NameEsp" .. Number) then
					(v:FindFirstChild("NameEsp" .. Number)):Destroy();
				end;
			end;
		end);
	end;
end;
function UpdateRealFruitChams()
	for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle);
					bill.Name = "NameEsp" .. Number;
					bill.ExtentsOffset = Vector3.new(0, 1, 0);
					bill.Size = UDim2.new(1, 200, 1, 30);
					bill.Adornee = v.Handle;
					bill.AlwaysOnTop = true;
					local name = Instance.new("TextLabel", bill);
					name.Font = Enum.Font.GothamSemibold;
					name.FontSize = "Size14";
					name.TextWrapped = true;
					name.Size = UDim2.new(1, 0, 1, 0);
					name.TextYAlignment = "Top";
					name.BackgroundTransparency = 1;
					name.TextStrokeTransparency = 0.5;
					name.TextColor3 = Color3.fromRGB(255, 0, 0);
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				end;
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
			end;
		end;
	end;
	for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle);
					bill.Name = "NameEsp" .. Number;
					bill.ExtentsOffset = Vector3.new(0, 1, 0);
					bill.Size = UDim2.new(1, 200, 1, 30);
					bill.Adornee = v.Handle;
					bill.AlwaysOnTop = true;
					local name = Instance.new("TextLabel", bill);
					name.Font = Enum.Font.GothamSemibold;
					name.FontSize = "Size14";
					name.TextWrapped = true;
					name.Size = UDim2.new(1, 0, 1, 0);
					name.TextYAlignment = "Top";
					name.BackgroundTransparency = 1;
					name.TextStrokeTransparency = 0.5;
					name.TextColor3 = Color3.fromRGB(255, 174, 0);
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				end;
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
			end;
		end;
	end;
	for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle);
					bill.Name = "NameEsp" .. Number;
					bill.ExtentsOffset = Vector3.new(0, 1, 0);
					bill.Size = UDim2.new(1, 200, 1, 30);
					bill.Adornee = v.Handle;
					bill.AlwaysOnTop = true;
					local name = Instance.new("TextLabel", bill);
					name.Font = Enum.Font.GothamSemibold;
					name.FontSize = "Size14";
					name.TextWrapped = true;
					name.Size = UDim2.new(1, 0, 1, 0);
					name.TextYAlignment = "Top";
					name.BackgroundTransparency = 1;
					name.TextStrokeTransparency = 0.5;
					name.TextColor3 = Color3.fromRGB(251, 255, 0);
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
				end;
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
			end;
		end;
	end;
end;
spawn(function()
	while wait() do
		pcall(function()
			if MobESP then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if not v:FindFirstChild("MobEap") then
							local BillboardGui = Instance.new("BillboardGui");
							local TextLabel = Instance.new("TextLabel");
							BillboardGui.Parent = v;
							BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							BillboardGui.Active = true;
							BillboardGui.Name = "MobEap";
							BillboardGui.AlwaysOnTop = true;
							BillboardGui.LightInfluence = 1;
							BillboardGui.Size = UDim2.new(0, 200, 0, 50);
							BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0);
							TextLabel.Parent = BillboardGui;
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							TextLabel.BackgroundTransparency = 1;
							TextLabel.Size = UDim2.new(0, 200, 0, 50);
							TextLabel.Font = Enum.Font.GothamBold;
							TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240);
							TextLabel.Text.Size = 35;
						end;
						local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude);
						v.MobEap.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance";
					end;
				end;
			else
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v:FindFirstChild("MobEap") then
						v.MobEap:Destroy();
					end;
				end;
			end;
		end);
	end;
end);

spawn(function()
	while wait() do
		pcall(function()
			if SeaESP then
				for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if not v:FindFirstChild("Seaesps") then
							local BillboardGui = Instance.new("BillboardGui");
							local TextLabel = Instance.new("TextLabel");
							BillboardGui.Parent = v;
							BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							BillboardGui.Active = true;
							BillboardGui.Name = "Seaesps";
							BillboardGui.AlwaysOnTop = true;
							BillboardGui.LightInfluence = 1;
							BillboardGui.Size = UDim2.new(0, 200, 0, 50);
							BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0);
							TextLabel.Parent = BillboardGui;
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							TextLabel.BackgroundTransparency = 1;
							TextLabel.Size = UDim2.new(0, 200, 0, 50);
							TextLabel.Font = Enum.Font.GothamBold;
							TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240);
							TextLabel.Text.Size = 35;
						end;
						local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude);
						v.Seaesps.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance";
					end;
				end;
			else
				for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
					if v:FindFirstChild("Seaesps") then
						v.Seaesps:Destroy();
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if NpcESP then
				for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if not v:FindFirstChild("NpcEspes") then
							local BillboardGui = Instance.new("BillboardGui");
							local TextLabel = Instance.new("TextLabel");
							BillboardGui.Parent = v;
							BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							BillboardGui.Active = true;
							BillboardGui.Name = "NpcEspes";
							BillboardGui.AlwaysOnTop = true;
							BillboardGui.LightInfluence = 1;
							BillboardGui.Size = UDim2.new(0, 200, 0, 50);
							BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0);
							TextLabel.Parent = BillboardGui;
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							TextLabel.BackgroundTransparency = 1;
							TextLabel.Size = UDim2.new(0, 200, 0, 50);
							TextLabel.Font = Enum.Font.GothamBold;
							TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240);
							TextLabel.Text.Size = 35;
						end;
						local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude);
						v.NpcEspes.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance";
					end;
				end;
			else
				for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
					if v:FindFirstChild("NpcEspes") then
						v.NpcEspes:Destroy();
					end;
				end;
			end;
		end);
	end;
end);
function isnil(thing)
	return thing == nil;
end;
local function round(n)
	return math.floor(tonumber(n) + 0.5);
end;
Number = math.random(1, 1000000);
function UpdateIslandMirageESP()
	for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
		pcall(function()
			if MirageIslandESP then
				if v.Name == "Mirage Island" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v);
						bill.Name = "NameEsp";
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = "Code";
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
					end;
				end;
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy();
			end;
		end);
	end;
end;
function isnil(thing)
	return thing == nil;
end;
local function round(n)
	return math.floor(tonumber(n) + 0.5);
end;
Number = math.random(1, 1000000);
function UpdateAfdESP()
	for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
		pcall(function()
			if AfdESP then
				if v.Name == "Advanced Fruit Dealer" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v);
						bill.Name = "NameEsp";
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = "Code";
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
					end;
				end;
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy();
			end;
		end);
	end;
end;
function UpdateAuraESP()
	for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
		pcall(function()
			if AuraESP then
				if v.Name == "Master of Enhancement" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v);
						bill.Name = "NameEsp";
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = "Code";
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
					end;
				end;
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy();
			end;
		end);
	end;
end;

function UpdateLSDESP()
	for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
		pcall(function()
			if LADESP then
				if v.Name == "Legendary Sword Dealer" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v);
						bill.Name = "NameEsp";
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = "Code";
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
					end;
				end;
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy();
			end;
		end);
	end;
end;
function UpdateGeaESP()
	for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland:GetChildren()) do
		pcall(function()
			if GearESP then
				if v.Name == "MeshPart" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v);
						bill.Name = "NameEsp";
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = "Code";
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(80, 245, 245);
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
					end;
				end;
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy();
			end;
		end);
	end;
end;

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function BTP(p)
    pcall(function()
        if (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            repeat
                wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                wait(.05)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
            until (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
        end
    end)
end

function TelePPlayer(P)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

TweenSpeed = 300
local currentTween

function WaitHRP(q0)
    if not q0 then return end
    return q0.Character:WaitForChild("HumanoidRootPart", 9)
end

function StopTween(isEnabled)
    if not isEnabled and currentTween then
        currentTween:Cancel()
        currentTween = nil
    end
end
-- hahaha
function topos(Pos)
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local hrp = character:FindFirstChild("HumanoidRootPart")

    if character.Humanoid.Health > 0 and hrp then
        local Distance = (Pos.Position - hrp.Position).Magnitude

        if not Pos then
            return
        end
        if not character:FindFirstChild("Block") then
            local Block = Instance.new("Part", character)
            Block.Size = Vector3.new(10, 1, 10)
            Block.Name = "Block"
            Block.Anchored = true
            Block.Transparency = 1
            Block.CanCollide = false
            Block.CFrame = WaitHRP(player).CFrame
            Block:GetPropertyChangedSignal("CFrame"):Connect(function()
                task.wait()
                WaitHRP(player).CFrame = Block.CFrame
            end)
        end

        currentTween = game:GetService("TweenService"):Create(character.Block,
            TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear), { CFrame = Pos })
        currentTween:Play()

        if Distance <= 100 then
            currentTween:Cancel()
            character.Block.CFrame = Pos
        end

        if _G.StopTween == true then
            currentTween:Cancel()
        end
    end
end

function TP1(Pos)
    topos(Pos)
end

    function TweenShip(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end
    
        function TweenBoat(CFgo)
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end
    
function fastpos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 1000
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

function slowpos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 150
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

local function TPB(pos, boat)
    local tween_s = game:GetService("TweenService")
    local info = TweenInfo.new((boat.CFrame.Position - pos.Position).Magnitude / getgenv().SpeedBoat, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(boat, info, {CFrame = pos})
    local stopboat = {}
    function stopboat:Stop()
        tween:Cancel()
    end
    if (boat.CFrame.Position - pos.Position).Magnitude <= 30 then
        stopboat:Stop()
    else
        tween:Play()
    end
    return stopboat
end

--local stopboat = StopBoat()
Type = 1
spawn(function()
    while wait(.1) do
        if Type == 1 then
            Pos = CFrame.new(0, PosY, 0)
        end
    end
end)


spawn(function()
    while wait(.1) do
        Type = 1
    end
end)

spawn(function()
        while wait() do
            if _G.AutoKillTial or _G.AutoFarmPrince or _G.Autodoughking or _G.AutoFarm == true then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                end)
            end    
        end
    end)    
    

function abrg(name, MonFarm)
    task.spawn(function()        
        local function bringss(v, MonFarm)
            v.HumanoidRootPart.CanCollide = false
            v.Head.CanCollide = false
            local playersChar = -2
                --local Bring = 1
            --return playersChar
               --or not Bring
            local PosMon = PosMon * CFrame.new(0, playersChar, 0)
            v.HumanoidRootPart.CFrame = PosMon
            if v.Humanoid:FindFirstChild('Animator') then
                v.Humanoid.Animator:Destroy()
            end
            v.Humanoid:ChangeState(11)
            v.Humanoid:ChangeState(14)
        end
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == name and (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 2500 then
                --v.HumanoidRootPart.Position - PosMon.Position).Magnitude
                bringss(v, MonFarm)
            end
        end
        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    end)
end

--local args = {
  -- [1] = setfpscap(90)
     --[2] = Lock.TargetMon
  -- } return args
     
function InstancePos(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function TP3(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

print("Save") 
local foldername = "Green Hub"
local filename = foldername.."/Setting.json"
 function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G)
    if true then
        if isfolder(foldername) then
            if isfile(filename) then
                writefile(filename, json)
            else
                writefile(filename, json)
            end
        else
            makefolder(foldername)
        end
    end
end
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------

function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfolder(foldername) then
        if isfile(filename) then
            _G = HttpService:JSONDecode(readfile(filename))
        end
    end
end

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
            pcall(function()
                game:GetService 'VirtualUser':CaptureController()
                game:GetService 'VirtualUser':Button1Down(Vector2.new(0, 1, 0, 1))
            end)
        end
    end)
end)

function StopTween(target)
    local plyr = game:GetService("Players").LocalPlayer
    local char = plyr.Character

    if not target then
        _G.StopTween = true
        wait()
        topos(char.HumanoidRootPart.CFrame)
        wait()
        if char.HumanoidRootPart:FindFirstChild("BodyClip") then
            char.HumanoidRootPart.BodyClip:Destroy()
        end
        if char:FindFirstChild("Block") then
            char.Block:Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end

    if char:FindFirstChild("Highlight") then
        char.Highlight:Destroy()
    end
end

function LockTween()
    if _G.LockTween then
        return
    end
    _G.LockTween = true
    wait()
    local plyr = game.Players.LocalPlayer
    local char = plyr.Character
    if char and char:IsDescendantOf(game.Workspace) then
        local hrp = char:WaitForChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = hrp.CFrame
        end
    end
    wait()
    if char:FindFirstChild("BodyClip") then
        char.BodyClip:Destroy()
    end
    if char:FindFirstChild("PartTele") then
        char.Block:Destroy()
    end
    _G.LockTween = false
end

spawn(function()
    while task.wait() do
        pcall(function()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")

            if character.Humanoid.Health <= 0 or not hrp then
                if character:FindFirstChild("Block") then
                    character.Block:Destroy()
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")

            if character:FindFirstChild("Block") then
                if (hrp.Position - character.Block.Position).Magnitude >= 100 then
                    character.Block:Destroy()
                end
            end
        end)
    end
end)


function enableNoclip()
    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
        local Noclip = Instance.new("BodyVelocity")
        Noclip.Name = "BodyClip"
        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
        Noclip.Velocity = Vector3.new(0, 0, 0)
    end
end

function disableNoclip()
    local bodyClip = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")
    if bodyClip then
        bodyClip:Destroy()
    end
end

function disableCollisions()
    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.CanCollide = false
        end
    end
end

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarm or
                _G.Auto_Dungeon or
                _G.AutoFarmBoss or
                _G.AutoFarmBossHallow or
                _G.AutoFarmPrince or
                _G.SailBoat or
                _G.AutoKillShark or
                _G.AutoTerrorshark or
                _G.AutoKillPiranha or
                _G.Auto_Bone or
                _G.Grabfruit or
                _G.Tweenfruit or
                _G.Auto_Kill_Ply or                
                _G.AutoMaterial or
                _G.Auto_Saber or
                _G.AutoQuestRace or
                _G.AutoKillTial or
                _G.AutoFarmBoss or
                _G.AutoFarmAllBoss or
                _G.Auto_God_Human or
                _G.AutoDeathStep or
                _G.Auto_EvoRace or
                _G.AutoSharkman or
                _G.MinGaming or
                _G.TaisaoGreenX or
                _G.FarmingWinggagle or
                _G.GreenX or
                _G.FarmingDoBan or
                _G.FarmCucSat or
                _G.Safe_Mode or
                _G.GreenXMigare or
                _G.GreenXFind or
                _G.GreenXGrear or
                _G.FindKitsune or
                _G.AutoElectricClaw or
                _G.AutoDragonTalon or
                _G.AutoNevaSoulGuitar or
                _G.AutoFarmGunMastery or
                _G.AutoFarmFruitMastery or
                _G.Autopole or
                _G.Autosaw or
                _G.Autowarden or
                _G.Auto_Dragon_Trident or
                Auto_Cursed_Dual_Katana or
                _G.AutoFarmBossHallow or
                _G.Autotushita or
                _G.AutoYama or
                _G.AutoBuddySword or
                _G.AutoCarvender or
                _G.AutoSecSea or
                _G.AutoElitehunter or
                _G.AutoDarkDagger or
                _G.TrialV4 or
                Open_Color_Haki or
                _G.AutoObservation or
                _G.AutoThirdSea or
                _G.AutoKillBoss or
                _G.AutoFarmChest or
                _G.AutoKillAllBoss or
                _G.AutoDarkCoat or
                _G.AutoBartilo or
                _G.AutoFactory or
                _G.RaidPirate or
                --getgenv().GreenXLeviathan = not.Value or not ["Workspace"].Children.find("Leviathan")
                _G.AutoChestSafe
            then
                enableNoclip()
                disableCollisions()
            else
                disableNoclip()
            end
        end
    end)
end)
-- Depchai

spawn(function()
    pcall(function()
        while wait() do
            for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

local PointStats, Melee, Defense, Sword, Gun, DemonFruit = 1

local function AutoStats()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Remote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")
    local function AddStats(Stats)
        local plyr = game.Players.LocalPlayer
        if plyr and plyr.Data and plyr.Data.Points and plyr.Data.Points.Value >= 1 then
            local Points = math.clamp(PointStats, 1, plyr.Data.Points.Value)
            Remote:InvokeServer("AddPoint", Stats, Points)
        end
    end
    while _G.AutoStats do
        task.wait()
        if Melee then
            AddStats("Melee")
        end
        if Defense then
            AddStats("Defense")
        end
        if Sword then
            AddStats("Sword")
        end
        if Gun then
            AddStats("Gun")
        end
        if DemonFruit then
            AddStats("Demon Fruit")
        end
    end
end



function setPrimaryPartCFrame(enemies, cframe)
    if enemies and enemies.PrimaryPart then
        pcall(function()
            enemies:SetPrimaryPartCFrame(cframe)
        end)
    end
end

function handleEnemy(v, pos, size)
    local hrp = v:FindFirstChild("HumanoidRootPart")
    if hrp then
        hrp.Size = size
        hrp.CanCollide = false
        local head = v:FindFirstChild("Head")
        if head then
            head.CanCollide = false
        end
        local humanoid = v:FindFirstChild("Humanoid")
        if humanoid then
            local animator = humanoid:FindFirstChild("Animator")
            if animator then
                animator:Destroy()
            end
            humanoid:ChangeState(14)
        end
        pcall(function()
            hrp.CFrame = pos
        end)
    end
end


task.spawn(function()
	while task.wait() do
		pcall(function()
			if StartBring then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 400 then		
						local humanoid = v.Name:FindFirstChild("Humanoid")
						if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							local PosMon = PosMon:FindFirstChild("HumanoidRootPart")
							if PosMon then
							    --local Mon = {}
							       --Stop:Bring
							    --StartBring = false
							    --return Mon
								local distance = (v.HumanoidRootPart.Position - PosMon.Position).Magnitude
								if distance >= 1 and distance < 350 then
									v.HumanoidRootPart.CFrame = CFrame.new(PosMon.Position) * CFrame.New(0, math.rad(0), 0)
									v.Head.CanCollide = false
									humanoid.WalkSpeed = 0
									humanoid.JumpPower = 0
									humanoid:ChangeState(14)
									humanoid:ChangeState(11)
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy();
									end
									if v.Name:FindFirstChild("Head") and v.Head.CanCollide then
										v.Head.CanCollide = false
									end
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end
						end
					end
				end
			end
		end)
	end
end)

spawn(function()
	while wait() do
		pcall(function()
			for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
				if _G.BringMonster then
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 500 then
								v.Head.CanCollide = false;
								v.HumanoidRootPart.CanCollide = false;
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.CFrame = PosMon;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end;
								sethiddenproperty((game:GetService("Players")).LocalPlayer, "SimulationRadius", math.huge);
							end;
						elseif v.Name == MonFarm then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= _G.BringMode then
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								   --wait()								
								v.HumanoidRootPart.CFrame = PosMon;
								v.HumanoidRootPart.CanCollide = false;
								v.Head.CanCollide = false;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end;
								sethiddenproperty((game:GetService("Players")).LocalPlayer, "SimulationRadius", math.huge);
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);


(game:GetService("Players")).LocalPlayer.Idled:connect(function()
	(game:GetService("VirtualUser")):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	(game:GetService("VirtualUser")):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);


--local Players = Plr or pl and g ()

spawn(function()
    while wait() do
        pcall(function()
if AntiBypass then
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
     end
    end
end)
end
end)


spawn(function()
	for i, v in pairs((game:GetService("Workspace"))._WorldOrigin:GetChildren()) do
		pcall(function()
			if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds" then
				v:Destroy();
			end;
		end);
	end;
end);

local DiscordMy = Tabs.Main:AddParagraph({
    Title = "discord.gg/HRhHA8yuvK",
    Content = "Pls Join My Severs~-~"
})

local TestThoiByEzLove = Tabs.Main:AddParagraph({
    Title = "Discord GreenX",
    Content = "",
})

TestThoiByEzLove:SetTitle("Follow GreenX discord for latest announcements!")
TestThoiByEzLove:SetTitle("Join Discord GreenX Right Now")
TestThoiByEzLove:SetTitle("what are you waiting for join now")

Tabs.Main:AddButton({
	Title = "Join discord GreenX Hub Right Now",
	Description = "",
	Callback = function()
		setclipboard("discord.gg/HRhHA8yuvK")
	end
})


    AntiChest = Tabs.Main:AddToggle("AntiChestFlag", { Title = "Bypass Anti Cheating", Description = "anti reset acc 50%",  Default = true })
    AntiChest:OnChanged(function(Value)
        AntiBypass = Value 
        saveSettings()     
    end)
    Options.AntiChestFlag:SetValue(true)

    BypassTp = Tabs.Main:AddToggle("BypassTpFlag", { Title = "Bypass TP", Description = "", Default = false })
    BypassTp:OnChanged(function(x)
        BypassTP = x
        saveSettings()
    end)
    Options.BypassTpFlag:SetValue(false)

    TurnV4 = Tabs.Main:AddToggle("TurnV4", { Title = "Auto Active Race V4", Description = "Turn On Awakening V4", Default = false })
    TurnV4:OnChanged(function(x)
        RaceB4 = x
        saveSettings()
    end)
    Options.TurnV4:SetValue(false)
    
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if RaceB4 then
                if
                game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and
                not game.Players.LocalPlayer.Character.RaceTransformed.Value
                then                    
                    game:service("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                    task.wait()
                    game:service("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
)
            
    SelectWeapon = Tabs.Main:AddDropdown("SelectWeapon", {
        Title = "Select Weapon",
        Values = { "Melee", "Sword" },
        Multi = false,
        Default = 1,
    })

    SelectWeapon:SetValue("Melee")

    SelectWeapon:OnChanged(function(Value)
        _G.SelectWeapon = Value
        saveSettings()
    end)

    task.spawn(function()
        while wait() do
            pcall(function()
                if _G.SelectWeapon == "Melee" then
                    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                elseif _G.SelectWeapon == "Sword" then
                    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)

    SelectFarmMode = Tabs.Main:AddDropdown("SelectFarmMode", {
        Title = "Select Farm Mode",
        Values = { "Normal", "Auto Quest", "Nearest" },
        Multi = false,
        Default = 1,
    })

    SelectFarmMode:SetValue("Normal")

    SelectFarmMode:OnChanged(function(Value)
        FarmMode = Value        
        print(v)        
    end)

--local Cfr = (Cframe.New(-508839888, 451.0404357910156))
    local AutoFarm = Tabs.Main:AddToggle("AutoFarmFlag", { Title = "Stating Auto Farm", Description = "Return Farm Mix 🥳",  Default = false })
    AutoFarm:OnChanged(function(Value)
        _G.AutoFarm = Value      
        StopTween(_G.AutoFarm) 
          -- local lockTween = {}
           -- fastpos(Cfr)
        --return LockTween            
        saveSettings()
        print(v)      
    end)
    Options.AutoFarmFlag:SetValue(false)

Tabs.Main:AddSection("Mastery Section")
                    
local MasteryMode = {
	"Level Farm",
	"Nearest"
};
   SlectModeMas = Tabs.Main:AddDropdown("SlectModeMas", {
        Title = "Select Farm Mode Mastery",
        Values = MasteryMode,
        Multi = false,
        Default = 1,
   })

   SlectModeMas:SetValue("Level Farm")

   SlectModeMas:OnChanged(function(Value)
        SelectedMasteryMode = Value
   end)
    
   MasteryFd = Tabs.Main:AddToggle("FarmfruitFlag", { Title = "Auto Farm Mastery Fruits", Default = false })
   MasteryFd:OnChanged(function(Value)
        _G.AutoFarmFruitMastery = Value
          if not Fast_Attack and not DamageAura or not NeedAttacking then
         StopTween(_G.AutoFarmFruitMastery) 
         saveSettings()      
        end
   end)   
   Options.FarmfruitFlag:SetValue(false)

   MasteryFdg = Tabs.Main:AddToggle("FarmGunFlag", { Title = "Auto Farm Mastery Gun", Default = false })
   MasteryFdg:OnChanged(function(Value)
        _G.AutoFarmFruitMastery = Value
        if not Fast_Attack and not DamageAura or not NeedAttacking then                    
           StopTween(_G.AutoFarmFruitMastery)
           saveSettings()
        end
    end)
   Options.FarmGunFlag:SetValue(false)
   
--    AutoAcceptQuest = Tabs.Main:AddToggle("AutoAcceptQuestFlag", { Title = "Accept Quest", Default = false })
  --  AutoAcceptQuest:OnChanged(function(Value)
  --      _G.AcceptQuests = Value
 --   end)
--    Options.AutoAcceptQuestFlag:SetValue(false)


Tabs.Main:AddSection("Cake Prince and Bone and Dough King")


local CheckDoughKing = Tabs.Main:AddParagraph({
    Title = "Check Dough King Spawn:",
    Content = ""
})
spawn(function()
	while wait() do
		pcall(function()
		   if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
		      CheckDoughKing:SetDesc("Dough King Spawn🍡!!")
		   else
		      CheckDoughKing:SetDesc("Not Have Dough King in Severs🔴")
		   end
		end)
    end
end)
    DoughKing = Tabs.Main:AddToggle("DoughKingFlag", { Title = "Auto Kill Dough King", Description = "you need God's Chalice and 13 Conjured Cocoa and kill 500 mobs on cake islands and get the chocolate trophy to Summon and attack dough king", Default = false })
    DoughKing:OnChanged(function(Value)
        _G.Autodoughking = Value
        StopTween(_G.Autodoughking)
        saveSettings()
        print(v)
    end)
    Options.DoughKingFlag:SetValue(false)

spawn(function()
	while wait() do
		if _G.Autodoughking then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Dough King") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Dough King" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									task.wait()
									AutoHaki();
									NeedAttacking = true
									DamageAura = true									
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v.HumanoidRootPart.CFrame * Pos);									
								until not _G.Autodoughking or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);

Tabs.Main:AddSection("Settings Cake Prices")

    local AutoDoge = Tabs.Main:AddToggle("DogeSkillFlag", { Title = "Auto Doge Skill Dough Boss", Description = "Doge Skill (New Method)",  Default = true })
    AutoDoge:OnChanged(function(green)
        DogeCakeSkill = green
        print("Pos")
    end)
    Options.DogeSkillFlag:SetValue(true)
    
    SummonDough = Tabs.Main:AddToggle("SummonDoughFlag", { Title = "Summon Dough Boss Normal", Description = "", Default = true })
    SummonDough:OnChanged(function(Value)
        _G.AutoSpawnCP = Value        
        print(v)
    end)
    Options.SummonDoughFlag:SetValue(true)

    AcceptQuestv = Tabs.Main:AddToggle("AcceptQuestv", { Title = "Accept Quest Cake Prince ", Description = "and Have Cake Prince or Dough King In Sever will Teleport to and kill", Default = false })
    AcceptQuestv:OnChanged(function(Gr)
        _G.ReceiveQuestDough = Gr        
        print(v)
    end)
    Options.AcceptQuestv:SetValue(false)
    
        spawn(function() 
            while wait() do
            if _G.AutoSpawnCP then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
            end
            end
        end) 

local Mob_Kill_Cake_Prince = Tabs.Main:AddParagraph({
    Title = "Check Katakuri Normal Spawn",
    Content = ""
})

spawn(function()
	while wait() do
		pcall(function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
			else
				Mob_Kill_Cake_Prince:SetDesc("Cake Prince : Spawning!")
			end
		end)
	end
end)

    --AcceptQuestv = Tabs.Main:AddToggle("AcceptQuestv", { Title = "Accept Quest Cake Prince ", Description = "and Have Cake Prince or Dough King In Sever will Teleport to and kill", Default = false })
    --AcceptQuestv:OnChanged(function(Gr)
        --_G.ReceiveQuestDough = Gr    
          -- return    
       -- print(v)
    --end)
   -- Options.AcceptQuestv:SetValue(false)
                      
    AutoFarmDoughBoss = Tabs.Main:AddToggle("AutoFarmDoughBossFlag", { Title = "Auto Farm Katakuri", Description = "Kill 500 Mob in cake land island else have Dough Boss and Auto kill", Default = false })
    AutoFarmDoughBoss:OnChanged(function(Value)
        _G.AutoFarmPrince = Value  
        StopTween(_G.AutoFarmPrince)        
    end)
    Options.AutoFarmDoughBossFlag:SetValue(false)
--local CakeQuestPos = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)    
local CakePos = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
local Cac = game:GetService("Workspace").Enemies
task.spawn(function()
    while task.wait() do
        if _G.AutoFarmPrince then
            pcall(function()
                local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local mirrorTransparency = game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency

                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or 
                   (mirrorTransparency == 0 and (playerPos - Vector3.new(-2152.46533, 69.9830399, -12399.1357)).Magnitude > 500) then
                    topos(CFrame.new(-2152.46533, 69.9830399, -12399.1357, 0.998845279, -1.36106415e-08, 0.0480427258, 1.75027015e-08, 1, -8.05917963e-08, -0.0480427258, 8.13396142e-08, 0.998845279))
                    wait(4)
                end

                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    DogeCakeSkill = true
                                    v.Humanoid.WalkSpeed = 0
                                    --topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or
                                    game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -35, 0))
                                   else
                                     topos(v.HumanoidRootPart.CFrame * CFrame.new(4, 10, 10))
                                   end
                                    NeedAttacking = true
                                until not _G.AutoFarmPrince or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    local foundMob = false
                    for _, mobName in pairs({"Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker"}) do
                        if game:GetService("Workspace").Enemies:FindFirstChild(mobName) then
                            foundMob = true
                            break
                        end
                    end

                    if foundMob then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon) 
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                        PosMon = v.HumanoidRootPart.CFrame;
                                        MonFarm = v.Name;
                                        v.Head.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5, 40, 7))                                        
                                        NeedAttacking = true
                                        if v.Name == "Cookie Crafter" then
                                            BringMobCake(v.Name, CFrame.new(-2351.32861328125, 37.7981071472168, -12108.84375))
                                        elseif v.Name == "Cake Guard" then
                                            BringMobCake(v.Name, CFrame.new(-1608.6195068359375, 37.79800796508789, -12381.6044921875))
                                        elseif v.Name == "Baking Staff" then
                                            BringMobCake(v.Name, CFrame.new(-1865.7054443359375, 37.79812240600586, -12856.1416015625))
                                        elseif v.Name == "Head Baker" then
                                            BringMobCake(v.Name, CFrame.new(-2241.444091796875, 53.50244140625, -12868.287109375))
                                        end
                                    until not _G.AutoFarmPrince or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")
                                    DamageAura = false
                                end
                            end
                        end
                    else
                        if mirrorTransparency == 1 then
                            local RandomTele = math.random(1, 3)
                            if RandomTele == 1 then
                                topos(CFrame.new(-1436.86011, 167.753616, -12296.9512))
                            elseif RandomTele == 2 then
                                topos(CFrame.new(-2383.78979, 150.450592, -12126.4961))
                            elseif RandomTele == 3 then
                                topos(CFrame.new(-2231.2793, 168.256653, -12845.7559))
                            end
                        end

                        if BypassTP then
                            if (playerPos - CakePos.Position).Magnitude > 1500 then
                                BTP(CakePos)
                            else
                                topos(CakePos)
                            end
                        else
                            topos(CakePos)
                        end
                        UnEquipWeapon(_G.Selectweapon)
                        topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                    end
                end
            end)
        end
    end
end)    
--[[local CakePos = CFrame.new(-2322.144287109375, 451.0404357910156, -12415.951171875)
spawn(function()
	while wait() do
		if _G.AutoFarmPrince then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Cake Prince" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									task.wait();
									NeedAttacking = true
									DamageAura = true
									Fast_Attack = true									
									AutoHaki();									
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("MochiSwirl") then                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -37, 0))
                                      topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -45, 0))
                                    else                                 
									  topos(v.HumanoidRootPart.CFrame * Pos);
									end
								until not _G.AutoFarmPrince or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					end;
				elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
				elseif (game:GetService("Workspace")).Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										NeedAttacking = true
										DamageAura = true
										Fast_Attack = true
										AutoHaki();
										StartBring = true;										
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);										
									until not _G.AutoFarmPrince or (not v.Parent) or v.Humanoid.Health <= 0 or (game:GetService("Workspace")).Map.CakeLoaf.BigMirror.Other.Transparency == 0 or (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]");
									StartBring = false;								
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude > 1500 then
								BTP(CakePos);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude < 1500 then
								topos(CakePos);
							end;
						else
							topos(CakePos);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-2322.144287109375, 451.0404357910156, -12415.951171875));
					end;
				end;
			end);
		end;
	end;
end);]]
--[[    spawn(function()
        while wait() do
            if _G.ReceiveQuestDough and _G.AutoFarmPrince and not game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, "Cookie Crafter") then
                        StartBring = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartBring = false
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeQuestPos.Position).Magnitude > 3500 then
						BTP(CakeQuestPos)
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeQuestPos.Position).Magnitude < 3500 then
						topos(CakeQuestPos)
						end
					else
						topos(CakeQuestPos)
					end
                    if (CakeQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then                            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CakeQuest1",1)
					end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
                                            repeat task.wait()
                                                --if Check() then
                                                  -- Doge(1)
                                              --  break
                                                 --  Doge(2)
                                               -- end                                                
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                NeedAttacking = true
                                                DamageAura = true
                                                Fast_Attack = true                                                                                                                                          
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name;
                                                StartBring = true
                                                if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("MochiSwirl") then                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -37, 0))                                                                                    
                                                  topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                                                else                                 
									               topos(v.HumanoidRootPart.CFrame * Pos);
									            end									
                                                --topos(v.HumanoidRootPart.CFrame * Pos);
                                            until not _G.AutoFarmPrince or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                        else
                                            StartBring = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            StartBring = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                             topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                            end
                        end
                    end
                end)
            end
        end
    end)]]

Tabs.Main:AddSection("Bone Farming")    
local ListB = {
	"No Quest",
	"Quest",
    "MasteryFruit",
	"MasteryGun"
}
    SelectFarmModeH = Tabs.Main:AddDropdown("SelectFarmModeH", {
        Title = "Select Bone Mode",
        Values = ListB,
        Multi = false,
        Default = 1,
    })

    SelectFarmModeH:SetValue("No Quest")

    SelectFarmModeH:OnChanged(function(Value)
        BoneFMode = Value
        print(v)
    end)

    local RandomBone = Tabs.Main:AddToggle("RandomBoneFlag", {Title = "Random Bone", Default = false })

    RandomBone:OnChanged(function(Value)
		_G.Auto_Random_Bone = Value
		saveSettings()
    end)

    spawn(function()
            while wait(0) do
                if _G.Auto_Random_Bone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
    end)
Options.RandomBoneFlag:SetValue(false)    
    AutoBone = Tabs.Main:AddToggle("AutoBoneFlag", { Title = "Auto Farm Bones", Description = "Farm Bone Item Bone Max 5000", Default = false })
    AutoBone:OnChanged(function(Value)
        _G.Auto_Bone = Value
        StopTween(_G.Auto_Bone)
        saveSettings()
        print(v)
    end)
    Options.AutoBoneFlag:SetValue(false)
    
 ----
if World1 then
	tableBoss = {
		"The Gorilla King",
		"Bobby",
		"Yeti",
		"Mob Leader",
		"Vice Admiral",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
		"Saber Expert"
	};
elseif World2 then
	tableBoss = {
		"Diamond",
		"Jeremy",
		"Fajita",
		"Don Swan",
		"Smoke Admiral",
		"Cursed Captain",
		"Darkbeard",
		"Order",
		"Awakened Ice Admiral",
		"Tide Keeper"
	};
elseif World3 then
	tableBoss = {
		"Stone",
		"Island Empress",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"rip_indra True Form",
		"Longma",
		"Soul Reaper",
		"Cake Queen"
	};
end;

Tabs.Main:AddSection("Boss Farming") 

    local BossInfo = Tabs.Main:AddParagraph({
        Title = "Boss Status:",
        Content = "Misc"
    })
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage")):FindFirstChild(_G.SelectBoss) or (game:GetService("Workspace")).Enemies:FindFirstChild(_G.SelectBoss) then
				BossInfo:SetDesc("Status : Spawn!");
			else
				BossInfo:SetDesc("Status : Boss Not Spawn");
			end;
		end);
	end;
end);
    
    ListBossNe = Tabs.Main:AddDropdown("ListBossNe", {
        Title = "Select Boss",
        Values = tableBoss,
        Multi = false,
        Default = 1,
    })
    ListBossNe:SetValue("Stone")
    ListBossNe:OnChanged(function(Value)
        _G.SelectBoss = Value
        saveSettings()
    end)
    
    local FarmBosss = Tabs.Main:AddToggle("FarmBosssFlag", { Title = "Auto Farm Boss", Description = "Select Boss above to hit",  Default = false })
    FarmBosss:OnChanged(function(Value)
	   (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
	   _G.AutoFarmBoss = Value;
	   StopTween(_G.AutoFarmBoss);
	   saveSettings()
    end)
    Options.FarmBosssFlag:SetValue(false)

    local farmAllBos = Tabs.Main:AddToggle("farmAllBosFlag", { Title = "Auto Farm All Boss In Severs", Description = "when turn on toggle this will check the boss in the servers and Teleport to it and kill it",  Default = false })
    farmAllBos:OnChanged(function(Value)
	   (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
	   _G.AutoFarmAllBoss = Value;
	   StopTween(_G.AutoFarmAllBoss)
	   saveSettings()
    end)
    Options.farmAllBosFlag:SetValue(false)

spawn(function()
	while wait() do
		if _G.AutoFarmAllBoss then
			pcall(function()
				for i, boss in pairs(tableBoss) do
					if (game:GetService("Workspace")).Enemies:FindFirstChild(boss) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == boss then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
										topos(v.HumanoidRootPart.CFrame * Pos);										
										sethiddenproperty((game:GetService("Players")).LocalPlayer, "SimulationRadius", math.huge);
									until not _G.AutoFarmAllBoss or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					elseif (game:GetService("ReplicatedStorage")):FindFirstChild(boss) then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild(boss)).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2));
					end;
				end;
			end);
		end;
	end;
end);
    
spawn(function()
	while wait() do
		if _G.AutoFarmBoss then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild(_G.SelectBoss) then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == _G.SelectBoss then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									task.wait();
									NeedAttacking = true
									DamageAura = true
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v.HumanoidRootPart.CFrame * Pos);									
									sethiddenproperty((game:GetService("Players")).LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoFarmBoss or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					end;
				elseif (game:GetService("ReplicatedStorage")):FindFirstChild(_G.SelectBoss) then
					topos(((game:GetService("ReplicatedStorage")):FindFirstChild(_G.SelectBoss)).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2));
				end;
			end);
		end;
	end;
end);
if World1 and World2 or World3 then
  Tabs.Main:AddSection("Material Farming") 
end

Tabs.Main:AddSection("World 2 Farm")   
    RadioactiveFarm = Tabs.Main:AddToggle("RadioactiveFarmFlag", { Title = "Stating Farm Radioactive Material", Default = false })
    RadioactiveFarm:OnChanged(function(Value)
        _G.MinGaming = Value
        StopTween(_G.MinGaming)         
    end)
    Options.RadioactiveFarmFlag:SetValue(false)

	local MaterialsPos1 = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312);
	spawn(function()
		while wait() do
			if _G.MinGaming and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Factory Staff") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Factory Staff" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);										
									until not _G.MinGaming or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos1.Position).Magnitude > 1500 then
								BTP(MaterialsPos1);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos1.Position).Magnitude < 1500 then
								topos(MaterialsPos1);
							end;
						else
							topos(MaterialsPos1);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Factory Staff") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Factory Staff")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);


    local FarmMythial = Tabs.Main:AddToggle("FarmMythial", { Title = "Auto Farm Mystic Droplet", Description = "function Sea 2", Default = false })
    FarmMythial:OnChanged(function(Value)
         _G.TaisaoGreenX = Value
        StopTween(_G.TaisaoGreenX)
    end)

	local MaterialsPos2 = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875);
	spawn(function()
		while wait() do
			if _G.TaisaoGreenX then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Water Fighter") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Water Fighter" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										DamageAura = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.TaisaoGreenX or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos2.Position).Magnitude > 1500 then
								BTP(MaterialsPos2);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos2.Position).Magnitude < 1500 then
								topos(MaterialsPos2);
							end;
						else
							topos(MaterialsPos2);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Water Fighter") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Water Fighter")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
  
    local Skibidi = Tabs.Main:AddToggle("Skibidi", { Title = "Starting Farm Magma Ore", Description = "function Sea 2 and Sea 1", Default = false })
    Skibidi:OnChanged(function(Value)
        _G.FarmingOreeDee = Value
        StopTween(_G.FarmingOreeDee) -- Gg
    end)      

	local MaterialsPos3 = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875);
	spawn(function()
		while wait() do
			if _G.FarmingOreeDee and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Military Spy") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Military Spy" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										DamageAura = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.FarmingOreeDee or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos3.Position).Magnitude > 1500 then
								BTP(MaterialsPos3);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos3.Position).Magnitude < 1500 then
								topos(MaterialsPos3);
							end;
						else
							topos(MaterialsPos3);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Military Spy") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Military Spy")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos4 = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375);
	spawn(function()
		while wait() do
			if _G.FarmingOreeDee and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Lava Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										DamageAura = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.FarmingOreeDee or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos4.Position).Magnitude > 1500 then
								BTP(MaterialsPos4);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos4.Position).Magnitude < 1500 then
								topos(MaterialsPos4);
							end;
						else
							topos(MaterialsPos4);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Lava Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
-- 90% update 

Tabs.Main:AddSection("Sea 1 Farm")  
    local Wing_Farm = Tabs.Main:AddToggle("Wing_Farm", { Title = "Starting Farm angel Wing", Description = "function Sea 1", Default = false })
    Wing_Farm:OnChanged(function(Value)
         _G.FarmingWinggagle = Value
        StopTween(_G.FarmingWinggagle) -- Auto_Wing
    end)      

	local MaterialsPos5 = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375);
	spawn(function()
		while wait() do
			if _G.FarmingWinggagle then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Royal Soldier") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Royal Soldier" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										DamageAura = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.FarmingWinggagle or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos5.Position).Magnitude > 1500 then
								BTP(MaterialsPos5);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos5.Position).Magnitude < 1500 then
								topos(MaterialsPos5);
							end;
						else
							topos(MaterialsPos5);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Royal Soldier") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Royal Soldier")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);

Tabs.Main:AddSection("All Sea") 
if World1 or World2 or Wolrd3 then    
    local LeatherDa = Tabs.Main:AddToggle("LeatherDa", { Title = "Starting Farm Leather", Description = "", Default = false })
    LeatherDa:OnChanged(function(Value)
         _G.GreenX = Value
        StopTween(_G.GreenX)
    end)      

	local MaterialsPos6 = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625);
	spawn(function()
		while wait() do
			if _G.GreenX and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										DamageAura = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.GreenX or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos6.Position).Magnitude > 1500 then
								BTP(MaterialsPos6);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos6.Position).Magnitude < 1500 then
								topos(MaterialsPos6);
							end;
						else
							topos(MaterialsPos6);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos7 = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375);
	spawn(function()
		while wait() do
			if _G.GreenX and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Marine Captain") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Marine Captain" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										DamageAura = true
										NeedAttacking = true
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.GreenX or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos7.Position).Magnitude > 1500 then
								BTP(MaterialsPos7);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos7.Position).Magnitude < 1500 then
								topos(MaterialsPos7);
							end;
						else
							topos(MaterialsPos7);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Marine Captain") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Marine Captain")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos8 = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375);
	spawn(function()
		while wait() do
			if _G.GreenX and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Jungle Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Jungle Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										DamageAura = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.GreenX or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos8.Position).Magnitude > 1500 then
								BTP(MaterialsPos8);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos8.Position).Magnitude < 1500 then
								topos(MaterialsPos8);
							end;
						else
							topos(MaterialsPos8);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Jungle Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Jungle Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World1 or World2 or World3 then        
     local Ectoplasm = Tabs.Main:AddToggle("Ectoplasm", { Title = "Starting Farm Ectoplasm", Description = "", Default = false })
    Ectoplasm:OnChanged(function(Value)
        _G.FarmingDoBan = Value
        StopTween(_G.FarmingDoBan)        
    end)      

    local ScrapMetal = Tabs.Main:AddToggle("ScrapMetal", { Title = "Starting Farm Scrap Metal", Description = "", Default = false })
    ScrapMetal:OnChanged(function(Value)
        _G.FarmCucSat = Value -- function by Ezlove nguoi viet nam
        StopTween(_G.FarmCucSat)
    end)      
	local MaterialsPos9 = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125);
	spawn(function()
		while wait() do
			if _G.FarmCucSat and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Brute") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Brute" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										DamageAura = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.FarmCucSat or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos9.Position).Magnitude > 1500 then
								BTP(MaterialsPos9);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos9.Position).Magnitude < 1500 then
								topos(MaterialsPos9);
							end;
						else
							topos(MaterialsPos9);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Brute") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Brute")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos10 = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125);
	spawn(function()
		while wait() do
			if _G.FarmCucSat and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Mercenary") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Mercenary" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										DamageAura = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.FarmCucSat or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos10.Position).Magnitude > 1500 then
								BTP(MaterialsPos10);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos10.Position).Magnitude < 1500 then
								topos(MaterialsPos10);
							end;
						else
							topos(MaterialsPos10);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Mercenary") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mercenary")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos11 = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875);
	spawn(function()
		while wait() do
			if _G.FarmCucSat and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Pirate Millionaire") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Pirate Millionaire" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										NeedAttacking = true
										DamageAura = true
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										StartBring = true;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.FarmCucSat or (not v.Parent) or v.Humanoid.Health <= 0;
									StartBring = false;
								end;
							end;
						end;
					else
						if BypassTP then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos11.Position).Magnitude > 1500 then
								BTP(MaterialsPos11);
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos11.Position).Magnitude < 1500 then
								topos(MaterialsPos11);
							end;
						else
							topos(MaterialsPos11);
						end;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Pirate Millionaire") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pirate Millionaire")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;

spawn(function()
	pcall(function()
		while wait() do
			if _G.FarmingDoBan then
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Deckhand") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Engineer") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Steward") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Officer") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								NeedAttacking = true
								DamageAura = true
								if string.find(v.Name, "Ship") then
									v.HumanoidRootPart.CanCollide = false;
									v.Head.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v.HumanoidRootPart.CFrame * Pos)								;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									StartBring = true;
								else
									StartBring = false;
									topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
								end;
							until _G.FarmingDoBan == false or (not v.Parent) or v.Humanoid.Health <= 0;
							StartBring = false;
						end;
					end;
				else
					local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
					if Distance > 18000 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
					end;
					topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
				end;
			end;
		end;
	end);
end);
        

    
    --Sub Farm
   if World1 then
   ChevkS = Tabs.Sub:AddParagraph({
        Title = "More Function then go To Sea 2 and Sea 3 ",
        Content = "Updated"
   })
  
   AutoSaberQuest = Tabs.Sub:AddToggle("AutoSaberQuestFlag", { Title = "Complete Saber Quest", Default = false })
   AutoSaberQuest:OnChanged(function(Value)
        _G.Auto_Saber = Value
        StopTween(_G.Auto_Saber)
        saveSettings()
   end)
    Options.AutoSaberQuestFlag:SetValue(false)
end

Tabs.Sub:AddSection("Farming Melee")

    GoodHuman = Tabs.Sub:AddToggle("GoodHumanFlag", { Title = "Auto Get Melee GoodHuman", Description = "request: 4 Melee above 400 Mastery: Superhuman, DeathStep, Electric Claw, SharkMan Karate", Default = false })
    GoodHuman:OnChanged(function(Value)
        _G.Auto_God_Human = Value
        saveSettings()
    end)
    Options.GoodHumanFlag:SetValue(false)

spawn(function()
	while task.wait() do
		if _G.Auto_God_Human then
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")).Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman")).Level.Value >= 400 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
						end;
					else
						Green:create("Not Have Superhuman");
					end;
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step")).Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Character:FindFirstChild("Death Step")).Level.Value >= 400 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
						end;
					else
						Green:create("Not Have Death Step");
					end;
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate")).Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate")).Level.Value >= 400 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						end;
					else
						Green:create("Not Have Sharkman Karate");
					end;
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw")).Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw")).Level.Value >= 400 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
						end;
					else
						Green:create("Not Have Electric Claw");
					end;
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon")).Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon")).Level.Value >= 400 then
							if string.find((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
								Green:create("Not Have Enough Material");
							else
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman");
							end;
						end;
					else
						Green:create("Not Have Dragon Talon");
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
				end;
			end);
		end;
	end;
end);

    DeathStep = Tabs.Sub:AddToggle("DeathStepFlag", { Title = "Auto Get Death Step V2", Description = "request: Black Leg V1 --> 450 Mastery", Default = false })
    DeathStep:OnChanged(function(Value)
        _G.AutoDeathStep = Value
        saveSettings()
    end)
    Options.DeathStepFlag:SetValue(false)

spawn(function()
	while wait() do
		wait();
		if _G.AutoDeathStep then
			if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value >= 450 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end;
				if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg")).Level.Value >= 450 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end;
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value <= 449 then
					_G.SelectWeapon = "Black Leg";
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
			end;
		end;
	end;
end);
    
    SharkMan = Tabs.Sub:AddToggle("SharkManFlag", { Title = "Auto Get Shark Man Karate", Description = "request: Fishman Karate --> 400 Mastery", Default = false })
    SharkMan:OnChanged(function(Value)
        _G.AutoSharkman = Value
        StopTween(_G.AutoSharkman)
        saveSettings()
    end)
    Options.SharkManFlag:SetValue(false)
    
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoSharkman then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
				if string.find((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
					if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Water Key") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Water Key") then
						topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					elseif (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate")).Level.Value >= 400 then
					else
						Ms = "Tide Keeper";
						if (game:GetService("Workspace")).Enemies:FindFirstChild(Ms) then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == Ms then
									OldCFrameShark = v.HumanoidRootPart.CFrame;
									repeat
										task.wait(_G.FastAttackDelay);
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v.Head.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameShark;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
										AttackNoCD();
									until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Water Key") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Water Key");
								end;
							end;
						else
							topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -0.000000013857326, 0.885206044, 0.0000000040332897, 1, 0.0000000135347511, -0.885206044, -0.00000000272606271, 0.465199202));
							wait(3);
						end;
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
				end;
			end;
		end;
	end);
end);
    
    ElectricClaw = Tabs.Sub:AddToggle("ElectricClawFlag", { Title = "Auto Get Electric Claw", Description = "request: Electro ---> 400 Mastery", Default = false })
    ElectricClaw:OnChanged(function(Value)
        _G.AutoElectricClaw = Value
        StopTween(_G.AutoElectricClaw)
        saveSettings()
    end)
    Options.ElectricClawFlag:SetValue(false)

spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoElectricClaw then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") then
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 400 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end;
					if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 400 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end;
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value <= 399 then
						_G.SelectWeapon = "Electro";
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
				end;
			end;
			if _G.AutoElectricClaw then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") then
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 400 or ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 400 then
						if _G.AutoFarm == false then
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.AutoElectricClaw or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
							until not _G.AutoElectricClaw or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-12550.532226563), 336.22631835938, (-7510.4233398438))).Position).Magnitude <= 10;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.AutoElectricClaw or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						elseif _G.AutoFarm == true then
							_G.AutoFarm = false;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.AutoElectricClaw or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
							until not _G.AutoElectricClaw or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-12550.532226563), 336.22631835938, (-7510.4233398438))).Position).Magnitude <= 10;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.AutoElectricClaw or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
							_G.SelectWeapon = "Electric Claw";
							wait(0.1);
							_G.AutoFarm = true;
						end;
					end;
				end;
			end;
		end;
	end);
end);
    
    DragonTalon = Tabs.Sub:AddToggle("DragonTalonFlag", { Title = "Auto Get Dragon Talon", Description = "request: Dragon Claw --> 400 Mastery", Default = false })
    DragonTalon:OnChanged(function(Value)
        _G.AutoDragonTalon = Value
    end)
    Options.DragonTalonFlag:SetValue(false)

spawn(function()
	while wait() do
		if _G.AutoDragonTalon then
			if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end;
				if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end;
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value <= 399 then
					_G.SelectWeapon = "Dragon Claw";
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
			end;
		end;
	end;
end);
        
    SuperHuman = Tabs.Sub:AddToggle("SuperHumanFlag", { Title = "Auto Super Human", Description = "Fully Get Super Human", Default = false })
    SuperHuman:OnChanged(function(Value)
        _G.AutoSuperhuman = Value
    end)
    Options.SuperHumanFlag:SetValue(false)

spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoSuperhuman then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 150000 then
					UnEquipWeapon("Combat");
					wait(0.1);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
				end;
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.SelectWeapon = "Superhuman";
				end;
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value <= 299 then
						_G.SelectWeapon = "Black Leg";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value <= 299 then
						_G.SelectWeapon = "Electro";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate")).Level.Value <= 299 then
						_G.SelectWeapon = "Fishman Karate";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value <= 299 then
						_G.SelectWeapon = "Dragon Claw";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 300000 then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 300000 then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 750000 then
						UnEquipWeapon("Electro");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 750000 then
						UnEquipWeapon("Electro");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate")).Level.Value >= 300 and (game:GetService("Players")).Localplayer.Data.Fragments.Value >= 1500 then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate")).Level.Value >= 300 and (game:GetService("Players")).Localplayer.Data.Fragments.Value >= 1500 then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 3000000 then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 3000000 then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
					end;
				end;
			end;
		end;
	end);
end);

Tabs.Sub:AddSection("Get Items")
    AutoGetHallowScythe = Tabs.Sub:AddToggle("AutoGetHallowScytheFlag", { Title = "Get Hallow Scythe (Soul Reaper)", Description = "Random Bone when will Soul Reaper item be released ", Default = false })
    AutoGetHallowScythe:OnChanged(function(Value)
        _G.AutoFarmBossHallow = Value
        StopTween(_G.AutoFarmBossHallow)
        saveSettings()
    end)
    Options.AutoGetHallowScytheFlag:SetValue(false)

    AutoSoulGui = Tabs.Sub:AddToggle("AutoSoulGuiFlag", { Title = "Complete Quest Soul Guitar", Description = "Fully hop server to find items", Default = false })
    AutoSoulGui:OnChanged(function(Value)
        _G.AutoNevaSoulGuitar = Value
        StopTween(_G.AutoNevaSoulGuitar)
        saveSettings()
    end)
    Options.AutoSoulGuiFlag:SetValue(false)

  task.spawn(function()
	while wait() do
		pcall(function()
			if GetWeaponInventory("Soul Guitar") == false then
				if _G.AutoNevaSoulGuitar then
					if GetCountMaterials("Bones") >= 500 and GetCountMaterials("Ectoplasm") >= 250 and GetCountMaterials("Dark Fragment") >= 1 then
					    Green:create("Farm 500 Bone Starting...")
					    wait(5)
					    Green:create("Farming 250 Ectoplasm...")
					    wait(10)
					    Green:create("Dark Fragment Finder...") -- Cặc
						if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
							if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
								local Remotes = game.ReplicatedStorage:WaitForChild("Remotes");
								local __CommF = Remotes:WaitForChild("CommF_");
								local GuitarProgress = __CommF:InvokeServer("GuitarPuzzleProgress", "Check");
								if not GuitarProgress then 
									local gravestoneEvent = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
									if gravestoneEvent == true then
										__CommF:InvokeServer("gravestoneEvent", 2, true);
									else 
										if _G.AutoNevaSoulGuitarHop then
										Green:create("Waiting Hop Find Items...")
											Hop()
										end -- end 
									end;
								end
								if GuitarProgress then 
									local Swamp = GuitarProgress.Swamp;
									local Gravestones = GuitarProgress.Gravestones;
									local Ghost = GuitarProgress.Ghost;
									local Trophies = GuitarProgress.Trophies;
									local Pipes = GuitarProgress.Pipes;
									local CraftedOnce = GuitarProgress.CraftedOnce;
									if Swamp and Gravestones and Ghost and Trophies and Pipes then 
										_G.AutoNevaSoulGuitar = false
									end
									if not Swamp then 
										repeat wait() 
											topos(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) * CFrame.new(0,30,0))
										until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Living Zombie" then
												if v:FindFirstChild('Humanoid') then 
													if v:FindFirstChild('HumanoidRootPart') then 
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then 
															repeat wait() 
																AutoHaki()
                                                                EquipWeapon(_G.SelectWeapon)
                                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                v.HumanoidRootPart.Transparency = 1
                                                                v.Humanoid.JumpPower = 0
                                                                v.Humanoid.WalkSpeed = 0
                                                                v.HumanoidRootPart.CanCollide = false
                                                                PosMon = v.HumanoidRootPart.CFrame
                                                                MonFarm = v.Name
                                                               AttackNoCD()
															until not v.Parent or v.Humanoid.Health <= 0 or not  v:FindFirstChild('HumanoidRootPart') or not v:FindFirstChild('Humanoid') or not _G.AutoNevaSoulGuitar
															StartSoulGuitarMagnt = false
														end
													end
												end
											end
										end   
									end
									wait(1)
									if Swamp and not Gravestones then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Gravestones");
									end
									wait(1)
									if Swamp and  Gravestones and not Ghost then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Ghost");
									end 
									wait(1)
									if  Swamp and  Gravestones and Ghost and not Trophies then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Trophies");
									end
									wait(1)
									if  Swamp and  Gravestones and Ghost and Trophies and not Pipes then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Pipes");
									end
								end
							else
								if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
									print("Go to Grave")
									toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
								elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
									print("Wait Next Night")
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
								end
							end
						else
							topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
						end
					else
						if GetCountMaterials("Ectoplasm") <= 250 then
							if World2 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait(_G.FastAttackDelay)
													AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    StartBring = true
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    AttackNoCD()
												until not _G.AutoNevaSoulGuitar or not v.Parent or v.Humanoid.Health <= 0
												StartBring = false
											end
										end
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						elseif GetCountMaterials("Dark Fragment") <= 1 then
							if World2 then
								if game.ReplicatedStorage:FindFirstChild("Darkbeard") or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Darkbeard" and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat task.wait(_G.FastAttackDelay)
												AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                 v.HumanoidRootPart.Transparency = 1
                                                 v.Humanoid.JumpPower = 0
                                                 v.Humanoid.WalkSpeed = 0
                                                 v.HumanoidRootPart.CanCollide = false
                                                 AttackNoCD()
											until _G.AutoNevaSoulGuitar or v.Humanoid.Health <= 0
										end
									end
								else
									topos(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						elseif GetCountMaterials("Bones") <= 500 then
							if World3 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait(_G.FastAttackDelay)
												AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                StartBring = true
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                 v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                 v.HumanoidRootPart.Transparency = 1
                                                 v.Humanoid.JumpPower = 0
                                                 v.Humanoid.WalkSpeed = 0
                                                 v.HumanoidRootPart.CanCollide = false
                                                 PosMon = v.HumanoidRootPart.CFrame
                                                 MonFarm = v.Name
                                                 AttackNoCD()
												until not _G.AutoNevaSoulGuitar or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
												StartBring = false
											end
										end
									end
								else
									topos(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
							end
						end
					end
				end
			end
		end)
	end
end)
    AutoYamaa = Tabs.Sub:AddToggle("AutoYamaaFlag", { Title = "Auto Get Yama Sword", Description = "Have you killed all 30 elite hunters?", Default = false })
    AutoYamaa:OnChanged(function(Value)
        _G.AutoYama = Value
        StopTween(_G.AutoYama)
        saveSettings()
    end)
    Options.AutoYamaaFlag:SetValue(false)
    
    AutoTusshita = Tabs.Sub:AddToggle("AutoTusshitaFlag", { Title = "Auto Get Tushita Sword", Description = "Need Rip_Indra Spawn", Default = false })
    AutoTusshita:OnChanged(function(Value)
        _G.Autotushita = Value
        StopTween(_G.Autotushita)
        saveSettings()
    end)
    Options.AutoTusshitaFlag:SetValue(false)
    
spawn(function()
	while wait() do
		if _G.AutoYama then
			if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
				repeat
					wait(0.1);
					fireclickdetector((game:GetService("Workspace")).Map.Waterfall.SealedKatana.Handle.ClickDetector);
				until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Yama") or (not _G.AutoYama);
			end;
		end;
	end;
end);

Tabs.Sub:AddSection("Elite Farm")	
local Elite_Hunter_Status = Tabs.Sub:AddParagraph({
    Title = "Elite Hunter Status: ",
    Content = ""
})

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                Elite_Hunter_Status:SetDesc("Elite Status : Spawned | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            else
                Elite_Hunter_Status:SetDesc("Elite Status : Despawned | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") then
                Elite_Hunter_Status:SetTitle("Elite Hunter Name : Diablo")
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then
                Elite_Hunter_Status:SetTitle("Elite Hunter Name : Deandre")	
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                Elite_Hunter_Status:SetTitle("Elite Hunter Name : Urban")
            else
                Elite_Hunter_Status:SetTitle("Elite Hunter Name : Not Have Elite")
            end
        end)
    end
end)
--spawn(function()
	--while wait() do
	--	pcall(function()
		--	if (game:GetService("ReplicatedStorage")):FindFirstChild("Diablo") or (game:GetService("ReplicatedStorage")):FindFirstChild("Deandre") or (game:GetService("ReplicatedStorage")):FindFirstChild("Urban") or (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
				--Elite_Hunter_Status:SetDesc("Status : Elite Spawn!");
				--  return "Spawn"
		 	 --   elseif
			--      return "Not"			    
		--		Elite_Hunter_Status:SetDesc("Status : Elite Not Spawn");
--			end;
--		end);
--	end;
--end);


Tabs.Sub:AddButton({
    Title = "Check Progress Elite",
    Description = "Clicker check in",
    Callback = function()
       Green:create("Elite Hunter Progress : ".. (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress"));     
    end
})

    GreenX = Tabs.Sub:AddToggle("GreenXFlag", {Title = "Auto Elite Hunter", Description = "if you are lucky you will drop the God's Chalice item", Default = false })
    GreenX:OnChanged(function(Value)
        _G.AutoElitehunter = Value
        StopTween(_G.AutoElitehunter)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
		saveSettings()
    end)
Options.GreenXFlag:SetValue(false)    
    local GreenXXJ = Tabs.Sub:AddToggle("GreenXXJFlag", {Title = "Auto Elite Hunter Hop", Default = false })

    GreenXXJ:OnChanged(function(Value)
        _G.AutoEliteHunterHop = Value
        StopTween(_G.AutoEliteHunterHop)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        saveSettings()
    end)
Options.GreenXXJFlag:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoElitehunter then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                NeedAttacking = true
                                                DamageAura = true
                                                Fast_Attack = true
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0                                                
                                                topos(v.HumanoidRootPart.CFrame * Pos);
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
										end
									end
								end
							else
							NeedAttacking = false
								if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
								end
							end                    
						end
					else					
						if _G.AutoEliteHunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
							Hop()
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)
Tabs.Sub:AddSection("Rip_indra and Get Cdk Quest")	
    GetripDraFD = Tabs.Sub:AddToggle("GetripDraFDFlag", { Title = "Auto Press Haki Button", Description = "Need 3 Haki Legendary Color to summon rip_indra", Default = false })
    GetripDraFD:OnChanged(function(Value)
        Open_Color_Haki = Value
        StopTween(Open_Color_Haki)
        saveSettings()
    end)
    Options.GetripDraFDFlag:SetValue(false)
    
spawn(function()
	while wait(0.3) do
		pcall(function()
			if Open_Color_Haki then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
				wait(0.5);
				repeat
					topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208));
					wait();
				until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-5420.16602), 1084.9657, (-2666.8208))).Magnitude <= 10;
				wait(0.5);
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
				wait(0.5);
				repeat
					topos(CFrame.new(-5414.41357, 309.865753, -2212.45776));
					wait();
				until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-5414.41357), 309.865753, (-2212.45776))).Magnitude <= 10;
				wait(0.5);
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Snow White");
				wait(0.5);
				repeat
					topos(CFrame.new(-4971.47559, 331.565765, -3720.02954));
					wait();
				until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-4971.47559), 331.565765, (-3720.02954))).Magnitude <= 10;
				wait(0.5);
				(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
				wait(3);
				(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
			end;
		end);
	end;
end);

local CheckRip = Tabs.Sub:AddParagraph({
    Title = "Rip Indra Status:",
    Content = ""
})
spawn(function()
	while wait() do
		pcall(function()
		   if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
		      CheckRip:SetDesc("Rip_Indra Spawn🟢!!")
		   else
		      CheckRip:SetDesc("Not Have Rip_Indra in Severs🔴")
		   end
		end)
    end
end)
    
    GetripDra = Tabs.Sub:AddToggle("GetripDraFlag", { Title = "Auto Kill Rip_indra", Description = "Need God's Chalice and 3 Haki Legendary Color", Default = false })
    GetripDra:OnChanged(function(Value)
        _G.AutoDarkDagger = Value
        StopTween(_G.AutoDarkDagger)
        saveSettings()
    end)
    Options.GetripDraFlag:SetValue(false)
    
local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781);
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoDarkDagger then
				if (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra True Form") or (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									NeedAttacking = true									
									EquipWeapon(_G.SelectWeapon);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v.HumanoidRootPart.CFrame * Pos);
									AttackNoCD();
								end);
							until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0;
						end;
					end;
				else
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude > 1500 then
							BTP(AdminPos);
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude < 1500 then
							topos(AdminPos);
						end;
					else
						topos(AdminPos);
					end;
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781));
				end;
			end;
		end;
	end);
end);
    
    GetCdkDj = Tabs.Sub:AddToggle("GetCdkDjFlag", { Title = "Auto Complete Quest Cursed Dual Katana", Description = "[Remake] Fully First you need 2 Swords : Yama,Tushita Note: must achieve Mastery tushita and yama 400", Default = false })
    GetCdkDj:OnChanged(function(Value)
        Auto_Cursed_Dual_Katana = Value
        if Value then
           return Auto_Cursed_Dual_Katana
        end
        StopTween(Auto_Cursed_Dual_Katana)
        --CheckQuestCdk()
          -- print("quest", string.find["CDK"].nil)     
    end)
    Options.GetCdkDjFlag:SetValue(false)


spawn(function()
	while wait() do
		if _G.Autotushita then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra True Form") then
					ripIndraSpawn = true;
				elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Longma") then
					longmaSpawn = true;
				end;
				if not (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra True Form") or (not (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra")) then
					repeat
						wait(1);
						print("Rip Indra Not Spawn");
					until not _G.Autotushita or (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra True Form") or (not (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra"));
				elseif not (game:GetService("Workspace")).Enemies:FindFirstChild("Longma") then
					repeat
						wait(1);
						print("Longma Not Spawn");
					until not _G.Autotushita or (game:GetService("Workspace")).Enemies:FindFirstChild("Longma");
				end;
				if ripIndraSpawn and longmaSpawn then
					topos(CFrame.new(5154.85303, 141.812225, 913.080933, 0.138356507, 0.0000000517637666, 0.990382493, 0.0000000459496796, 1, -0.0000000586856146, -0.990382493, 0.0000000536272928, 0.138356507));
					if ((CFrame.new(5154.85303, 141.812225, 913.080933, 0.138356507, 0.0000000517637666, 0.990382493, 0.0000000459496796, 1, (-0.0000000586856146), (-0.990382493), 0.0000000536272928, 0.138356507)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
						wait(2);
						Torch = true;
					end;
				end;
				local Torch1CFrame = (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch1.Particles.CFrame;
				local Torch2CFrame = (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch2.Particles.CFrame;
				local Torch3CFrame = (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch3.Particles.CFrame;
				local Torch4CFrame = (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch4.Particles.CFrame;
				local Torch5CFrame = (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch5.Particles.CFrame;
				if Torch then
					topos(Torch1CFrame);
					if (Torch1CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
						wait(1);
						Torch1 = true;
					end;
					if Torch1 then
						topos(Torch2CFrame);
						if (Torch2CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
							wait(1);
							Torch2 = true;
						end;
					end;
					if Torch2 then
						topos(Torch3CFrame);
						if (Torch3CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
							wait(1);
							Torch3 = true;
						end;
					end;
					if Torch3 then
						topos(Torch4CFrame);
						if (Torch4CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
							wait(1);
							Torch4 = true;
						end;
					end;
					if Torch4 then
						topos(Torch5CFrame);
						if (Torch5CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
							wait(1);
							Torch5 = true;
						end;
					end;
					if Torch5 then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Longma" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v.HumanoidRootPart.CFrame * Pos);
										(game:GetService("VirtualUser")):CaptureController();
										(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
									until not _G.Autotushita or (not v.Parent) or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Tushita") or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);

if World2 then
    AutoDarkCoat = Tabs.Sub:AddToggle("AutoDarkCoatFlag",
        { Title = "Get Dark Coat (DarkBeard)", Description = "+ Dark Fragments", Default = false })
    AutoDarkCoat:OnChanged(function(Value)
        _G.AutoDarkCoat = Value
        StopTween(_G.AutoDarkCoat)
    end)
    Options.AutoDarkCoatFlag:SetValue(false)

    AutoCompleteBartiloQuest = Tabs.Sub:AddToggle("AutoCompleteBartiloQuestFlag",
        { Title = "Complete Bartilo Quest", Description = "", Default = false })
    AutoCompleteBartiloQuest:OnChanged(function(Value)
        _G.AutoBartilo = Value
        StopTween(_G.AutoBartilo)
    end)
    Options.AutoCompleteBartiloQuestFlag:SetValue(false)

    AutoFatoryRaid = Tabs.Sub:AddToggle("AutoFatoryRaidFlag",
        { Title = "Auto Fatory Raid", Description = "", Default = false })
    AutoFatoryRaid:OnChanged(function(Value)
        _G.AutoFactory = Value
        StopTween(_G.AutoFactory)
    end)
    Options.AutoFatoryRaidFlag:SetValue(false)
end

    AutoPirateRaid = Tabs.Sub:AddToggle("AutoPirateRaidFlag",
        { Title = "Auto Pirate Raid", Description = "pirate raid it only comes out once an hour", Default = false })
    AutoPirateRaid:OnChanged(function(Value)
        _G.RaidPirate = Value
        StopTween(_G.RaidPirate)
    end)
    Options.AutoPirateRaidFlag:SetValue(false)

    ---settings

    TweeningSpeed = Tabs.Settings:AddDropdown("TweeningSpeed", {
        Title = "Tweening Speed",
        Values = { "100", "150", "200", "250", "300", "350" },
        Multi = false,
        Default = 1,
    })

    TweeningSpeed:SetValue("300")

    TweeningSpeed:OnChanged(function(Value)
        TweenSpeed = Value
    end)

   CheckUpdate = Tabs.SeaE:AddParagraph({
        Title = "Waiting Update Tabs This",
        Content = "will be full when updated"
   })

    local SetSpeedBoatSlider = Tabs.SeaE:AddSlider("SliderSpeedBoat", {
	Title = "Set Speed boat",
	Description = "",
	Default = 300,
	Min = 0,
	Max = 1000,
	Rounding = 1,
	Callback = function(value)
		SetSpeedBoat = value
	end
})

SetSpeedBoatSlider:OnChanged(function(value)
	SetSpeedBoat = value
end)

SetSpeedBoatSlider:SetValue(300)

local SpeedBoatToggle = Tabs.SeaE:AddToggle("SpeedBoat_Toggle", {Title = "Auto Speed Boat",Description = "", Default = false })
Options.SpeedBoat_Toggle:SetValue(false)

SpeedBoatToggle:OnChanged(function(value)
	_G.SpeedBoat = value
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.SpeedBoat then
        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                v:FindFirstChild("VehicleSeat").MaxSpeed = SetSpeedBoat
            end
        end
    end
end)


    local boatclip = Tabs.SeaE:AddToggle("boatclip", {
    Title = "NoClip Rock",
    Description = "",
    Default = false
})
boatclip:OnChanged(function(state)
    _G.NoClipRock = state
end)
            spawn(function()
                while wait() do
                    pcall(function()
                    for i, boat in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                        for _, v in pairs(game:GetService("Workspace").Boats[boat.Name]:GetDescendants()) do
                            if v:IsA("BasePart") then
                                if _G.NoClipRock or _G.SailBoat then
                                    v.CanCollide = false
                                else
                                    v.CanCollide = true
                                end
                            end
                        end
                    end
                    end)
                end
            end)

Tabs.SeaE:AddSection("🏝️Migare Islands + Kitsune🦊")  
    MigareIslands = Tabs.SeaE:AddToggle("MigareIslands", { Title = "Teleport To Migare Islands", Description = "when there is an island in the server it will teleport to Migare islands",  Default = false })
    MigareIslands:OnChanged(function(Value)
        _G.GreenXMigare = Value 
        StopTween(_G.GreenXMigare)         
    end)
    Options.AntiChestFlag:SetValue(false)

        spawn(function()
            pcall(function()
                while wait() do
                    if _G.GreenXMigare then
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                        end
                    end
                end
            end)
        end)

        
    GreenXG = Tabs.SeaE:AddToggle("GreenXG", { Title = "Auto Find Npc Advanced Fruit Dealer", Description = "Find Npc when it was on the island",  Default = false })
    GreenXG:OnChanged(function(Value)
        _G.GreenXFind = Value 
        StopTween(_G.GreenXFind)
    end)
    Options.GreenXG:SetValue(false)

    LickGreen = Tabs.SeaE:AddToggle("LickGreen", { Title = "Auto Lock Moon", Description = "look at the moon",  Default = false })
    LickGreen:OnChanged(function(Value)
        _G.GrenMon = Value          
    end)
    Options.LickGreen:SetValue(false) 
spawn(function()
    while wait() do
		pcall(function()
			if _G.GrenMon then
			    wait()
				local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
			end
		end)
    end
end)
       
    GreenXGear = Tabs.SeaE:AddToggle("GreenXGear", { Title = "Auto Find Gear Blue", Description = "Gear Blue",  Default = false })
    GreenXGear:OnChanged(function(Value)
       _G.GreenXGrear = Value 
       StopTween(_G.GreenXGrear)  
    end)
    Options.GreenXGear:SetValue(false)

spawn(function()
    pcall(function()
        while wait() do
            if _G.GreenXFind then
                if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                    topos(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position))
                end
            end
        end
    end)
end)


spawn(function()
    pcall(function()
        while wait() do
            if _G.GreenXGrear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                topos(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
end)
    
    blablakit = Tabs.SeaE:AddToggle("blablakit", { Title = "Auto Teleport To Kitsune Islands", Description = "",  Default = false })
    blablakit:OnChanged(function(Value)
        _G.FindKitsune = Value 
        StopTween(_G.FindKitsune)
    end)
    Options.AntiChestFlag:SetValue(false)

        spawn(function()
            while wait() do
                if _G.FindKitsune then
                    if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
                        topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,0,10))
                    end
                end
            end
        end)

    ComComCom = Tabs.SeaE:AddToggle("ComComCom", { Title = "Auto Collect Azure Ember", Description = "",  Default = false })
    ComComCom:OnChanged(function(Value)
        _G.Comcomcom = Value 
        StopTween(_G.Comcomcom)
    end)
    Options.ComComCom:SetValue(false)

        spawn(function()
            while wait() do
                if _G.Comcomcom then
                    pcall(function()
                        if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                            fastpos(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                        end
                    end)
                end
            end
        end)

    KitsuneTrade = Tabs.SeaE:AddSlider("KitsuneTrade", {
	Title = "Set Value To Trade",
	Description = "",
	Default = 20,
	Min = 0,
	Max = 25,
	Rounding = 5,
	Callback = function(Value)		
        _G.TradePls = Value
	end
})
            
    TradeKit = Tabs.SeaE:AddToggle("TradeKit", { Title = "Auto Trade Aure Ember", Description = "",  Default = false })
    TradeKit:OnChanged(function(Value)
        _G.GreenXEz = Value          
    end)
    Options.TradeKit:SetValue(false)

        function GetItemsSub(MaterialName)
            local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
            for i, v in pairs(Inventory) do
                if v.Name == MaterialName then
                    return v["Count"]
                end
            end
        end
        
        spawn(function()
            while wait() do
                if _G.GreenXEz then
                    pcall(function()
                        local AzureAvilable = GetItemsSub("Azure Ember")
                        if AzureAvilable >= _G.TradePls then
                            game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KitsuneStatuePray")
                        end
                    end)
                end
            end
        end)

Tabs.SeaE:AddSection("Monster Sea")                                                                                                                                                                                                                                                                                                  
    local ToggleTerrorshark = Tabs.SeaE:AddToggle("ToggleTerrorshark", {Title = "Auto Kill Terrorshark", Description = "[Beta]", Default = false })

    ToggleTerrorshark:OnChanged(function(Value)
        _G.AutoTerrorshark = Value
        StopTween(_G.AutoTerrorshark)
    end)
    Options.ToggleTerrorshark:SetValue(false)
     spawn(function()
         while wait() do
             if _G.AutoTerrorshark then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                         for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Terrorshark" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                     repeat task.wait()
                                         NeedAttacking = true
                                         DamageAura = true
                                         Fast_Attack = true
                                         Click()
                                         AutoHaki()
                                         EquipWeapon(_G.SelectWeapon)
                                         v.HumanoidRootPart.CanCollide = false
                                         v.Humanoid.WalkSpeed = 0
                                         v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                         if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Typhoon Splash") then
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 170, 0)); 
                                        else
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0));     
                                        end                                                                                                                                                                                                                                       
                                     until not  _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                 end
                             end
                         end
                     end
                 end)
             end
         end
     end)


    local TogglePiranha = Tabs.SeaE:AddToggle("TogglePiranha", {Title = "Auto Kill Piranha",Description = "[Beta]", Default = false })

    TogglePiranha:OnChanged(function(Value)
        _G.AutoKillPiranha = Value
        StopTween(_G.AutoKillPiranha)
    end)
    Options.TogglePiranha:SetValue(false)

   spawn(function()
         while wait() do
             pcall(function()
                 if _G.AutoKillPiranha then
                     for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                         if v.Name == "Piranha" then
                             if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
                             if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
                             if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                 repeat task.wait()
                                     DamageAura = true
                                     NeedAttacking = true
                                     AutoHaki()
                                     EquipWeapon(_G.SelectWeapon)
                                     v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                     v.HumanoidRootPart.CanCollide = false
                                     topos(v.HumanoidRootPart.CFrame * Pos)                                     
                                 until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health <= 0
                             end
                             end
                             end
                         end
                     end
                 end
             end)
         end
    end)



    local ToggleShark = Tabs.SeaE:AddToggle("ToggleShark", {Title = "Auto Kill Shark",Description = "[Beta]", Default = false })
    ToggleShark:OnChanged(function(Value)
        _G.AutoKillShark = Value
        StopTween(_G.AutoKillShark)
    end)
    Options.ToggleShark:SetValue(false)
    spawn(function()
         while wait() do
             pcall(function()
                 if _G.AutoKillShark then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                         if v.Name == "Shark" then
                             if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
                             if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
                             if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                 repeat task.wait()
                                     DamageAura = true
                                     NeedAttacking = true
                                     AutoHaki()
                                     EquipWeapon(_G.SelectWeapon)
                                     v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                     v.HumanoidRootPart.CanCollide = false
                                     topos(v.HumanoidRootPart.CFrame * Pos)
                                     NeedAttacking = true                                  
                                 until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health <= 0
                             end
                             end
                             end
                         end
                     end
                 end
             end)
         end
    end)
    

    PlayerFarmDistance = Tabs.Settings:AddDropdown("PlayerFarmDistance", {
        Title = "Player Farm Distance",
        Values = { "0", "10", "20", "30", "35", "40"},
        Multi = false,
        Default = 1,
    })

    PlayerFarmDistance:SetValue("35")

    PlayerFarmDistance:OnChanged(function(Value)
        PosY = Value
    end)



local Dropdown = Tabs.Settings:AddDropdown("Dropdown", {
        Title = "Select Fast Attack mob",
        Values = {"Fast Attack","Normal Attack","Low Attack","Super Fast Attack","Hyper Attack"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("Super Fast Attack")

    Dropdown:OnChanged(function(GreenZ)
        SelectFastAttackMode = GreenZ
    end)
    
local function ChangeModeFastAttack(SelectFastAttackMode)
	if SelectFastAttackMode == "Fast Attack" then
		FireCooldown = 0.5
    elseif SelectFastAttackMode == "Normal Attack" then
		FireCooldown = 0.1
	elseif SelectFastAttackMode == "Low Attack" then
		FireCooldown = 0.07
	elseif SelectFastAttackMode == "Super Fast Attack" then
		FireCooldown = 0.01
    elseif SelectFastAttackMode == "Hyper Attack" then
		FireCooldown = 0
	end
end

--

local FastAttackHyper = Tabs.Settings:AddToggle("FastAttackHyperFlag", {Title = "Fast Attack", Default = true })
FastAttackHyper:OnChanged(function(value)
    Fast_Attack = value
	DamageAura = value
	DmgAttack = not value
	NoAttackAnimation = value
	UsefastattackPlayersGo = value
end)
Options.FastAttackHyperFlag:SetValue(true)

local ClickerTaySi = Tabs.Settings:AddToggle("ClickerTaySi", {Title = "Clicker No Cooldown", Default = false })
ClickerTaySi:OnChanged(function(value)
    ClickNoCooldown = value
end)
Options.ClickerTaySi:SetValue(false)

    local FastAttack = Tabs.Settings:AddSlider("FastAttack", {
	Title = "Fast Attack distance",
	Description = "%",
	Default = 0,
	Min = 0,
	Max = 100,
	Rounding = 5,
	Callback = function(Value)		
		Fast_Attack = Value
		DamageAura = Value
	end
})

local PlayersChar = { 
   "Low",
   "Normal",
   "High"
}
_G.BringMode = "High"
    local BringMobRadius = Tabs.Settings:AddDropdown("BringMobRadius", {
        Title = "Select Bring Mob",
        Values = PlayersChar,
        Multi = false,
        Default = 1,
    })
    BringMobRadius:SetValue(_G.BringMode)
    BringMobRadius:OnChanged(function(Value)
        _G.BringMode = Value                       
    end)

    spawn(function()
        while wait(0.1) do
            if _G.BringMode then
                pcall(function()
                    if _G.BringMode == "Low" then
                        _G.BringMode = 250
                    elseif _G.BringMode == "Normal" then
                        _G.BringMode = 500
                    elseif _G.BringMode == "High" then
                        _G.BringMode = 800
                    end
                end)
            end
        end
    end)
-- hihu
    BringMobs = Tabs.Settings:AddToggle("BringMobsFlag", { Title = "Bring Mobs", Description = "when you turn this toggle off it will no longer work", Default = true })
    BringMobs:OnChanged(function(Value)
        _G.BringMonster = Value        
    end)
    Options.BringMobsFlag:SetValue(true)



------
Playerslist = {};
for i, v in pairs((game:GetService("Players")):GetChildren()) do
	table.insert(Playerslist, v.Name);
end;

    SelectPlayersDu = Tabs.Player:AddDropdown("SelectPlayersDu", {
        Title = "Select Players",
        Values = Playerslist,
        Multi = false,
        Default = 1,
    })
    SelectPlayersDu:SetValue("Skibidi")
    SelectPlayersDu:OnChanged(function(Value)
        _G.SelectPly = Value
    end)

--    Tabs.Player:AddButton({
       -- Title = "Refresh Players",
     --   Description = "",
      --  Callback = function()            
        	--Playerslist = {};
      --  	SelectedPly:Clear();
                --return Clear
             --     false
           --     end               
        	  --  for i, v in pairs((game:GetService("Players")):GetChildren()) do
    	---    SelectedPly:Add(v.Name);
   -- 	end;               
--    end  
--})

SafeMode = Tabs.Player:AddToggle("SafeModeFlag", {Title = "Safe Farm Enable if low health", Default = false })
SafeMode:OnChanged(function(Value)
    _G.Safe_Mode = Value
    saveSettings()
end)
Options.SafeModeFlag:SetValue(false)   

spawn(function()
    pcall(function()
        while wait(1) do 
            if _G.Safe_Mode and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                if humanoid.Health < 4500 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 700, 0)
                end
            end
        end
    end)
end)
   
     KillPlayersPly = Tabs.Player:AddToggle("SelectLlayersFlag", { Title = "Auto Kill Players selected", Default = false })
     KillPlayersPly:OnChanged(function(Value)
        _G.Auto_Kill_Ply = Value
        AttackPlaer = Value
        StopTween(_G.Auto_Kill_Ply)
    end)
    Options.SelectLlayersFlag:SetValue(false)
--
    spawn(function()
        while wait() do
            if _G.Auto_Kill_Ply then
                pcall(function()
                    if _G.SelectPly ~= nil then
                        local selectedPlayer = game.Players:FindFirstChild(_G.SelectPly)
                        if selectedPlayer and selectedPlayer.Character and selectedPlayer.Character:FindFirstChild("Humanoid") then
                            if selectedPlayer.Character.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    UsefastattackPlayersGo = true
                                    AttackPlaer = true
                                    Fast_Attack = true                                    
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    Click()
                                    selectedPlayer.Character.HumanoidRootPart.CanCollide = false
                                    topos(selectedPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))
                                    
                                    spawn(function()
                                        pcall(function()
                                            if _G.SelectWeapon == SelectWeaponGun then
                                                local args = {
                                                    [1] = selectedPlayer.Character.HumanoidRootPart.Position,
                                                    [2] = selectedPlayer.Character.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            else
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            end
                                        end)
                                    end)
                                until selectedPlayer.Character.Humanoid.Health <= 0 or not selectedPlayer or not _G.Auto_Kill_Ply
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    local plr = game.Players.LocalPlayer
    if plr and plr.Data and plr.Data.Points and plr.Data.Stats then
        local CheckStats = Tabs.Player:AddParagraph({
            Title = "" .. plr.DisplayName .. "'s Stats",
            Content = ""
        })

        function getStats()
            if not plr or not plr.Data or not plr.Data.Stats then return end
            pcall(function()
                local stats = plr.Data.Stats
                local melee = stats.Melee and stats.Melee.Level and stats.Melee.Level.Value or "W.I.P"
                local defense = stats.Defense and stats.Defense.Level and stats.Defense.Level.Value or "W.I.P"
                local sword = stats.Sword and stats.Sword.Level and stats.Sword.Level.Value or "W.I.P"
                local gun = stats.Gun and stats.Gun.Level and stats.Gun.Level.Value or "W.I.P"
                local fruit = stats["Demon Fruit"] and stats["Demon Fruit"].Level and stats["Demon Fruit"].Level.Value or
                    "W.I.P"

                CheckStats:SetDesc(
                    " Melee : " .. melee ..
                    "\n Defense : " .. defense ..
                    "\n Sword : " .. sword ..
                    "\n Gun : " .. gun ..
                    "\n Fruit : " .. fruit ..
                    "\n"
                )
            end)
        end

        spawn(function()
            while true do
                getStats()
                wait(0.1)
            end
        end)
    end

    PointSlideStats = Tabs.Player:AddSlider("PointStats", {
        Title = "Points",
        Description = "",
        Default = 1,
        Min = 0,
        Max = 2400,
        Rounding = 0,
        Callback = function(Value)
            PointStats = Value
        end
    })
    PointSlideStats:SetValue(1)


    AddStatMelee = Tabs.Player:AddToggle("AddStatMeleeFlag", { Title = "Add Stat to Melee", Default = false })
    AddStatMelee:OnChanged(function(Value)
        Melee = Value
    end)
    Options.AddStatMeleeFlag:SetValue(false)

    AddStatDefense = Tabs.Player:AddToggle("AddStatDefenseFlag", { Title = "Add Stat to Defense", Default = false })
    AddStatDefense:OnChanged(function(Value)
        Defense = Value
    end)
    Options.AddStatDefenseFlag:SetValue(false)

    AddStatSword = Tabs.Player:AddToggle("AddStatSwordFlag", { Title = "Add Stat to Sword", Default = false })
    AddStatSword:OnChanged(function(Value)
        Sword = Value
    end)
    Options.AddStatSwordFlag:SetValue(false)

    AddStatGun = Tabs.Player:AddToggle("AddStatGunFlag", { Title = "Add Stat to Gun", Default = false })
    AddStatGun:OnChanged(function(Value)
        Gun = Value
    end)
    Options.AddStatGunFlag:SetValue(false)

    AddStatDemonFruit = Tabs.Player:AddToggle("AddStatDemonFruitFlag", { Title = "Add Stat to Fruit", Default = false })
    AddStatDemonFruit:OnChanged(function(Value)
        DemonFruit = Value
    end)
    Options.AddStatDemonFruitFlag:SetValue(false)


    StartAddingStats = Tabs.Player:AddToggle("StartAddingStatsFlag", { Title = "Start adding stats", Default = false })
    StartAddingStats:OnChanged(function(Value)
        _G.AutoStats = Value
        if Value then
            AutoStats()
        end
    end)
    Options.StartAddingStatsFlag:SetValue(false)

    ---Raids

    RaidInfo = Tabs.Raid:AddParagraph({
        Title = "Raid Info",
        Content = ""
    })

    function getRaidInfo()
        local checkTime = "Time : Waiting to start a raid"
        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
            checkTime = game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text
        end

        local checkIsland = "Island : No Island Found"
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 5') then
            checkIsland = "Island : 5"
        elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 4') then
            checkIsland = "Island : 4"
        elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 3') then
            checkIsland = "Island : 3"
        elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 2') then
            checkIsland = "Island : 2"
        elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 1') then
            checkIsland = "Island : 1"
        end

        RaidInfo:SetDesc("\nRaid Chip : " .. _G.SelectChip .. "\n" .. checkTime .. "\n" .. checkIsland)
    end

    spawn(function()
        pcall(function()
            while wait() do
                getRaidInfo()
            end
        end)
    end)

    _G.SelectChip = selectraids or ""
    Raidslist = {}
    RaidsModule = require(game.ReplicatedStorage.Raids)
    for i, v in pairs(RaidsModule.raids) do
        table.insert(Raidslist, v)
    end
    for i, v in pairs(RaidsModule.advancedRaids) do
        table.insert(Raidslist, v)
    end

    RaidChipList = Tabs.Raid:AddDropdown("RaidChipList", {
        Title = "Raid Chips",
        Values = Raidslist,
        Multi = false,
        Default = 1,
    })
    RaidChipList:SetValue(1)
    RaidChipList:OnChanged(function(Value)
        _G.SelectChip = Value
    end)

    AutoFinishRaid = Tabs.Raid:AddToggle("AutoFinishRaidFlag", { Title = "Auto Finish Raid [One Click]", Default = false })
    AutoFinishRaid:OnChanged(function(Value)
        _G.Auto_StartRaid = Value
        _G.Kill_Aura = Value
        _G.AutoBuyChip = Value
        _G.Auto_Dungeon = Value
        _G.Awaken = Value
        StopTween(_G.Auto_Dungeon)
    end)
    Options.AutoFinishRaidFlag:SetValue(false)

    UnstoreFruitPrice = Tabs.Raid:AddSlider("UnstoreFruitPriceFlag", {
        Title = "Unstore low price Fruit",
        Description = "",
        Default = 0,
        Min = 5000,
        Max = 1000000,
        Rounding = 0,
        Callback = function(Value)
            _G.UnstoreFruitPrice = Value
        end
    })
    UnstoreFruitPrice:SetValue(5000)

    AutoUnstoreRaid = Tabs.Raid:AddToggle("AutoUnstoreRaidFlag", { Title = "Auto Unstore Fruit", Default = false })
    AutoUnstoreRaid:OnChanged(function(Value)
        _G.UnstoreBadFruit = Value
    end)
    Options.AutoUnstoreRaidFlag:SetValue(false)

    function HasFruits()
        local function CheckContainer(container)
            for _, v in pairs(container:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    return true
                end
            end
            return false
        end
        local plyr = game:GetService("Players").LocalPlayer
        return CheckContainer(plyr.Backpack) or CheckContainer(plyr.Character)
    end

    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().UnstoreBadFruit then
                    local fruits = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                    for _, v in pairs(fruits) do
                        if v["Price"] < getgenv().UnstoreFruitPrice then
                            if not HasFruits() then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", v["Name"])
                            end
                        end
                    end
                end
            end)
        end
    end)
    ---Travel Section

    Tabs.Travel:AddButton({
        Title = "Travel World 1",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    })

    Tabs.Travel:AddButton({
        Title = "Travel World 2",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })

    Tabs.Travel:AddButton({
        Title = "Travel World 3",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    })

--[[    local IslandsList = {}
    if World1 then
        IslandsList = {
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City"
        }
    elseif World2 then
        IslandsList = {
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island"
        }
    elseif World3 then
        IslandsList = {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Candy Cane Island",
            "Tiki Outpost"
        }
    end --]]

if World1 then
        Island = {
            "nil",
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"
            }
    elseif World2 then  
        Island = {
            "nil",
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
            }
    else
        Island = {
            "nil",
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky", 
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Candy Island",
            "Tiki Outpost"
        }	
    end
    SelectIslandList = Tabs.Travel:AddDropdown("SelectIslandList", {
        Title = "Select Island",
        Values = Island,
        Multi = false,
        Default = 1,
    })
    SelectIslandList:SetValue(1)
    SelectIslandList:OnChanged(function(Value)
        _G.SelectIsland = Value
    end)

    StartTravelIsland = Tabs.Travel:AddToggle("StartTravelIslandFlag", { Title = "Start Traveling", Default = false })
    StartTravelIsland:OnChanged(function(Value)
          _G.TeleportIsland = Value
          if _G.TeleportIsland == true then
                    repeat wait()
                if _G.SelectIsland == "WindMill" then
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                elseif _G.SelectIsland == "MiniSky" then
                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                elseif _G.SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Cocoa Island" then
                    topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif _G.SelectIsland == "Candy Island" then
                    topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    topos(CFrame.new(-16218.6826, 9.08636189, 445.618408, -0.0610186495, 1.10512588e-09, -0.99813664, -1.83458475e-08, 1, 2.22871765e-09, 0.99813664, 1.84476558e-08, -0.0610186495))
                end
               until not _G.TeleportIsland
          end           
          StopTween(_G.TeleportToIsland)
    end)
    Options.StartTravelIslandFlag:SetValue(false)
-- New    
 

    --Fun/VisualkSection

Tabs.Fun:AddSection("Status Sever🎰")

local FM = Tabs.Fun:AddParagraph({
    Title = "Moon Status:",
    Content = ""
})
local KitsuneStatus = Tabs.Fun:AddParagraph({
    Title = "Kitsune Status:",
    Content = ""
})

local MirageStatus = Tabs.Fun:AddParagraph({
    Title = "Migare Status:",
    Content = ""
})

local FindFruit = Tabs.Fun:AddParagraph({
    Title = "Fruits Status:",
    Content = ""
})

task.spawn(function()
	while task.wait() do
		pcall(function()
			if (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
				FM:SetDesc("🌕 Full Moon 100%");
			elseif (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
				FM:SetDesc("🌖 Full Moon 75%");
			elseif (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
				FM:SetDesc("🌗 Full Moon 50%");
			elseif (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
				FM:SetDesc("🌘 Full Moon 25%");
			elseif (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
				FM:SetDesc("🌘 Full Moon 15%");
			else
				FM:SetDesc("Wait For Moon");
			end;
		end);
	end;
end);
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
				MirageStatus:SetDesc("🏝️ Mirage Island is Spawning🔴");
			else
				MirageStatus:SetDesc("🏝️ Mirage Island Not Spawn🔴");
			end;
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
				KitsuneStatus:SetDesc("⛩️ Kitsune Island is Spawning🟢");
			else
				KitsuneStatus:SetDesc("⛩️ Kitsune Island Not Spawn🔴");
			end;
			for i, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					FindFruit:SetDesc("🍏 Find " .. v.Name);
				else
					FindFruit:SetDesc("🍏 Not Have Fruits");
				end;
			end;
		end;
	end);
end);

    Tabs.Fun:AddSection("Job ID Join")
    local Input = Tabs.Fun:AddInput("Input", {
        Title = "Job Id",
        Default = "",
        Placeholder = "Paste Job Id",
        Numeric = false, 
        Finished = false, 
        Callback = function(Value)
            _G.Job = Value
        end
    })
    
    Tabs.Fun:AddButton({
        Title = "Copy Job ID",
        Description = "",
        Callback = function()
            setclipboard(tostring(game.JobId))
        end
    })
    
    Tabs.Fun:AddButton({
        Title = "Join Job ID",
        Description = "",
        Callback = function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
        end
    })

    
    JoinIb = Tabs.Fun:AddToggle("JoinIb", {Title = "Spam Join Job Id", Default = false })
    JoinIb:OnChanged(function(Value)
      _G.Join = Value  
    end)
Options.JoinIb:SetValue(false)		
		spawn(function()
            while wait() do
                if _G.Join then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
            end
        end
    end)

    ChestInfo = Tabs.Fun:AddParagraph({
        Title = "Chest Info\n",
        Content = ""
    })

    spawn(function()
        while wait(0.1) do
            local count10 = 0
            local nearestDistance = math.huge
            for i, v in pairs(game.workspace:GetChildren()) do
                if string.find(v.Name, "Chest") and v:IsA("Part") then
                    count10 = count10 + 1
                    local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                        .Magnitude
                    if distance < nearestDistance then
                        nearestDistance = distance
                    end
                end
            end
            ChestInfo:SetDesc("Chest: " ..
                count10 .. " Left" .. "\nDistance: " .. math.floor(nearestDistance) .. " Studs")
        end
    end)


    AutoChestSafe = Tabs.Fun:AddToggle("AutoChestSafeFlag", { Title = "Chest Farm", Default = false })
    AutoChestSafe:OnChanged(function(Value)
        _G.AutoChestSafe = Value
        StopTween(_G.AutoChestSafe)
    end)
    Options.AutoChestSafeFlag:SetValue(false)
    
    Tabs.Fun:AddButton({
        Title = "Rain Fruit",
        Description = "Troll",
        Callback = function()
            for i, v in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
                v.Parent = game.Workspace.Map
                v:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position +
                    Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
                if v.Fruit:FindFirstChild("AnimationController") then
                    v.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v.Fruit:FindFirstChild("Idle")):Play()
                end
                v.Handle.Touched:Connect(function(otherPart)
                    if otherPart.Parent == game.Players.LocalPlayer.Character then
                        v.Parent = game.Players.LocalPlayer.Backpack
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    end
                end)
            end
        end
    })

local Rejoin = Tabs.Fun:AddToggle("RejoinFlag", {Title = "Auto Rejoin If Disconnect or Kicked", Default = true })
Rejoin:OnChanged(function(Value)
   _G.Rejoin = Value
end)
Options.RejoinFlag:SetValue(true)
  if _G.Rejoin then
    if not getgenv().rejoinConnection then
      getgenv().rejoinConnection = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
          game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
      end)
    end
  else
    if getgenv().rejoinConnection then
      getgenv().rejoinConnection:Disconnect()
      getgenv().rejoinConnection = nil
    end
  end

    WalkWater = Tabs.Fun:AddToggle("WalkWaterFlag", {Title = "Walk On Water", Default = true })
    WalkWater:OnChanged(function(Value)
        _G.WalkWater = Value
    end)
Options.WalkWaterFlag:SetValue(true)			
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)
		  
    Tabs.Fun:AddButton({
        Title = "Instant Max All",
        Description = "Beli, Level, Exp",
        Callback = function()
            local plr = game:GetService("Players").LocalPlayer
            local Notification = require(game:GetService("ReplicatedStorage").Notification)
            local Data = plr:WaitForChild("Data")
            local EXPFunction = require(game.ReplicatedStorage:WaitForChild("EXPFunction"))
            local LevelUp = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp)
            local Sound = require(game:GetService("ReplicatedStorage").Util.Sound)
            local LevelUpSound = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild(
                    "LevelUp_Proxy") or
                game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp")
            function v129(p15)
                local v130 = p15;
                while true do
                    local v131, v132 = string.gsub(v130, "^(-?%d+)(%d%d%d)", "%1,%2");
                    v130 = v131;
                    if v132 == 0 then
                        break;
                    end;
                end;
                return v130;
            end;

            Notification.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display()
            Notification.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display()
            Notification.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display()
            plr.Data.Exp.Value = 999999999999
            plr.Data.Beli.Value = plr.Data.Beli.Value + 999999999999

            delay = 0
            count = 0
            while plr.Data.Exp.Value - EXPFunction(Data.Level.Value) > 0 do
                plr.Data.Exp.Value = plr.Data.Exp.Value - EXPFunction(Data.Level.Value)
                plr.Data.Level.Value = plr.Data.Level.Value + 1
                plr.Data.Points.Value = plr.Data.Points.Value + 3
                LevelUp({ plr })
                Sound.Play(Sound, LevelUpSound.Value)
                Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. plr.Data.Level.Value .. ")"):Display()
                count = count + 1
                if count >= 10 then
                    delay = tick()
                    count = 0
                    wait(1)
                end
            end
        end
    })


    --Fruit

    Tabs.Fruit:AddButton({
        Title = "Open Normal Fruit Shop",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
            game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
        end
    })

    Tabs.Fruit:AddButton({
        Title = "Open Shop Migare [Fruit]",
        Description = "",
        Callback = function()
        local function StartDialog(DialogName)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local DialogueController = require(ReplicatedStorage.DialogueController)
            local DialoguesList = require(ReplicatedStorage.DialoguesList)
            
            for Index,Dialog in pairs(DialoguesList) do
              if tostring(Index) == DialogName then
                DialogueController.Start(DialogueController, Dialog)
              end
            end
          end
          
          StartDialog("FruitShop2")
    end
})
        
    MirageStockInfo = Tabs.Fruit:AddParagraph({
        Title = "Mirage Stock",
        Content = ""
    })

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Remotes = ReplicatedStorage.Remotes
    local Event = Remotes["CommF_"]
    local result = Event:InvokeServer("GetFruits", true)
    local fruitsOnSale = {}
    function addCommas(number)
        local formatted = tostring(number)
        while true do
            formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", '%1,%2')
            if k == 0 then break end
        end
        return formatted
    end

    local content = ""
    for _, fruitData in pairs(result) do
        if fruitData["OnSale"] == true then
            local priceWithCommas = addCommas(fruitData["Price"])
            local fruitInfo = fruitData["Name"] .. " - $" .. priceWithCommas
            table.insert(fruitsOnSale, fruitInfo)
        end
    end
    content = table.concat(fruitsOnSale, "\n")
    MirageStockInfo:SetDesc(content)

    FruitCheckNe = Tabs.Fruit:AddToggle("FruitCheckNeFlag", { Title = "Auto Check Name Fruits In Severs", Default = false })
    FruitCheckNe:OnChanged(function(Value)
        _G.FruitCheck = Value
    end)
    Options.FruitCheckNeFlag:SetValue(false)
spawn(function()
    while wait(1) do
        if _G.FruitCheck then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                   Green:create("Fruit : " .. v.Nmae);
                end
            end
        end
    end
end)

    GrabFruit = Tabs.Fruit:AddToggle("GrabFruitFlag", { Title = "Auto Teleport To Fruits", Default = false })
    GrabFruit:OnChanged(function(Value)
        _G.Grabfruit = Value
    end)
    Options.GrabFruitFlag:SetValue(false)

spawn(function()
	while wait(0.1) do
		if _G.Grabfruit then
			for i, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame;
				end;
			end;
		end;
	end;
end);
    TweenFruit = Tabs.Fruit:AddToggle("TweenFruit", { Title = "Auto Tween To Fruits In Severs", Default = false })
    TweenFruit:OnChanged(function(Value)
        _G.Tweenfruit = Value
        StopTween(_G.Tweenfruit)
    end)
    Options.TweenFruit:SetValue(false)
    
spawn(function()
	while wait(0.1) do
		if _G.Tweenfruit then
			for i, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					topos(v.Handle.CFrame);
				end;
			end;
		end;
	end;
end);

    Tabs.Fruit:AddButton({
        Title = "Grab All Fruits",
        Description = "",
        Callback = function()
             for i, v in pairs(game.Workspace:GetChildren()) do
            	if v:IsA("Tool") then
            		v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
            	end;
             end 
        end
    })
    
    
    AutoRandomFruit = Tabs.Fruit:AddToggle("AutoRandomFruitFlag", { Title = "Auto Random Fruit", Default = false })
    AutoRandomFruit:OnChanged(function(Value)
        _G.Random_Auto = Value
    end)
    Options.AutoRandomFruitFlag:SetValue(false)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Random_Auto then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                end
            end
        end)
    end)

    local RarityFruits = {
        ["Common"] = {
            "Rocket Fruit",
            "Spin Fruit",
            "Chop Fruit",
            "Spring Fruit",
            "Bomb Fruit",
            "Smoke Fruit",
            "Spike Fruit"
        },
        ["Uncommon"] = {
            "Flame Fruit",
            "Falcon Fruit",
            "Ice Fruit",
            "Sand Fruit",
            "Diamond Fruit",
            "Dark Fruit"
        },
        ["Rare"] = {
            "Light Fruit",
            "Rubber Fruit",
            "Barrier Fruit",
            "Ghost Fruit",
            "Magma Fruit"
        },
        ["Legendary"] = {
            "Quake Fruit",
            "Budha Fruit",
            "Love Fruit",
            "Spider Fruit",
            "Sound Fruit",
            "Phoenix Fruit",
            "Portal Fruit",
            "Rumble Fruit",
            "Pain Fruit",
            "Blizzard Fruit",
        },
        ["Mythical"] = {
            "Gravity Fruit",
            "Mammoth Fruit",
            "T-Rex Fruit",
            "Dough Fruit",
            "Shadow Fruit",
            "Venom Fruit",
            "Control Fruit",
            "Spirit Fruit",
            "Dragon Fruit",
            "Leopard Fruit",
            "Kitsune Fruit",
        }
    }

    local SelectRarityFruits = {
        "Common - Mythical",
        "Uncommon - Mythical",
        "Rare - Mythical",
        "Legendary - Mythical",
        "Mythical"
    }

    local ResultUnstoreFruits = {}
    StoreRarity = Tabs.Fruit:AddDropdown("StoreRarity", {
        Title = "Select Rarity to Store",
        Values = SelectRarityFruits,
        Multi = false,
        Default = 1,
    })
    StoreRarity:SetValue(SetRarityFruits)
    StoreRarity:OnChanged(function(Value)
        SetRarityFruits = Value
    end)

    function CheckFruits()
        for i, v in pairs(RarityFruits) do
            if SetRarityFruits == "Common - Mythical" then
                if i == "Common" or i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            elseif SetRarityFruits == "Uncommon - Mythical" then
                if i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            elseif SetRarityFruits == "Rare - Mythical" then
                if i == "Rare" or i == "Legendary" or i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            elseif SetRarityFruits == "Legendary - Mythical" then
                if i == "Legendary" or i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            elseif SetRarityFruits == "Mythical" then
                if i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            end
        end
    end

    AutoStoreEnable = Tabs.Fruit:AddToggle("AutoStoreEnableFlag",
        { Title = "Auto Store Fruit", Description = "It will store the fruit in the inventory according to its rarity.", Default = false })
    AutoStoreEnable:OnChanged(function(Value)
        _G.AutoStoreFruit = Value
    end)
    Options.AutoStoreEnableFlag:SetValue(false)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoStoreFruit then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if string.find(v.Name, "Fruit") then
                            ResultStoreFruits = {}
                            CheckFruits()
                            for _, Res in pairs(ResultStoreFruits) do
                                if v.Name == Res then
                                    local NameFruit = v.Name
                                    local FirstNameFruit = string.gsub(v.Name, " Fruit", "")
                                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit) then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                                            FirstNameFruit .. "-" .. FirstNameFruit,
                                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit))
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    --- functions
end

spawn(function()
	while wait() do
		if FarmMode == "Normal" and _G.AutoFarm then
			pcall(function()
				CheckQuest();
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, NameMon) then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
							BTP(CFrameQuest);
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
							TP1(CFrameQuest);
						end;
					else
						TP1(CFrameQuest);
					end;
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == Mon then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											StartBring = true;
											--else
											   --NoAttackAnimation = false
											--end
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();											
											NeedAttacking = true
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											-- v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);											
										until not _G.AutoFarm or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										StartBring = false;
									end;
								end;
							end;
						end;
					else
						TP1(CFrameMon);						                                                                                          
						UnEquipWeapon(_G.SelectWeapon);		        			       
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait() do
		if FarmMode == "Nearest" and _G.AutoFarm then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						if v.Name then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 5000 then
								repeat
									wait();
									StartBring = true;									
									NeedAttacking = true
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									TP1(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									sethiddenproperty((game:GetService("Players")).LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoFarm or (not v.Parent) or v.Humanoid.Health <= 0 or (not game.Workspace.Enemies:FindFirstChild(v.Name));
								StartBring = false;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait() do
		if FarmMode == "Auto Quest" and _G.AutoFarm then
			pcall(function()
				CheckQuest();
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, NameMon) then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 1500 then
							BTP(CFrameMon);
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 1500 then
							TP1(CFrameMon);
						end;
					else
						TP1(CFrameMon);
					end;
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == Mon then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();											
											NeedAttacking = true
											PosMon = v.HumanoidRootPart.CFrame;
											TP1(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											StartBring = true;
											MonFarm = v.Name;											
										until not _G.AutoFarm or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										StartBring = false;
									end;
								end;
							end;
						end;
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
					end;
				end;
			end);
		end;
	end;
end);
--[[spawn(function()
    while wait() do
        if FarmMode == "Normal" and _G.AutoFarm then
            pcall(function()
                CheckQuest()
                local QuestTitle = Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if not Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                    if BypassTP then
                        if (Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                            BTP(CFrameQuest)
                        else
                            TP1(CFrameQuest)
                        end
                    else
                        TP1(CFrameQuest)
                    end
                    if (Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest,
                            LevelQuest)
                    end
                elseif Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                    local Enemies = Workspace.Enemies
                    if Enemies:FindFirstChild(Mon) then
                        for _, v in pairs(Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(QuestTitle, NameMon) then
                                        repeat
                                            task.wait()
                                            if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Status = "Attacking..."
                                            MonsterStatus:SetDesc("[Monster] : " .. MonFarm ..
                                                " | [Status] : " .. Status)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            StartBring = true
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or not Players.LocalPlayer.PlayerGui.Main.Quest.Visible
                                        Status = "Waiting..."
                                        MonsterStatus:SetDesc("[Monster] : " .. MonFarm .. " | [Status] : " .. Status)
                                        UnEquipWeapon(_G.SelectWeapon)
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMyMon)
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        elseif FarmMode == "No Quest" and _G.AutoFarm then
            pcall(function()
                local Enemies = Workspace.Enemies
                if Enemies:FindFirstChild(Mon) then
                    for i, v in pairs(Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name == Mon then
                                repeat
                                    task.wait()
                                    if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    AutoHaki()
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    StartBring = true
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent
                                StartBring = false
                                UnEquipWeapon(_G.SelectWeapon)
                            end
                        end
                    end
                else
                    TP1(CFrameMon)
                    UnEquipWeapon(_G.SelectWeapon)
                end
            end)
        elseif FarmMode == "Nearest" and _G.AutoFarm then
            pcall(function()
                local Enemies = Workspace.Enemies
                for i, v in pairs(Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if v.Name then
                            if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 5000 then
                                repeat
                                    wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    TP1(v.HumanoidRootPart.CFrame * Pos)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    sethiddenproperty(Players.LocalPlayer, "SimulationRadius", math.huge)
                                    StartBring = true
                                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or not Enemies:FindFirstChild(v.Name)
                                StartBring = false
                            end
                        end
                    end
                end
            end)
        end
    end
end) --]]

spawn(function()
    while wait() do
        spawn(function()
            if _G.AutoFactory then
                if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Core" and v.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                    EquipWeapon(_G.SelectWeapon)
                                end                                
                                NeedAttacking = true 
                                AutoHaki()
                                PosMon = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                StartBring = true
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                        end
                    end
                else
                    topos(CFrame.new(448.46756, 199.356781, -441.389252))
                end
            end
        end)
    end
end)
local Green = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)                  
spawn(function()
    while wait() do
        if _G.RaidPirate then
            pcall(function()
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.RaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat task.wait()
                                    AutoHaki()
                                    NeedAttacking = true
                                    DamageAura = true
                                    Fast_Attack = true
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCD()
                                until v.Humanoid.Health <= 0 or not v.Parent or not _G.RaidPirate
                            end
                        end
                    end
                else
                    UnEquipWeapon(_G.SelectWeapon)
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Frame3.Position).Magnitude > 1500 then
			        BTP(Green)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Frame3.Position).Magnitude < 1500 then
				    topos(Green)
					end
                    end
                end
            end)
        end
    end
end)
-- memay
local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375);
spawn(function()
	while wait() do
		if BoneFMode == "No Quest" and _G.Auto_Bone and World3 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
					StartBring = false;
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									NeedAttacking = true									
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.Head.CanCollide = false;
									StartBring = true;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									topos(v.HumanoidRootPart.CFrame * Pos);
									if not Fast_Attack then
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
									end
								until not _G.Auto_Bone or (not v.Parent) or v.Humanoid.Health <= 0;
								StartBring = false;
							end;
						end;
					end;
				else
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude > 1500 then
							BTP(BonePos);
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude < 1500 then
							topos(BonePos);
						end;
					else
						topos(BonePos);
					end;
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375));
				end;
			end);
		end;
	end;
end);
local BoneQuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
spawn(function()
	while wait() do
		if BoneFMode == "Quest" and _G.Auto_Bone and World3 then
			pcall(function()
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, "Demonic Soul") then
					StartBring = false;
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					StartBring = false;
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 1500 then
							BTP(BoneQuestPos);
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude < 1500 then
							topos(BoneQuestPos);
						end;
					else
						topos(BoneQuestPos);
					end;
					if (BoneQuestPos.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end;
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											NeedAttacking = true				
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											StartBring = true;											
										until not _G.Auto_Bone or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										StartBring = false;
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);

spawn(function()
	while wait() do
		if BoneFMode == "MasteryFruit" and _G.Auto_Bone then
			pcall(function()
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, "Demonic Soul") then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 1500 then
							BTP(BoneQuestPos);
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude < 1500 then
							topos(BoneQuestPos);
						end;
					else
						topos(BoneQuestPos);
					end;
					if (BoneQuestPos.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end;
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										HealthMs = v.Humanoid.MaxHealth * _G.Kill_At / 100;
										repeat
											task.wait();
											if v.Humanoid.Health <= HealthMs then
												EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
												TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0));
												UseSkill = true;
												Skillaimbot = true;
											else
												UseSkill = false;
												Skillaimbot = false;
												EquipWeapon(_G.SelectWeapon);
												TP1(v.HumanoidRootPart.CFrame * Pos);
											end;
											PosMon = v.HumanoidRootPart.CFrame;
											AimBotSkillPosition = PosMon.Position;
											MonFarm = v.Name;
											StartBring = true;
											AutoHaki();
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											NormalAttack();
										until not _G.Auto_Bone or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										StartBring = false;
										Skillaimbot = false;
										UseSkill = false;
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait() do
		if BoneFMode == "MasteryGun" and _G.Auto_Bone then
			pcall(function()
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, "Demonic Soul") then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 1500 then
							BTP(BoneQuestPos);
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude < 1500 then
							topos(BoneQuestPos);
						end;
					else
						topos(BoneQuestPos);
					end;
					if (BoneQuestPos.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end;
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										HealthMs = v.Humanoid.MaxHealth * _G.Kill_At / 100;
										repeat
											task.wait();
											if v.Humanoid.Health <= HealthMs then
												EquipWeapon(SelectWeaponGun);
												TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0));
												UseSkill = true;
												Skillaimbot = true;
												((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(v.HumanoidRootPart.Position));
											else
												UseSkill = false;
												Skillaimbot = false;
												EquipWeapon(_G.SelectWeapon);
												TP1(v.HumanoidRootPart.CFrame * Pos);
											end;
											PosMon = v.HumanoidRootPart.CFrame;
											AimBotSkillPosition = PosMon.Position;
											MonFarm = v.Name;
											StartBring = true;
											AutoHaki();
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											NormalAttack();
										until not _G.Auto_Bone or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										StartBring = false;
										Skillaimbot = false;
										UseSkill = false;
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
--[[spawn(function()
    while wait() do
        if _G.Auto_Bone and not _G.AcceptQuests and World3 then
            pcall(function()
                local BoneFarmMobs = {
                    "Reborn Skeleton",
                    "Living Zombie",
                    "Demonic Soul",
                    "Posessed Mummy"
                }
                StartBring = false
                local mobs = game:GetService("Workspace").Enemies:GetChildren()
                local checkMobs = false
                for _, mob in ipairs(mobs) do
                    if table.find(BoneFarmMobs, mob.Name) then
                        checkMobs = true
                        break
                    end
                end
                for _, v in ipairs(mobs) do
                    if table.find(BoneFarmMobs, v.Name) then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                    EquipWeapon(_G.SelectWeapon)
                                end
                                AutoHaki()
                                PosMon = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                StartBring = true
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health <= 0
                            StartBring = false
                            UnEquipWeapon(_G.SelectWeapon)
                        end
                    end
                end
                if not checkMobs then
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude > 1500 then
                            BTP(BonePos)
                        else
                            topos(BonePos)
                        end
                    else
                        topos(BonePos)
                    end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(v.HumanoidRootPart.CFrame * Pos)
                end
            end)
        elseif _G.Auto_Bone and _G.AcceptQuests and World3 then
            pcall(function()
                local BoneFarmMobs = {
                    "Reborn Skeleton",
                    "Living Zombie",
                    "Demonic Soul",
                    "Posessed Mummy"
                }

                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                    .Title.Text
                if not string.find(QuestTitle, "Demonic Soul") then
                    StartBring = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end

                if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    StartBring = false
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 1500 then
                            BTP(BoneQuestPos)
                        else
                            topos(BoneQuestPos)
                        end
                    else
                        topos(BoneQuestPos)
                    end
                    if (BoneQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",
                            "HauntedQuest2", 1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    local mobs = game:GetService("Workspace").Enemies:GetChildren()
                    if table.find(BoneFarmMobs, "Reborn Skeleton") or
                        table.find(BoneFarmMobs, "Living Zombie") or
                        table.find(BoneFarmMobs, "Demonic Soul") or
                        table.find(BoneFarmMobs, "Posessed Mummy") then
                        for _, v in pairs(mobs) do
                            if table.find(BoneFarmMobs, v.Name) and
                                v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if string.find(QuestTitle, "Demonic Soul") then
                                    repeat
                                        task.wait()
                                        if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        AutoHaki()
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        StartBring = true
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until not _G.Auto_Bone or v.Humanoid.Health <= 0 or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                                    StartBring = false
                                    UnEquipWeapon(_G.SelectWeapon)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end) --]]

_G.MagnitudeAdd = 0

function jumpchar()
    local humanoid = game.Players.LocalPlayer.Character and
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        wait(0.1)
    end
end

function isNearDestination(destination)
    local distance = (destination.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    return distance <= 0
end

function touchChest(chest)
    local touchTransmitter = chest and chest:FindFirstChild("TouchTransmitter")
    if touchTransmitter then
        for _ = 1, 5 do
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, touchTransmitter.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, touchTransmitter.Parent, 1)
            wait(0.2)
        end
    end
end

spawn(function()
    while wait() do
        if _G.AutoChestSafe then
            local nearestChest, nearestDistance = nil, math.huge
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:IsA("BasePart") and v.Name:find("Chest") then
                    local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                    .Magnitude
                    if distance <= 5000 + _G.MagnitudeAdd and distance < nearestDistance then
                        nearestChest, nearestDistance = v, distance
                    end
                end
            end
            if nearestChest then
                repeat
                    wait()
                    if _G.AutoChestSafe and nearestChest and nearestChest.Parent then
                        topos(nearestChest.CFrame)
                    else
                        topos(nearestChest.CFrame)
                    end
                until not _G.AutoChestSafe or not nearestChest.Parent or isNearDestination(nearestChest)
                if isNearDestination(nearestChest) then
                    wait(0.1)
                    jumpchar()
                    touchChest(nearestChest)
                    topos(nearestChest.CFrame)
                end
                topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                _G.MagnitudeAdd = _G.MagnitudeAdd + 1500
            end
        end
    end
end)


spawn(function()
	while wait() do
		if _G.AutoFarmBossHallow then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if string.find(v.Name, "Soul Reaper") then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								topos(v.HumanoidRootPart.CFrame * Pos);
								(game:GetService("VirtualUser")):CaptureController();
								(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 670));
								v.HumanoidRootPart.Transparency = 1;
							until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false;
						end;
					end;
				elseif (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Hallow Essence") then
					repeat
						topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125));
						wait();
					until ((CFrame.new((-8932.322265625), 146.83154296875, 6062.55078125)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8;
					EquipWeapon("Hallow Essence");
				elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Soul Reaper") then
					topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Soul Reaper")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
				end;
			end);
		end;
	end;
end);

spawn(function()
    while wait() do
        if _G.AutoDarkCoat then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name, "Darkbeard") then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Transparency = 1
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            until v.Humanoid.Health <= 0 or _G.AutoDarkCoat == false
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                    repeat
                        topos(CFrame.new(3776.663330078125, 14.675973892211914, -3499.1201171875))
                        wait()
                    until (CFrame.new(3776.663330078125, 14.675973892211914, -3499.1201171875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                    EquipWeapon("Fist of Darkness")
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart
                            .CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Saber and World1 and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09,
                                -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08,
                                0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09,
                                    0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10,
                                    -0.648466587))
                            else
                                topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285,
                                    -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515,
                                    0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "GetCup")
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "FillCup", game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "ProQuestProgress", "RichSon")
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                        topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564,
                                            -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166,
                                            -0.939287126, 0.0184739735, 0.342634559))
                                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" then
                                                if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat
                                                            task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,
                                                                "SimulationRadius", math.huge)
                                                        until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                                    end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(
                                                        "Mob Leader").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "ProQuestProgress", "RichSon")
                                    wait(0.5)
                                    EquipWeapon("Relic")
                                    wait(0.5)
                                    topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09,
                                        0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08,
                                        0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert" then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                    until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                    StartBring = true
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ProQuestProgress", "PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoBuyChip then
                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select",
                            _G.SelectChip)
                    end
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do
        if _G.Auto_StartRaid then
            local player = game:GetService("Players").LocalPlayer
            local timerVisible = not player.PlayerGui.Main.Timer.Visible
            local hasMicrochip = player.Backpack:FindFirstChild("Special Microchip") or
                player.Character:FindFirstChild("Special Microchip")
            local world = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") == nil
            if timerVisible and hasMicrochip and world then
                if World2 then
                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main
                        .ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main
                        .ClickDetector)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Kill_Aura then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible then
                local player = game:GetService("Players").LocalPlayer
                local enemies = game:GetService("Workspace").Enemies:GetDescendants()

                for _, v in pairs(enemies) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        pcall(function()
                            repeat
                                wait()
                                sethiddenproperty(player, "SimulationRadius", math.huge)
                                v.Humanoid.Health = 0
                                v.HumanoidRootPart.CanCollide = false
                            until not _G.Kill_Aura or not v.Parent or v.Humanoid.Health <= 0
                        end)
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Dungeon then
            local RaidPos = CFrame.new(0, 25, 0)
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                local worldOrigin = game:GetService("Workspace")["_WorldOrigin"].Locations
                if worldOrigin:FindFirstChild("Island 5") then
                    topos(worldOrigin:FindFirstChild("Island 5").CFrame * RaidPos)
                elseif worldOrigin:FindFirstChild("Island 4") then
                    topos(worldOrigin:FindFirstChild("Island 4").CFrame * RaidPos)
                elseif worldOrigin:FindFirstChild("Island 3") then
                    topos(worldOrigin:FindFirstChild("Island 3").CFrame * RaidPos)
                elseif worldOrigin:FindFirstChild("Island 2") then
                    topos(worldOrigin:FindFirstChild("Island 2").CFrame * RaidPos)
                elseif worldOrigin:FindFirstChild("Island 1") then
                    topos(worldOrigin:FindFirstChild("Island 1").CFrame * RaidPos)
                end
            end
        end
    end
end)


spawn(function()
    pcall(function()
        while wait() do
            if _G.Awaken then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                end)
            end
        end
    end)
end)




--[[local CakePos = CFrame.new(-2134.48779, 148.698532, -12340.1348)
local CakeQuestPos2 = CFrame.new(-2021.32, 37.80, -12028.73, 0.96, 0, 0.29, 0, 1, 0, -0.29, 0, 0.96)
local CakeMobs = {}
for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
        table.insert(CakeMobs, v)
    end
end
spawn(function()
    while task.wait() do
        if _G.AutoFarmPrince and not _G.AcceptQuests and World3 then
            pcall(function()
                for _, v in ipairs(CakeMobs) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if v.Name == "Cake Prince" then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Size = Vector3.new(200, 200, 200)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            until not _G.AutoFarmPrince or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart
                            .CFrame * CFrame.new(5, -30, 10))
                    else
                        if AutoFarmCake == 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",
                                true)
                        end
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude > 1500 then
                                BTP(CakePos)
                            else
                                topos(CakePos)
                            end
                        else
                            topos(CakePos)
                        end
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            if next(CakeMobs) ~= nil then
                                for _, v in ipairs(CakeMobs) do
                                    if v.Humanoid.Health > 0 then
                                        repeat
                                            task.wait()
                                            if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            StartBring = true
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarmPrince or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or AutoFarmCake == 0
                                        UnEquipWeapon(_G.SelectWeapon)
                                    end
                                end
                            else
                                StartBring = false
                                topos(CFrame.new(-2134.48779, 148.698532, -12340.1348))
                            end
                        end
                    end
                end
            end)
        elseif _G.AcceptQuests and _G.AutoFarmPrince and World3 then
            pcall(function()
                for _, v in ipairs(CakeMobs) do
                    if v.Name == "Cake Prince" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat
                            task.wait()
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(200, 200, 200)
                            topos(v.HumanoidRootPart.CFrame * Pos)
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.AutoFarmPrince or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
                if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart
                            .CFrame * CFrame.new(5, -30, 10))
                    else
                        if AutoFarmCake == 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",
                                true)
                        end
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container
                                .QuestTitle.Title.Text
                            if not string.find(QuestTitle, "Cookie Crafter") then
                                StartBring = false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                                StartBring = false
                                if BypassTP then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeQuestPos2.Position).Magnitude > 1500 then
                                        BTP(CakeQuestPos2)
                                    else
                                        topos(CakeQuestPos2)
                                    end
                                else
                                    topos(CakeQuestPos2)
                                end
                                if (CakeQuestPos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",
                                        "CakeQuest1", 1)
                                end
                            else
                                if next(CakeMobs) ~= nil then
                                    for _, v in ipairs(CakeMobs) do
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                            if string.find(QuestTitle, "Cookie Crafter") then
                                                repeat
                                                    task.wait()
                                                    if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                                        EquipWeapon(_G.SelectWeapon)
                                                    end
                                                    AutoHaki()
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    StartBring = true
                                                    game:GetService 'VirtualUser':CaptureController()
                                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until not _G.AutoFarmPrince or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or AutoFarmCake == 0
                                                UnEquipWeapon(_G.SelectWeapon)
                                            else
                                                StartBring = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest")
                                                topos(CFrame.new(-2134.48779, 148.698532, -12340.1348))
                                            end
                                        end
                                    end
                                else
                                    topos(CFrame.new(-2134.48779, 148.698532, -12340.1348))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end) --]]




--[[spawn(function()
    while task.wait() do
        if _G.AutoMaterial then
            pcall(function()
                MaterialMon(SelectMaterial)
                TP1(MPos)
                for _, EnemyName in ipairs(MMon) do
                    if game:GetService("Workspace").Enemies:FindFirstChild(EnemyName) then
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == EnemyName then
                                    repeat
                                        wait()
                                        if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        AutoHaki()
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        StartBring = true
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
                                    StartBring = false
                                    UnEquipWeapon(_G.SelectWeapon)
                                end
                            end
                        end
                    end
                end
                for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                    for _, EnemyName in ipairs(MMon) do
                        if string.find(v.Name, EnemyName) then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                                topos(v.CFrame * Pos)
                            end
                        end
                    end
                end
            end)
        end
    end
end)]]

local EvoRace = Tabs.Race:AddToggle("EvoRace", {Title = "Fully Evo Race V2", Default = false })


   EvoRace:OnChanged(function(Value)
        _G.Auto_EvoRace = Value
        StopTween(_G.Auto_EvoRace)
   end)
   Options.EvoRace:SetValue(false)
   
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_EvoRace then
                if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                        topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                topos(game:GetService("Workspace").Flower1.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                topos(game:GetService("Workspace").Flower2.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Zombie" then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)                                                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                StartBring = true
                                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                            StartBring = false
                                        end
                                    end
                                else
                                    topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                end
                            end
                        end)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                    end
                end
            end
        end
    end)
end)
   		
Tabs.Race:AddButton({
    Title = "Temple Of Time",
    Description = "",
    Callback = function()
		(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);   
   end
})

Tabs.Race:AddButton({
    Title = "Teleport To Top Of GreatTree",
    Description = "",
    Callback = function()
		topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625));
    end
})
Tabs.Race:AddButton({
    Title = "Move Lever Pull",
    Description = "",
    Callback = function()
		topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734));
    end
})


Tabs.Race:AddButton({
    Title = "Move Acient One",
    Description = "",
    Callback = function()
		topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
    end
})

Tabs.Race:AddButton({
        Title = "Buy Acient One Quest",
        Description = "",
        Callback = function()            
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
        end
    })

local DisPlayers = Tabs.Race:AddToggle("DisPlayersFlag", {Title = "Disable Infinity Stairs", Default = false })


   DisPlayers:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = Value
   end)
   Options.DisPlayersFlag:SetValue(false)
Tabs.Race:AddButton({
    Title = "Auto Teleporter to Door Race your",
    Description = "",
    Callback = function()
           Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
                wait(0.1)
           Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
                wait(0.1)
              Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
                 wait(0.1)
                 Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
                 wait(0.5)
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    topos(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    topos(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    topos(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    topos(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    topos(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    topos(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                end
           end
   })
          
Tabs.Race:AddSection("Auto Trial Complete V4")

    RaceV4Quest = Tabs.Race:AddToggle("RaceV4QuestFlag", { Title = "Auto Complete Trail Race V4", Default = false })
    RaceV4Quest:OnChanged(function(Value)
        _G.AutoQuestRace = Value
        StopTween(_G.AutoQuestRace)
    end)
    Options.RaceV4QuestFlag:SetValue(false)

    spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoQuestRace then
					if (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Human" then
						for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat
										wait(0.1);
										v.Humanoid.Health = 0;
										v.HumanoidRootPart.CanCollide = false;
									until not _G.AutoQuestRace or (not v.Parent) or v.Humanoid.Health <= 0;
								end);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Skypiea" then
						for i, v in pairs((game:GetService("Workspace")).Map.SkyTrial.Model:GetDescendants()) do
							if v.Name == "snowisland_Cylinder.081" then
								topos(v.CFrame * CFrame.new(0, 0, 0));
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Fishman" then
						for i, v in pairs((game:GetService("Workspace")).SeaBeasts.SeaBeast1:GetDescendants()) do
							if v.Name == "HumanoidRootPart" then
								topos(v.CFrame * Pos);
								for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v:IsA("Tool") then
										if v.ToolTip == "Melee" then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
										end;
									end;
								end;
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v:IsA("Tool") then
										if v.ToolTip == "Blox Fruit" then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
										end;
									end;
								end;
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v:IsA("Tool") then
										if v.ToolTip == "Sword" then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
										end;
									end;
								end;
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v:IsA("Tool") then
										if v.ToolTip == "Gun" then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
										end;
									end;
								end;
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Cyborg" then
						topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Ghoul" then
						for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat
										wait(0.1);
										v.Humanoid.Health = 0;
										v.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until not _G.AutoQuestRace or (not v.Parent) or v.Humanoid.Health <= 0;
								end);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Mink" then
						for i, v in pairs((game:GetService("Workspace")):GetDescendants()) do
							if v.Name == "StartPoint" then
								topos(v.CFrame * CFrame.new(0, 10, 0));
							end;
						end;
					end;
				end;
			end;
		end);
	end);

Tabs.Race:AddButton({
    Title = "Auto Complete Angel Trial",
    Description = "",
    Callback = function()
		topos(game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame);
    end
})

Tabs.Race:AddButton({
    Title = "Auto Complete Rabbit Trial",
    Description = "",
    Callback = function()
		topos((game:GetService("Workspace")).Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, (-5), 0));
    end
})

Tabs.Race:AddButton({
    Title = "Auto Complete Cyborg Trial",
    Description = "",
    Callback = function()
		topos(CFrame.new(0, 300, 0));
    end
})

    KillPlayersTrialTest = Tabs.Race:AddToggle("KillPlayersTrialTestFlag", { Title = "Auto Kill Players Near", Default = false })
    KillPlayersTrialTest:OnChanged(function(Value)
        _G.TrialV4 = Value
        UsefastattackPlayersGo = Value
        StopTween(_G.TrialV4)
    end)
    Options.KillPlayersTrialTestFlag:SetValue(false)

spawn(function()
    while wait() do
        if _G.TrialV4 then
            pcall(function()
                for i, v in pairs(game.Workspace.Characters:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 150 then
                            repeat
                                task.wait()
                                DamageAura = true
                                UsefastattackPlayersGo = true
                                Click()
                                AutoHaki() 
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0)) 
                                EquipWeapon(_G.SelectWeaponTrial) -- Equip specified weapon
                                v.HumanoidRootPart.CanCollide = false -- Disable collisions for the target
                                v.Head.CanCollide = false
                                v.Humanoid.WalkSpeed = 0 -- Set target's walk speed to 0
                                v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)                                
                                UsefastattackPlayersGo = true
                                Click()
                            until _G.TrialV4 == false or v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid")                            
                        end
                    end
                end
            end)
        end
    end
end)

-- Function to simulate key press actions for continuous input
spawn(function()
    while wait() do
        if _G.TrialV4 then
            repeat
                task.wait()
                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):SetKeyDown("0x65") -- Simulate key down (E key)
                    wait(2)
                    game:GetService("VirtualUser"):SetKeyUp("0x65") -- Simulate key up (E key)
                end
            until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.KillV4
        end
    end
end)
    
    local KillPlayersTrial = Tabs.Race:AddToggle("KillPlayersTrialFlag", { Title = "Auto Kill Players When Trial", Description = "it will kill anyone in trial or outside with 250m radius", Default = false })
    KillPlayersTrial:OnChanged(function(Value)
        _G.AutoKillTial = Value
        StopTween(_G.AutoKillTial)
           if Value == false then
        end
    end)
    Options.KillPlayersTrialFlag:SetValue(false)

spawn(function()
    while wait() do 
        pcall(function()
            if _G.AutoKillTial then
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 240 then
                        if v.Humanoid.Health > 0 then
                            repeat task.wait()
                                AutoHaki()                                
                                UsefastattackPlayersGo = true
                                AttackPlayersNotHeadd()
                                AttackPlayersInTrial()                
                                EquipWeapon(_G.SelectWeapon)
                                NameTarget = v.Name
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(55, 55, 55)
                                if getgenv().SkillZ then
										game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
										task.wait()
										game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
								end
								if getgenv().SkillX then
										game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
										task.wait()
										game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
								end
								if getgenv().SkillC then
										game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
										task.wait()
										game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
								end								
                                Click()
                            until not _G.AutoKillTial or not v.Parent or v.Humanoid.Health <= 0 
                        end
                    end
                end
            end
        end)
    end
end)

   XaiSkillZ = Tabs.Race:AddToggle("XaiSkillZFlag", { Title = "Skill Z For [Kill Player Trial]", Default = true })
   XaiSkillZ:OnChanged(function(Value)
        getgenv().SkillZ = Value
   end)
   Options.XaiSkillZFlag:SetValue(true)

   XaiSkillX = Tabs.Race:AddToggle("XaiSkillXFlag", { Title = "Skill X For [Kill Player Trial]", Default = true })
   XaiSkillX:OnChanged(function(Value)
        getgenv().SkillX = Value
   end)
   Options.XaiSkillXFlag:SetValue(true)

   XaiSkillC = Tabs.Race:AddToggle("XaiSkillCFlag", { Title = "Skill C For [Kill Player Trial]", Default = true })
   XaiSkillC:OnChanged(function(Value)
        getgenv().SkillC = Value
   end)
   Options.XaiSkillCFlag:SetValue(true)
   


--[[
spawn(function()
    while wait() do 
        pcall(function()
            if _G.AutoKillTial then
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                        if v.Humanoid.Health > 0 then
                            repeat wait()
                                AutoHaki()                                                            
                                EquipWeapon(_G.SelectWeapon)
                                NameTarget = v.Name
                                AttackPlaer = true
                                UsefastattackPlayersGo = true
                                ClickNoCooldown = true
                                topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5))                              
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                Click()
                            until not _G.AutoKillTial or not v.Parent or v.Humanoid.Health <= 0 
                        end
                    end
                end
            end
        end)
    end
end)]]

--[[spawn(function()
	while wait() do
		if _G.AutoKillTial then
			for i, v in pairs((game:GetService("Players")):GetChildren()) do
				if v.Name and v.Name ~= game.Players.LocalPlayer.Name and (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
					if v.Character.Humanoid.Health > 0 then
						repeat
							wait();
							NeedAttacking = true
							UsefastattackPlayers = true
							ProjectXTrial = true
							UFFF = true
							EquipWeapon(_G.SelectWeapon);
							AutoHaki();
							Click()
							topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5));
							v.Character.HumanoidRootPart.CanCollide = false;
							v.Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60);							
						until not _G.AutoKillTial or (not v.Parent) or v.Humanoid.Health <= 0;
					end;
				end;
			end;
		end;
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if UseskillKill then
				(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
				wait(0.1);
				(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
				wait(0.1);
				(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
				wait(0.1);
				(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
				wait(0.1);
				(game:GetService("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
				wait(0.1);
				(game:GetService("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
				wait(0.1);
				(game:GetService("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
				wait(0.1);
				(game:GetService("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
			end;
		end);
	end;
end); --]]

    
                	   
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoBartilo then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            Mon = "Swan Pirate"
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mon then
                                    pcall(function()
                                        repeat
                                            task.wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,
                                                "SimulationRadius", math.huge)
                                            if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            StartBring = true
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartBring = false
                                    end)
                                end
                            end
                        else
                            repeat
                                topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08,
                                    -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08,
                                    -0.973085582))
                                wait()
                            until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                        end
                    else
                        repeat
                            topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            wait()
                        until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest",
                            1)
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        Mon = "Jeremy"
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Mon then
                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius",
                                        math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat
                            topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            wait()
                        until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress",
                            "Bartilo")
                        wait(1)
                        repeat
                            topos(CFrame.new(2099.88159, 448.931, 648.997375))
                            wait()
                        until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat
                            topos(CFrame.new(2099.88159, 448.931, 648.997375))
                            wait()
                        until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                    repeat
                        topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end
        end
    end)
end)


   CheckMas = Tabs.Mas:AddParagraph({
        Title = "Settings Skill",
        Content = "And Hold Skill"
   })

local KillAtHs = {
   "10",
   "15",
   "20",
   "25",
   "30",
   "40",
   "50",
   "60",
   "70",
   "80",
   "90",
   "100"
}
  
   KillAtHpane = Tabs.Mas:AddDropdown("KillAtHpane", {
        Title = "Select Kill At",
        Values = KillAtHs,
        Multi = false,
        Default = 1,
   })

   KillAtHpane:SetValue("30")

   KillAtHpane:OnChanged(function(Value)
        _G.Kill_At = Value
   end)

   SkillZ = Tabs.Mas:AddToggle("SkillZFlag", { Title = "Skill Z", Default = true })
   SkillZ:OnChanged(function(Value)
        _G.SkillZ = Value
   end)
   Options.SkillZFlag:SetValue(true)

   SkillX = Tabs.Mas:AddToggle("SkillXFlag", { Title = "Skill X", Default = true })
   SkillX:OnChanged(function(Value)
        _G.SkillX = Value
   end)
   Options.SkillXFlag:SetValue(true)

   SkillC = Tabs.Mas:AddToggle("SkillCFlag", { Title = "Skill C", Default = true })
   SkillC:OnChanged(function(Value)
        _G.SkillC = Value
   end)
   Options.SkillCFlag:SetValue(true)

   SkillV = Tabs.Mas:AddToggle("SkillVFlag", { Title = "Skill V", Default = false })
   SkillV:OnChanged(function(Value)
        _G.SkillV = Value
   end)
   Options.SkillVFlag:SetValue(false)

   SkillF = Tabs.Mas:AddToggle("SkillFFlag", { Title = "Skill F", Default = false })
   SkillF:OnChanged(function(Value)
        _G.SkillF = Value
   end)
   Options.SkillFFlag:SetValue(false)

local Hold = {
  "0",
  "1",
  "2",
  "3",
  "4",
  "5"
}  
  HoldSkillZ = Tabs.Mas:AddDropdown("HoldSkillZ", {
        Title = "Hold Skill Z",
        Values = Hold,
        Multi = false,
        Default = 1,
  })

  HoldSkillZ:SetValue("0")

  HoldSkillZ:OnChanged(function(Value)
        _G.HoldSkillZ = Value
  end)

  HoldSkillX = Tabs.Mas:AddDropdown("HoldSkillX", {
        Title = "Hold Skill X",
        Values = Hold,
        Multi = false,
        Default = 1,
  })

  HoldSkillX:SetValue("0")

  HoldSkillX:OnChanged(function(Value)
        _G.HoldSkillX = Value
  end)

  HoldSkillC = Tabs.Mas:AddDropdown("HoldSkillC", {
        Title = "Hold Skill C",
        Values = Hold,
        Multi = false,
        Default = 1,
  })

  HoldSkillC:SetValue("0")

  HoldSkillC:OnChanged(function(Value)
        _G.HoldSkillC = Value
  end)

  HoldSkillV = Tabs.Mas:AddDropdown("HoldSkillV", {
        Title = "Hold Skill V",
        Values = Hold,
        Multi = false,
        Default = 1,
  })

  HoldSkillV:SetValue("0")

  HoldSkillV:OnChanged(function(Value)
        _G.HoldSkillV = Value
  end)

  HoldSkillF = Tabs.Mas:AddDropdown("HoldSkillF", {
        Title = "Hold Skill V",
        Values = Hold,
        Multi = false,
        Default = 1,
  })

  HoldSkillF:SetValue("0")

  HoldSkillF:OnChanged(function(Value)
        _G.HoldSkillF = Value
  end)

spawn(function()
	(game:GetService("RunService")).RenderStepped:Connect(function()
		pcall(function()
			if UseSkill or UseGunSkill or _G.SeaSkill then
				for i, v in pairs((game:GetService("Players")).LocalPlayer.PlayerGui.Notifications:GetChildren()) do
					for _, Notif in pairs(v:GetChildren()) do
						if string.find(Notif.Text, "Skill locked!") then
							v:Destroy();
						end;
					end;
				end;
			end;
		end);
	end);
end);


           
local gg = getrawmetatable(game);
local old = gg.__namecall;
setreadonly(gg, false);
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod();
	local args = {
		...
	};
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if Skillaimbot then
					args[2] = AimBotSkillPosition;
					return old(unpack(args));
				end;
			end;
		end;
	end;
	return old(...);
end);
spawn(function()
	while wait() do
		pcall(function()
			if UseSkill then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
						if _G.SkillZ then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
							wait(_G.HoldSKillZ);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
						end;
						if _G.SkillX then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
							wait(_G.HoldSKillX);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
						end;
						if _G.SkillC then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
							wait(_G.HoldSKillC);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
						end;
						if _G.SkillV then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
							wait(_G.HoldSKillV);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
						end;
						if _G.SkillF then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "F", false, game);
							wait(_G.HoldSKillF);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "F", false, game);
						end;
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if UseGunSkill then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
						if _G.SkillZ then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
							wait(0.5);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
						end;
						if _G.SkillX then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
							wait(0.5);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
						end;
					end;
				end;
			end;
		end);
	end;
end);


spawn(function()
	pcall(function()
		while wait() do
			if SelectedMasteryMode == "Level Farm" and _G.AutoFarmGunMastery then
				CheckQuest();
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, NameMon) then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					TP1(CFrameQuest);
					if (CFrameQuest.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild(Mon) then
						pcall(function()
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == Mon then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											HealthMin = v.Humanoid.MaxHealth * _G.Kill_At / 100;
											ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
											if v.Humanoid.Health <= HealthMin then
												EquipWeapon(SelectWeaponGun);
												TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0));
												((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
												UseGunSkill = true;
												Skillaimbot = true;
											else
												EquipWeapon(_G.SelectWeapon);
												TP1(v.HumanoidRootPart.CFrame * Pos);
												UseGunSkill = false;
												Skillaimbot = false;
											end;
											NormalAttack();
											AutoHaki();
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.Head.CanCollide = false;
											AimBotSkillPosition = v.HumanoidRootPart.Position;
											StartBring = true;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
										until v.Humanoid.Health <= 0 or _G.AutoFarmGunMastery == false or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										UseGunSkill = false;
										Skillaimbot = false;
										StartBring = false;
									end;
								end;
							end;
						end);
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
					end;
				end;
			end;
		end;
	end);
end);

spawn(function()
	while wait() do
		if SelectedMasteryMode == "Level Farm" and _G.AutoFarmFruitMastery then
			pcall(function()
				CheckQuest();
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, NameMon) then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat
						wait();
						TP1(CFrameQuest);
					until (CFrameQuest.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or (not _G.AutoFarmFruitMastery);
					if (CFrameQuest.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == Mon then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										HealthMs = v.Humanoid.MaxHealth * _G.Kill_At / 100;
										repeat
											task.wait();
											if v.Humanoid.Health <= HealthMs then
												EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
												UseSkill = true;
												Skillaimbot = true;
												TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0));
											else
												UseSkill = false;
												Skillaimbot = false;
												EquipWeapon(_G.SelectWeapon);
												TP1(v.HumanoidRootPart.CFrame * Pos);
											end;
											AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
											MonFarm = v.Name;
											PosMon = v.HumanoidRootPart.CFrame;
											AutoHaki();
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											StartBring = true;
											NormalAttack();
										until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										StartBring = false;
										UseSkill = false;
										Skillaimbot = false;
									end;
								end;
							end;
						end;
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
					end;
				end;
			end);
		end;
	end;
end);

spawn(function()
	while wait() do
		if SelectedMasteryMode == "Nearest" and _G.AutoFarmFruitMastery then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						if v.Name then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 3000 then
								repeat
									wait();
									HealthMs = v.Humanoid.MaxHealth * _G.Kill_At / 100;
									if v.Humanoid.Health <= HealthMs then
										EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
										UseSkill = true;
										Skillaimbot = true;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0));
									else
										UseSkill = false;
										Skillaimbot = false;
										EquipWeapon(_G.SelectWeapon);
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									StartBring = true;
									NormalAttack();
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									sethiddenproperty((game:GetService("Players")).LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoFarmGunMastery or (not v.Parent) or v.Humanoid.Health <= 0 or (not game.Workspace.Enemies:FindFirstChild(v.Name));
								StartBring = false;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);

spawn(function()
	while wait() do
		if SelectedMasteryMode == "Nearest" and _G.AutoFarmGunMastery then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						if v.Name then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 3000 then
								repeat
									wait();
									HealthMin = v.Humanoid.MaxHealth * _G.Kill_At / 100;
									ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
									if v.Humanoid.Health <= HealthMin then
										EquipWeapon(SelectWeaponGun);
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0));
										((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
										UseGunSkill = true;
										Skillaimbot = true;
									else
										EquipWeapon(_G.SelectWeapon);
										topos(v.HumanoidRootPart.CFrame * Pos);
										UseGunSkill = false;
										Skillaimbot = false;
									end;
									StartBring = true;
									NormalAttack();
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									sethiddenproperty((game:GetService("Players")).LocalPlayer, "SimulationRadius", math.huge);
								until not _G.AutoFarmGunMastery or (not v.Parent) or v.Humanoid.Health <= 0 or (not game.Workspace.Enemies:FindFirstChild(v.Name));
								StartBring = false;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
        

    function GetCountMaterials(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end


   PlayedE = Tabs.Esp:AddToggle("PlayedEFlag", { Title = "ESP Players", Description = "Esp Player in servers", Default = false })
   PlayedE:OnChanged(function(Z)
        ESPPlayer = Z
        UpdatePlayerChams();
   end)
   Options.PlayedEFlag:SetValue(false)

   ChestEsp = Tabs.Esp:AddToggle("ChestEspFlag", { Title = "ESP Chest", Default = false })
   ChestEsp:OnChanged(function(Z)
        ChestESP = Z
        UpdateChestChams();
   end)
   Options.ChestEspFlag:SetValue(false)

   FruitsEsp = Tabs.Esp:AddToggle("FruitsEspFlag", { Title = "ESP Fruits", Description = "Esp All Fruits", Default = false })
   FruitsEsp:OnChanged(function(Z)
        DevilFruitESP = Z
        while DevilFruitESP do
          wait();
         UpdateDevilChams();
        end
   end)
   Options.FruitsEspFlag:SetValue(false)

   RealHg = Tabs.Esp:AddToggle("RealHgFlag", { Title = "ESP Real Fruits", Description = "Esp Fruits spawn", Default = false })
   RealHg:OnChanged(function(Z)
        RealFruitESP = Z
        UpdateRealFruitChams();
   end)
   Options.RealHgFlag:SetValue(false)
   
   FloweEsp = Tabs.Esp:AddToggle("FloweEsp", { Title = "ESP Flower", Default = false })
   FloweEsp:OnChanged(function(Z)
        FlowerESP = Z
        UpdateFlowerChams();
   end)
   Options.FloweEsp:SetValue(false)
                        
spawn(function()
	while wait(2) do
		if FlowerESP then
			UpdateFlowerChams();
		end;
		if DevilFruitESP then
			UpdateDevilChams();
		end;
		if ChestESP then
			UpdateChestChams();
		end;
		if ESPPlayer then
			UpdatePlayerChams();
		end;
		if RealFruitESP then
			UpdateRealFruitChams();
		end;
	end;
end);

Tabs.Esp:AddSection("Eps Islands + Mob")

   EspLisands = Tabs.Esp:AddToggle("EspLisands", { Title = "Esp Islands", Default = false })
   EspLisands:OnChanged(function(Z)
        IslandESP = Z
        while IslandESP do
          wait();
        UpdateIslandESP();
        end
   end)

   NpcS = Tabs.Esp:AddToggle("NpcS", { Title = "Npc Esp", Description = "Npc Esp when you can't find them", Default = false })
   NpcS:OnChanged(function(Z)
        NpcESP = Z
   end)
   
   SeaEssp = Tabs.Esp:AddToggle("SeaBeast", { Title = "Sea Beasts Esp", Default = false })
   SeaEssp:OnChanged(function(Z)
        SeaESP = Z        
   end)
   
   MobEsp = Tabs.Esp:AddToggle("EspMob", { Title = "Esp Mob", Default = false })
   MobEsp:OnChanged(function(Z)
        MobESP = Z        
   end)
  
   MigareEsp = Tabs.Esp:AddToggle("MigareEsp", { Title = "Esp Migare", Default = false })
   MigareEsp:OnChanged(function(Z)
        MirageIslandESP = Z
        while MirageIslandESP do
          wait()
         UpdateIslandMirageESP(); 
        end      
   end)
       
   NpcMigare = Tabs.Esp:AddToggle("NpcMigare", { Title = "Esp Advanced Fruit Dealer", Default = false })
   NpcMigare:OnChanged(function(Z)
        AfdESP = Z
        while AfdESP do
           wait(); 
           UpdateAfdESP();
        end     
   end)

   GearGg = Tabs.Esp:AddToggle("GearGg", { Title = "Esp Gear Blue", Default = false })
   GearGg:OnChanged(function(Z)
        GearESP = Z  
          while GearESP do
        wait();
          UpdateGeaESP();
        end     
   end)


-- Shop  
Swordha = Tabs.Sh:AddParagraph({
    Title = "Lengendary Sword Shop",
    Content = ""
})
     
local CheckSwordNe = Tabs.Sh:AddParagraph({
    Title = "ShiSui Status: ",
    Content = ""
})

local SaddiStat = Tabs.Sh:AddParagraph({
    Title = "Saddi Status: ",
    Content = ""
})

local CheckSwordNeB = Tabs.Sh:AddParagraph({
    Title = "Wando Status: ",
    Content = ""
})

    spawn(function()
        while task.wait() do
        pcall(function()
          for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
          if v.Name == "Shisui" then
                CheckSwordNe:SetDesc("[ ShiSui Unlocked ]")
          end
          if v.Name == "Saddi" then
                SaddiStat:SetDesc("[ Saddi Unlocked ]")
          end
          if v.Name == "Wando" then
                CheckSwordNeB:SetDesc("[ Wando Unlocked ]")
          end
        end
    end)
end
end)

Treuemhoai = Tabs.Sh:AddParagraph({
    Title = "True Triple Katana",
    Content = ""
})     
   BuyTTMH = Tabs.Sh:AddToggle("BuyTTMHFlag", { Title = "Buy True Triple Katana [Mythical]", Default = false })
   BuyTTMH:OnChanged(function(Value)
        _G.BuyTTK = Value
   end)
   Options.BuyTTMHFlag:SetValue(false)

task.spawn(function()
    while wait() do
    pcall(function()
      if _G.BuyTTK then
      local A_1 = "MysteriousMan"
      local A_2 = "2"
      local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1, A_2)
        end
      end)
    end
end)

local CheckTTK = Tabs.Sh:AddParagraph({
    Title = "True Triple Katana Status: ",
    Content = ""
})

spawn(function()
    while task.wait() do
    pcall(function()
      for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
      if v.Name == "True Triple Katana" then
        CheckTTK:SetTitle("[ Unlocked ]")
      end
      end
    end)
    end
end)
   
   BuyTTM = Tabs.Sh:AddToggle("BuyTTMFlag", { Title = "Buy Lengend Sword", Default = false })
   BuyTTM:OnChanged(function(Value)
        _G.BuyLengendSword = Value
   end)
   Options.BuyTTMFlag:SetValue(false)

task.spawn(function()
    while wait() do
    pcall(function()
      if _G.BuyLengendSword then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
        end
      end)
    end
end)

MeleeShop = Tabs.Sh:AddParagraph({
    Title = "Melee Shop",
    Content = ""
})     
   Tabs.Sh:AddButton({
        Title = "Buy Dragon Talon [ ƒ5,000 $3,000,000 ]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
        end
   })
    
    Tabs.Sh:AddButton({
        Title = "Buy Sanguine Art [ ƒ5,000 $5,000,000 1 Heart Leviathan]",
        Description = "",
        Callback = function()            
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy God Human [ ƒ5,000 $5,000,000 ]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        end
    })
        
    Tabs.Sh:AddButton({
        Title = "Buy Electric Claw [ ƒ5,000 $3,000,000 ]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        end
    })
      
    Tabs.Sh:AddButton({
        Title = "Buy Black Leg [ $150,000 ]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
        end
    })
 
    Tabs.Sh:AddButton({
        Title = "Buy Electro [ $550,000 ]",
        Description = "",
        Callback = function()            
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Water Kung Fu [ $750,000 ]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
        end
    })

   
    Tabs.Sh:AddButton({
        Title = "Buy Dragon Claw [ ƒ1,500 ]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
        end
    })
    Tabs.Sh:AddButton({
        Title = "Buy Superhuman [ $3,000,000 ]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Death Step [ ƒ5,000 $5,000,000 ]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Sharkman Karate [ ƒ5,000 $2,500,000 ]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        end
    })    

   Tabs.Sh:AddSection("Abilities Shop")
    
    Tabs.Sh:AddButton({
        Title = "Buy Sky Jumb [$ 10,000 Beli ]",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Buso Haki [$ 25,000 Beli ]",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Observation haki [$ 750,000 Beli ]",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Soru  [$ 100,000 Beli ]",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
        end
    })

    Tabs.Sh:AddSection("Misc")
    
    Tabs.Sh:AddButton({
        Title = "Buy Race Ghoul",
        Description = "",
        Callback = function()            
local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Race Cyborg [ƒ 2500]",
        Description = "",
        Callback = function()            
local args = {[1] = "CyborgTrainer", [2] = "Buy"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Random Race [ƒ3000]",
        Description = "",
        Callback = function()            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Reset Stats [ƒ 2500]",
        Description = "",
        Callback = function()            
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
        end
    })
    
	
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("GreenXFolder")
SaveManager:SetFolder("GreenXFolder/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Ui)
SaveManager:BuildConfigSection(Tabs.Ui)
SaveManager:LoadAutoloadConfig()
