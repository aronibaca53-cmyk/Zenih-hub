-- Fly con Toggle (Tecla f) - Zenith Hub
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

_G.Fly = false
_G.FlySpeed = 100

local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyVelocity.Velocity = Vector3.new(0, 0, 0)

local function toggleFly()
    _G.Fly = not _G.Fly
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    local root = character.HumanoidRootPart

    if _G.Fly then
        bodyVelocity.Parent = root
        print("🕊️ Fly ACTIVADO - Aron Hub (Presiona F para desactivar)")
    else
        bodyVelocity.Parent = nil
        print("🕊️ Fly DESACTIVADO - Aron Hub")
    end
end

mouse.KeyDown:Connect(function(key)
    if key:lower() == "f" then
        toggleFly()
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.Fly and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local root = player.Character.HumanoidRootPart
        local cam = workspace.CurrentCamera
        local moveDirection = Vector3.new()
        local uis = game:GetService("UserInputService")

        if uis:IsKeyDown(Enum.KeyCode.W) then moveDirection += cam.CFrame.LookVector end
        if uis:IsKeyDown(Enum.KeyCode.S) then moveDirection -= cam.CFrame.LookVector end
        if uis:IsKeyDown(Enum.KeyCode.A) then moveDirection -= cam.CFrame.RightVector end
        if uis:IsKeyDown(Enum.KeyCode.D) then moveDirection += cam.CFrame.RightVector end
        if uis:IsKeyDown(Enum.KeyCode.Space) then moveDirection += Vector3.new(0,1,0) end
        if uis:IsKeyDown(Enum.KeyCode.LeftControl) then moveDirection -= Vector3.new(0,1,0) end

        if moveDirection.Magnitude > 0 then
            bodyVelocity.Velocity = moveDirection.Unit * _G.FlySpeed
        else
            bodyVelocity.Velocity = Vector3.new(0,0,0)
        end
    end
end)

print("✅ Fly cargado correctamente - Presiona F para volar - Aron Hub")
