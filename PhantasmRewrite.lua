loadstring(game:HttpGet("https://raw.githubusercontent.com/Muhammad39843209/PhantasmRewrite/main/PhantasmRewrite.lua"))()
-- Buat UI di layar
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

-- Buat Frame UI
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Position = UDim2.new(0.4, 0, 0.4, 0)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Parent = ScreenGui

-- Buat Tombol Speed Hack
local SpeedButton = Instance.new("TextButton")
SpeedButton.Size = UDim2.new(0, 180, 0, 50)
SpeedButton.Position = UDim2.new(0, 10, 0, 10)
SpeedButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
SpeedButton.Text = "Speed Hack: ON"
SpeedButton.Parent = Frame

-- Buat Tombol Jump Hack
local JumpButton = Instance.new("TextButton")
JumpButton.Size = UDim2.new(0, 180, 0, 50)
JumpButton.Position = UDim2.new(0, 10, 0, 70)
JumpButton.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
JumpButton.Text = "Jump Hack: ON"
JumpButton.Parent = Frame

-- Fungsi Speed Hack
local speedEnabled = false
SpeedButton.MouseButton1Click:Connect(function()
    speedEnabled = not speedEnabled
    if speedEnabled then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        SpeedButton.Text = "Speed Hack: ON"
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        SpeedButton.Text = "Speed Hack: OFF"
    end
end)

-- Fungsi Jump Hack
local jumpEnabled = false
JumpButton.MouseButton1Click:Connect(function()
    jumpEnabled = not jumpEnabled
    if jumpEnabled then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
        JumpButton.Text = "Jump Hack: ON"
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        JumpButton.Text = "Jump Hack: OFF"
    end
end)
