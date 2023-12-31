-- [ bot made by krone and krone only nobody else ]
-- [ opened source because its a shitty bot so who cares ]

repeat wait() until game:IsLoaded()
getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)

workspace["FallenPartsDestroyHeight"] = 0/0
game:GetService("Lighting").ClockTime = 0
--[ Table Checks ]--
local kroneUserids = {2435027122}
local CheckUser = function(User)
    local UserId = User["UserId"]

    if table.find(kroneUserids, UserId) then
--        table.insert(WhitelistedPlayers, UserId)
        Chat("Presence of the Owner \"" .. User["DisplayName"] .. "\" has been detected.")
        Chat("Presence of the Owner \"" .. User["DisplayName"] .. "\" has been detected.")
        Chat("Presence of the Owner \"" .. User["DisplayName"] .. "\" has been detected.")
    end
end

for _,v in pairs(game.Players:GetPlayers()) do
    if v ~= game.Players.LocalPlayer then
        CheckUser(v)
    end
end

game.Players["PlayerAdded"]:Connect(function(v)
    CheckUser(v)
end)
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

-- inject anti lag scripts before starting
game:GetService("RunService"):Set3dRenderingEnabled(false)

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
   if
       g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or
           g:IsA("DepthOfFieldEffect")
    then
       g.Enabled = false
   end
end
sethiddenproperty(game.Lighting, "Technology", "Compatibility")
wait(1)
for i,v in next, workspace:GetDescendants() do
if v:IsA("MeshPart") or v:IsA("UnionOperation") then
sethiddenproperty(v, "RenderFidelity", "Automatic")
end
end
wait(1)
local timeBegan = tick()
for i,v in ipairs(workspace:GetDescendants()) do
if v:IsA("BasePart") then
v.Material = "SmoothPlastic"
end
end
for i,v in ipairs(game:GetService("Lighting"):GetChildren()) do
v:Destroy()
end

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



local ChatLists = {
    ServerVanity = {
        "/insist"
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
      "onlinegraves - wrong turn",
      "islurwhenitalk - fed up",
      "bloody! - i like money",
      "hillmurder - ion fold #xp",
      "yuuki - night fall plague (rare)",
      "ksuuvi - at the backhouse",
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
      "forevermore - my words never heard",
      "swif - tryna do",
      "kxr & swif - stanza",
      "swif - feel // abyss",
    },
    introTable = {
      "you look really cool",
      "hows life",
      "im such a big fan i watched your FaceBook Live",
      "are you a funny person",
      "plz dont be mean u look egotistical",
      "dont ask me to do b4b. thats the most dollhousian thing you nd your kind does",
      "i know ur the type to eat cheeseburgers unethically",
      "you look like you extort femalic females i wont be next",
      "i hope your house blows up bruh",
      "maybe you might get lucky and ill add you",
      "brooo wth is that outfit you look atrocious",
      "zoo weee mama",
      "Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi",
      "dress coded now what BUDDY",
    },
    convoTable = {
      "havent been on krd or nun i deleted ts",
      "im a irl warrior now not a dollhousian bro",
      "i got bored nd just wanted to check out the new game",
      "where u been at man the outside world is crazy brah",
      "dude i got robbed yesterday by a homeless guy",
      "my eyeballs pink nd my feet brown bruh life aint the same no more",
      "can u tell me a joke nvm dont bruh i said it inna same sentence",
      "please spare me im bored",
      "i hate you because out of the 100 random messages u received dis 1",
      "dude i just wanna lay down but idrc",
      "HILLMURDER SONGS R SO HARDDD",
      "the underground rapping community is so cool but toxic dey kicked me off",
      "hey gurlie pop how u doin"
    },
    FriendlyOffer = {
      "maybe we can play a game some day when im online.",
      "ill probably join you on roblox.",
      "gotta be nice around here",
      "im dying for a friend right now"
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
        local ending = false

        -- Teleport 10 studs away from the target player
        local teleportPosition = character.HumanoidRootPart.Position + Vector3.new(10, 0, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, character.HumanoidRootPart.Position)
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
            repeat task.wait()
                humanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(5, 0, 0))
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, player.Character.HumanoidRootPart.Position)
            until end
        end)()
        Chat(ChatLists.greetTable[math.random(1, (#ChatLists.greetTable))] .. " " .. targetPlayer.DisplayName .. " ")
        wait(2)
        Chat("I have a secret.")
        wait(1.5)
        Chat(ChatLists.ServerVanity[math.random(1, (#ChatLists.ServerVanity))] .. " | find out what the rest when you join.")
        wait(1.5)
        Chat("heres a song u should listen to. "  .. ChatLists.songTable[math.random(1, (#ChatLists.songTable))])
        wait(1.5)
        Chat(ChatLists.ServerVanity[math.random(1, (#ChatLists.ServerVanity))] .. " see you soon || made by krone")
        playRandomWaveAnimation()
        ending = true
        wait(3)
    end
end
Chat("For some reason i can smell that Roblox Default Chat Systems is broken and keeps tagging my greetings..")
wait(1)
Chat(Chat(ChatLists.ServerVanity[math.random(1, (#ChatLists.ServerVanity))] .. " || Serverhopping")
wait(1)
hop()
wait(5)
Chat("Failed to serverhop. Error at Line [8629]: gothamSSn.json ###########*")
wait(1)
hop()
wait(5)
Chat("Failed to serverhop. Error at Line [8629]: gothamSSn.json ###########*")
