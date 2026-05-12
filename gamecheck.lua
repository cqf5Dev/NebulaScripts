
if game.GameId ~= 2992873140 then
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local player = Players.LocalPlayer

    local gui = Instance.new("ScreenGui")
    gui.Name = "GameCheckUI"
    gui.ResetOnSpawn = false
    gui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 420, 0, 150)
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.BackgroundColor3 = Color3.fromRGB(15, 25, 40)
    frame.BorderSizePixel = 0
    frame.Parent = gui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = frame

    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 2
    stroke.Color = Color3.fromRGB(80, 170, 255)
    stroke.Parent = frame

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 40, 70)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 15, 25))
    })
    gradient.Rotation = 90
    gradient.Parent = frame

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -20, 0, 40)
    title.Position = UDim2.new(0, 10, 0, 10)
    title.BackgroundTransparency = 1
    title.Text = "NEBULA - ERROR"
    title.Font = Enum.Font.GothamBold
    title.TextSize = 22
    title.TextColor3 = Color3.fromRGB(120, 200, 255)
    title.Parent = frame

    local msg = Instance.new("TextLabel")
    msg.Size = UDim2.new(1, -20, 0, 60)
    msg.Position = UDim2.new(0, 10, 0, 55)
    msg.BackgroundTransparency = 1
    msg.Text = "This script is not running in this game."
    msg.Font = Enum.Font.Gotham
    msg.TextSize = 18
    msg.TextColor3 = Color3.fromRGB(220, 235, 255)
    msg.TextWrapped = true
    msg.Parent = frame

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.5, 0, 0, 30)
    btn.Position = UDim2.new(0.25, 0, 1, -40)
    btn.BackgroundColor3 = Color3.fromRGB(80, 170, 255)
    btn.Text = "Close"
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 16
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Parent = frame

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = btn

    
    frame.BackgroundTransparency = 1
    TweenService:Create(frame, TweenInfo.new(0.35), {
        BackgroundTransparency = 0
    }):Play()

    btn.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)

    return
end
