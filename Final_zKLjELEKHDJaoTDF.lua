local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}
local venyx = library.new("Boxing Sim", 5012544693)
local page = venyx:addPage("Auto Stuff", 5012544693)
local section = page:addSection("Auto Stuff")
local hum = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

getgenv().a = false

section:addToggle("AutoSell", nil, function(value)
    getgenv().a = value
    if value then
        while getgenv().a == true do
            game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()
            task.wait(1)
        end
    end
end)

section:addToggle("AutoSwing", nil, function(value)
    getgenv().a = value
    if value then
        while getgenv().a == true do
keypress(0x46)
wait(1)
keyrelease(0x46)
end
end
end)
section:addToggle("Autofarm Cane", nil, function(value)
    getgenv().a = value
    if value then
        while getgenv().a == true do
            for i,v in ipairs(game:GetService("Workspace").Canes:GetDescendants()) do
    if v:isA("Part") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        wait(0.2)
    end
        end
end
end
end)
section:addToggle("AutoFarm total (inclui tudo)", nil, function(value)
    getgenv().a = value
    if value then
        while getgenv().a == true do
            game:GetService("ReplicatedStorage").Events.BuyAllGlove:FireServer()
            wait()
            game:GetService("ReplicatedStorage").Events.BuyAllDNA:FireServer()
            wait()
            keypress(0x46)
            wait(0.35)
            keyrelease(0x46)
            wait(0.35)
            game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()
            wait(0.35)
            local args = {[1] = game:GetService("Players").LocalPlayer.Data.HighestClass.Value + 1}
game:GetService("ReplicatedStorage").Events.BuyClass:FireServer(unpack(args))
wait(0.35)
        end
    end
end)
section:addToggle("LIGUE ISSO SE FOR USAR FARM TOTAL", nil, function(value)
    getgenv().a = value
    if value then
        while getgenv().a == true do
            local toolname = "Punch" 
local player = game:GetService("Players").LocalPlayer
while wait() do
    pcall(function()
        if player.Backpack:FindFirstChild(toolname) and player.Character:FindFirstChild(toolname) == nil then
            local tool = player.Backpack:FindFirstChild(toolname)
            player.Character.Humanoid:EquipTool(tool)
        end
    end)
end

end
end
end)


section:addButton("Comprar todas as Luvas", function()
game:GetService("ReplicatedStorage").Events.BuyAllGlove:FireServer()
end)

section:addButton("Comprar todos os DNA's", function()
game:GetService("ReplicatedStorage").Events.BuyAllDNA:FireServer()
end)

section:addButton("Comprar classe", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Data.HighestClass.Value + 1}

game:GetService("ReplicatedStorage").Events.BuyClass:FireServer(unpack(args))
end)

section:addButton("Desbloquear as Ilhas (A Última É meio Bugada)", function()
hum.CFrame = CFrame.new(16313.6865, 18312.8164, -35174.8633, 0.998401582, 0, 0.0565183163, 0, 1, 0, -0.0565183163, 0, 0.998401582)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
hum.CFrame = CFrame.new(16694.041, 24500.2676, -35202.1953, 0.998401582, 0, 0.0565183163, 0, 1, 0, -0.0565183163, 0, 0.998401582)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
hum.CFrame = CFrame.new(16504.6133, 50547.0469, -35220.0859, 0.551557064, 0.00511189876, -0.834121466, 0.00191862707, 0.999970794, 0.00739698252, 0.834134936, -0.00568022626, 0.551531196)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
hum.CFrame = CFrame.new(16261.4102, 10797.0791, -35266.1641, 0.6085639, 0, 0.793504894, 0, 1, 0, -0.793504894, 0, 0.6085639)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
hum.CFrame = CFrame.new(16432.875, 3410.47827, -35276.7617, 1, 0, 0, 0, 1, 0, 0, 0, 1)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
hum.CFrame = CFrame.new(16531.4746, 6273.09326, -35295.5117, 1, 0, 0, 0, 1, 0, 0, 0, 1)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
hum.CFrame = CFrame.new(16517.3477, 34101.4375, -35224.5469, 0.232785285, -0, -0.97252816, 0, 1, -0, 0.97252816, 0, 0.232785285)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
hum.CFrame = CFrame.new(16466.0391, 1886.55151, -35282.4141, -0.0102282763, 0, 0.999947667, 0, 1, 0, -0.999947667, 0, -0.0102282763)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
hum.CFrame = CFrame.new(16517.9512, 66377.4219, -35222.832, 0.403608263, -0, -0.914932013, 0, 1, -0, 0.914932013, 0, 0.403608263)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
hum.CFrame = CFrame.new(16372.2529, 86823.7188, -35217.1484, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
keypress(0x20)
wait(0.2)
keyrelease(0x20)
wait(2)
end)
section:addKeybind("Key de Fechar / Abrir a GUI", Enum.KeyCode.RightControl, function()
	venyx:toggle()
end)

local page2 = venyx:addPage("Ilhas", 5012544693)
local section2 = page2:addSection("Ilhas Individuais")
local hum = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
section2:addButton("Fascinating Fire", function()
    hum.CFrame = CFrame.new(16313.6865, 18312.8164, -35174.8633, 0.998401582, 0, 0.0565183163, 0, 1, 0, -0.0565183163, 0, 0.998401582)
end)
section2:addButton("Vast Volcanoes", function()
    hum.CFrame = CFrame.new(16694.041, 24500.2676, -35202.1953, 0.998401582, 0, 0.0565183163, 0, 1, 0, -0.0565183163, 0, 0.998401582)
end)
section2:addButton("Sparky Storms", function()
    hum.CFrame = CFrame.new(16504.6133, 50547.0469, -35220.0859, 0.551557064, 0.00511189876, -0.834121466, 0.00191862707, 0.999970794, 0.00739698252, 0.834134936, -0.00568022626, 0.551531196)
end)
section2:addButton("Glistering Galaxy", function()
    hum.CFrame = CFrame.new(16261.4102, 10797.0791, -35266.1641, 0.6085639, 0, 0.793504894, 0, 1, 0, -0.793504894, 0, 0.6085639)
end)
section2:addButton("Winter Wonderland", function()
    hum.CFrame = CFrame.new(16432.875, 3410.47827, -35276.7617, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end) 
section2:addButton("Mysterious Moon", function()
    hum.CFrame = CFrame.new(16531.4746, 6273.09326, -35295.5117, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
section2:addButton("Wacky Waters", function()
    hum.CFrame = CFrame.new(16517.3477, 34101.4375, -35224.5469, 0.232785285, -0, -0.97252816, 0, 1, -0, 0.97252816, 0, 0.232785285)
end)
section2:addButton("Desert Dream", function()
    hum.CFrame = CFrame.new(16466.0391, 1886.55151, -35282.4141, -0.0102282763, 0, 0.999947667, 0, 1, 0, -0.999947667, 0, -0.0102282763)
end)
section2:addButton("Imaginative Infinity", function()
    hum.CFrame = CFrame.new(16517.9512, 66377.4219, -35222.832, 0.403608263, -0, -0.914932013, 0, 1, -0, 0.914932013, 0, 0.403608263)
end)
section2:addButton("Mighty Magma", function()
    hum.CFrame = CFrame.new(16372.2529, 86823.7188, -35217.1484, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
end)
local page3 = venyx:addPage("Player", 5012544693)
local section3 = page3:addSection("Modif. De Player")
section3:addSlider("WalkSpeed", 0, 16, 1000, function(value)
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
section3:addSlider("Jump Power", 0, 50, 1000, function(value)
game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
end)
local theme = venyx:addPage("Temas", 5012544693)
local colors = theme:addSection("Cores")

for theme, color in pairs(themes) do
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end
