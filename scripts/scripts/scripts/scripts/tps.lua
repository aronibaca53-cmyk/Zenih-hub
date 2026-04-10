-- TPs - Zenith Hub
local player = game.Players.LocalPlayer
local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

if root then
    -- TP a Café (First Sea)
    if game.PlaceId == 2753915549 then
        root.CFrame = CFrame.new(-380, 50, 280)
        print("✅ TP a Café")
    end

    -- TP a Barco Embrujado
    root.CFrame = CFrame.new(920, 130, -3900)
    print("✅ TP a Barco Embrujado")
end
