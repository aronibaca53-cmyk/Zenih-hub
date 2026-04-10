-- Insta Kill Void - Zenith Hub
_G.InstaKill = true

spawn(function()
    while _G.InstaKill do
        task.wait(0.1)
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                local root = plr.Character.HumanoidRootPart
                root.CFrame = CFrame.new(0, -500, 0)   -- Al vacío
                plr.Character.Humanoid.Health = 0
            end
        end
    end
end)

print("✅ Insta Kill Void Activado - Zenith Hub")
