
workspace["FallenPartsDestroyHeight"] = 0/0
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
--[[
local function RemoveGuis()
    for i, object in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
        object:Destroy()
    end
end; pcall(RemoveGuis)

workspace.Terrain:Clear()
for i, object in pairs(game.Lighting:GetChildren()) do
    object:Destroy()
end
game.Players.LocalPlayer.CharacterAdded:Connect(function() task.wait(1); pcall(RemoveGuis) end)
]]--

local a = game
local b = a.Workspace
local c = a.Lighting
local d = b.Terrain
d.WaterWaveSize = 0
d.WaterWaveSpeed = 0
d.WaterReflectance = 0
d.WaterTransparency = 0
c.GlobalShadows = false
c.FogEnd = 9e9
c.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for e, f in pairs(a:GetDescendants()) do
   if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
       f.Material = "Plastic"
       f.Reflectance = 0
   elseif f:IsA("Decal") or f:IsA("Texture") then
       f.Transparency = 0
   elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
       f.Lifetime = NumberRange.new(0)
   elseif f:IsA("Explosion") then
       f.BlastPressure = 0
       f.BlastRadius = 0
   elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
       f.Enabled = false
   elseif f:IsA("MeshPart") then
       f.Material = "Plastic"
       f.Reflectance = 0
       f.TextureID = 10385902758728957
   end
end

for e, g in pairs(c:GetChildren()) do
   if g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or g:IsA("DepthOfFieldEffect") then
       g.Enabled = false
   end
end

sethiddenproperty(game.Lighting, "Technology", "Compatibility")

for i,v in next, workspace:GetDescendants() do
    if v:IsA("MeshPart") or v:IsA("UnionOperation") then
        sethiddenproperty(v, "RenderFidelity", "Automatic")
    end
end

local timeBegan = tick()
for i,v in ipairs(workspace:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Material = "SmoothPlastic"
    end
end
for i,v in ipairs(game:GetService("Lighting"):GetChildren()) do
    v:Destroy()
end

if game.Players.LocalPlayer.Backpack:FindFirstChild("Sign") then
    game.Players.LocalPlayer.Backpack.Sign.Parent = game.Players.LocalPlayer.Character
    wait(1)
    local args = {
        [1] = "text",
        [2] = "join /shhh\n come join, i wanna tell you there..\n"
    }

    game:GetService("ReplicatedStorage").Alright:FireServer(unpack(args))
end
wait(.1)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()

-- inject anti lag scripts before starting


---[[ start ]]--
-- Function to send a chat message
local Chat = function(Input)
	game:GetService("ReplicatedStorage")["DefaultChatSystemChatEvents"]["SayMessageRequest"]:FireServer(Input, "All")
end

for i,v in next, workspace:GetDescendants() do
    if v:IsA'Seat' then
        v:Destroy()
    end
end

--[[
local Remotes = {
    game:GetService("ReplicatedStorage").GiveBox,
    game:GetService("ReplicatedStorage").GiveCat
}
]]--

local ChatLists = {
    ServerVanity = {
        "/Shhh"
    },
    greetTable = {
        "hi",
        "hello",
        "greetings",
        "bonjour",
        "hola",
        "hey",
    },
    socialmanipulationTable = {
        "i heard something bad abour you. very bad.",
        "i have a secret.",
        "someone was talking about you.",
        "why did you do that to that person",
        "ur so weird for what you did bro.",
        "a little birdie told me something about you",
    },
    songTable = {
      "hillmurder - nine w/ @s6erpent #xp",
      "iraq radio mix pt 4",
      "hillmurder - invalidate",
      "len333 - shoot",
      "lunachrist - titans w/ kumosai",
      "ambi - play it out prod yk",
      "entity - WHY B SO SRS!?!?",
      "vnmpire - glamstar",
      "kursses - lait romani - what u see",
      "cyberia - play pretend",
      "textkill - goner (rare)",
      "ztarnm - you can do whatever",
      "ztarnm - i don't wanna do it",
      "sephe - wait...",
      "(dj slur) why would i lie",
      "bloody! x cap - stumpy and cheese",
      "feud - sight ft entity, lxght, naomi's grave and murderjj (deathrow)",
      "zinoblade - chaos emeralds // rouge (gemcalibur & wavebird)",
      "star67 - zombiekiller",
      "rachyl - bad game 2",
      "duwap kain - santa",
      "star67 - #ghoul",
      "pinkblxxd x star67 - untilted (rare)",
      "rachyl - oxy",
      "bloody! - alignment",
      "emiii - buford freestyle (rare)",
      "eddyoetty - growup",
      "percizeshwty - #stopstealingswag",
      "onlinegraves - wrong turn",
      "islurwhenitalk - fed up",
      "bloody! - i like money",
      "hillmurder - ion fold #xp",
      "yuuki - night fall plague (rare)",
      "ksuuvi - at/@ the backhouse",
      "korosu #k2 - deadline",
      "sublimits - geeked out my mind",
      "tenkay - never put my faith in her",
      "katai - da feelinn",
      "lust - Requiem For A Dream",
      "solar - Depressed and Fly",
      "luci4 - SHOW IT/SHE WANNA",
      "*67 - lov u like a razor",
      "lucifer - SOULFUL *REMIX*",
      "kursses - LAIT! #fantasia",
      "forevermore - my words never heard"
    }
}


local function ServerHop()
    local success, response = pcall(function()
        return game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
    end)

    if success and response and response.data then
        local AvailableServers = response.data

        while true do
            wait()
            local RandomServer = AvailableServers[math.random(#AvailableServers)]
            if RandomServer.playing < RandomServer.maxPlayers - 1 and RandomServer.playing > 12 and RandomServer.id ~= game.JobId then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, RandomServer.id)
            end
        end
    else
        warn("Failed to retrieve server list. Retrying...")
        ServerHop()
    end
end

local function hop()
    while true do
        local success, errorMessage = pcall(ServerHop)
        if not success then
            warn("Server hop error: " .. errorMessage)
        end
        wait()
    end
end


-- List of wave animations
local r15Hi = {507770239}
local r6Hi = {128777973}

-- Function to play a random wave animation
local function playRandomWaveAnimation()
    local r15wave = r15Hi[math.random(1, #r15Hi)]
    local r6wave = r6Hi[math.random(1, #r6Hi)]

    local WaveAnim = Instance.new("Animation")

    if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        WaveAnim.AnimationId = "rbxassetid://"..tostring(r15wave)
    else
        WaveAnim.AnimationId = "rbxassetid://"..tostring(r6wave)
    end

    local wave = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(WaveAnim)
    wave:Play(1, 5, 1)
    wait(1)
    wave:Stop()
end

coroutine.wrap(function()
    while true do
        for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
        wait()
    end
end)()


--[[
coroutine.wrap(function()
    while true do
        if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
            local character = game.Players.LocalPlayer.Character
            local backpack = game.Players.LocalPlayer.Backpack

            if character and backpack then
                for _, tool in pairs(character:GetChildren()) do
                    if tool:IsA("Tool") then
                        tool.Parent = backpack
                    end
                end
            end
        end

        wait(1) -- Adjust the wait time as needed
    end
end)()
]]--
coroutine.wrap(function()
    while true do
        if game.Players.LocalPlayer then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AncestryChanged:Connect(function(_, parent)
                    if not parent then
                        while wait(1) do
                            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y < -50 then
                                    local spawnPoints = workspace:FindPartsInRegion3(workspace:WaitForChild("SpawnPoints").SpawnRegion, nil, math.huge)
                                    if #spawnPoints > 0 then
                                        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(spawnPoints[math.random(1, #spawnPoints)].Position + Vector3.new(0, 5, 0))
                                    else
                                        warn("No SpawnPoints found in the workspace.")
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        wait(10)
    end
end)()

for _, targetPlayer in pairs(game.Players:GetPlayers()) do
    if targetPlayer ~= game.Players.LocalPlayer and targetPlayer.Character then
        local character = targetPlayer.Character
        local humanoid = character:FindFirstChild("Humanoid")
        local drain = false

        -- Teleport 10 studs away from the target player
        local teleportPosition = character.HumanoidRootPart.Position + Vector3.new(20, 5, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, character.HumanoidRootPart.Position)
        Chat("HEY! WAIT FOR ME " .. targetPlayer.DisplayName .. " ")
        wait(1)
        -- Create a path to the target player
        local pathfindingService = game:GetService("PathfindingService")
        local path = pathfindingService:CreatePath({
            AgentRadius = 2,
            AgentHeight = 5,
            AgentCanJump = true,
            AgentJumpHeight = 10,
            AgentMaxSlope = 45,
            AgentMaxDropDown = 5,
            AgentMaxClamp = 10,
            AgentMaxSprintSlope = 20,
            AgentSlopeSlide = true,
            AgentFallTime = 0.1,
            AgentMaxSprintAngle = 1,
            AgentStepHeight = 0.5,
            AgentJumpMagnitude = 1,
            AgentWalkSpeed = 16,
            AgentSprintSpeed = 32,
            AgentSprintDuration = 1,
            AgentSprintAcceleration = 4,
            AgentHumanoid = game.Players.LocalPlayer.Character.Humanoid,
            AgentRootRigidity = 0,
            AgentWeightShift = 4,
            AgentCollisionRadiusOffset = 2,
            AgentCollisionRadius = 2
        })

        path:ComputeAsync(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, character.HumanoidRootPart.Position + Vector3.new(2, 0, 0))
        for i,v in pairs(path:GetWaypoints()) do
            game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.Position)
        end
        wait(1)
        coroutine.wrap(function()
            repeat wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPlayer.Character.HumanoidRootPart.Position + Vector3.new(5, 0, 0))
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, targetPlayer.Character.HumanoidRootPart.Position)
            until drain
        end)()
        Chat(ChatLists.greetTable[math.random(1, (#ChatLists.greetTable))] .. " " .. targetPlayer.DisplayName .. " ")
        wait(2)
        Chat("I have something to tell you.")
        wait(1.5)
        Chat("read this.")
        wait(0.5)
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Sign") then
            game.Players.LocalPlayer.Backpack.Sign.Parent = game.Players.LocalPlayer.Character
            wait(1)
        end
        wait(3)
        Chat("You see it?")
        wait(2)
        Chat("heres a song u should listen to. "  .. ChatLists.songTable[math.random(1, (#ChatLists.songTable))])
        wait(1)
        Chat("see you soon")
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        wait(.1)
        playRandomWaveAnimation()
        drain = true
        wait(3)
    end
end
Chat("For some reason i can smell that Roblox Default Chat Systems is broken and keeps tagging my greetings..")
wait(1)
Chat("Serverhopping")
wait(1)
hop()
wait(5)
Chat("Failed to serverhop. Error at Line [8629]: gothamSSn.json ###########*")
