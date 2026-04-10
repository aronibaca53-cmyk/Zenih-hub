-- Hitbox Infinito Invisible - Zenith Hub
_G.HeadSize = 1000000000000000
_G.Enabled = true

game:GetService("RunService").RenderStepped:Connect(function()
    if not _G.Enabled then return end
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local root = plr.Character.HumanoidRootPart
            root.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
            root.Transparency = 1      -- Invisible
            root.CanCollide = false
        end
    end
end)

print("✅ Hitbox Invisible Activado - Zenith Hub")
