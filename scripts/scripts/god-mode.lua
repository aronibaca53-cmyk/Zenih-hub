-- God Mode - Zenith Hub
local player = game.Players.LocalPlayer
player.CharacterAdded:Connect(function(char)
    local humanoid = char:WaitForChild("Humanoid")
    humanoid.MaxHealth = math.huge
    humanoid.Health = math.huge
end)

if player.Character then
    local humanoid = player.Character:WaitForChild("Humanoid")
    humanoid.MaxHealth = math.huge
    humanoid.Health = math.huge
end

print("✅ God Mode Activado - Zenith Hub")
