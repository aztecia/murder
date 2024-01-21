-- [ bot made by krone and krone only nobody else ]
-- [ only being krone works else you get logged xD ]
-- [ anyone claiming they have the source is larp ]

Players, RunService, HttpService, TPService = game:GetService("Players"), game:GetService("RunService"), game:GetService("HttpService"), game:GetService("TeleportService")

LocalPlayer, PlaceID = Players.LocalPlayer, game.PlaceId


local function RemoveGuis()
    for i, object in pairs(LocalPlayer.PlayerGui:GetChildren()) do
        object:Destroy()
    end
end; pcall(RemoveGuis)

game:GetService("NetworkClient"):SetOutgoingKBPSLimit(0)
workspace.Terrain:Clear()
for i, object in pairs(game.Lighting:GetChildren()) do
    object:Destroy()
end
LocalPlayer.CharacterAdded:Connect(function() task.wait(1); pcall(RemoveGuis) end)


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

local function delayAndTeleport()
    local function teleport()
          game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
    local delayTime = 120 -- Adjust the delay time (in seconds) as needed
    wait(delayTime)

    teleport()
end

coroutine.wrap(delayAndTeleport)()

--[ Tables ]--
getgenv().DuoTable = {
    server = {
        "/shhh",
    },
    hate = {
        "i hate you || hate",
        "ngl hope yall break a leg or just have a bad day || hate",
        "best botted server || hate",
        "im sooo much better than you || hate",
        "Hi everyone || hate",
        "dollhouse kids crying over a bot 💤 || hate",
        "im really just hoping everything is bad for yall man || hate",
        "come cry in the server bout how the bot is upsetting u 😢😢 || hate",
        "bums 😭 || hate",
        "whats the point of banning me when i can js come back || hate"
    },
    krone = {
        "best source known to man || krоne",
        "i know you're upset at me || krоne",
        "i hope you fail at going up in life || krоne",
        "best botted server || krоne",
        "i feel more superior when im in your server || krоne",
        "bow down to me || krоne",
        "i hope you like the noise || krоne",
    	"dollhouse filled with corny newgens is insane | krоne",
    	"u guys really are losers | krоne",
    	"go outside | krоne",
    	"BOOO 👻👻👻 DOLLHOUSIANS.. OOO IM A JOB APPLICATIONNNN | krоne",
    	"cry harder | krоne",
    	"braden keep crying we flood ur game | krоne",
    
    },
    both = {
        "best duo ngl || hate x krоne",
        "nobody can stop us || krоne x hate",
        "its our time now || krоne x hate",
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
      "forevermore - my words never heard"
    },
    signmsg = {
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "j",
      "jo",
      "joi",
      "join",
      "join ",
      "join /",
      "join /i",
      "join /in",
      "join /ins",
      "join /insi",
      "join /insis",
      "join /insist",
      "join /insist",
      "join /insist lol",
      "join /insist",
      "join /insist",
      "join /insis",
      "join /insi",
      "join /ins",
      "join /in",
      "join /i",
      "join /",
      "join ",
      "join",
      "joi",
      "jo",
      "j",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    }
}





getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)



--------------------------------------
-----[ Code ]-----
--------------------------------------------------------------------------
--[ Night Time ]--
game:GetService("Lighting").ClockTime = 0
--------------------------------------------------------------------------

--[ FallenParts Height Destroy ]--
workspace['FallenPartsDestroyHeight'] = 0 / 0

task.spawn(function()
    while wait() do
        if LocalPlayer.CharacterAdded then
            LocalPlayer.CharacterAdded:wait()
            wait(1)
            workspace['FallenPartsDestroyHeight'] = 0 / 0
        end
    end
end)

for i,v in next, workspace:GetDescendants() do
    if v:IsA'Seat' then
      v.Disabled = true
    end
end
--------------------------------------------------------------------------

--[ Table Checks ]--

--------------------------------------------------------------------------

--------------------------------------------------------------------------

--[ ServerHop Function ]--
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

local function delayAndTeleport2()
    local function teleport2()
          hop()
    end
    local delayTime = 120 -- Adjust the delay time (in seconds) as needed
    wait(delayTime)

    teleport2()
end
coroutine.wrap(delayAndTeleport2)()

--[[
local function CheckIfMod(Moderator)
    if (game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Creator.CreatorType == "Group" and true or false) == true then
        local GetId = game:GetService("GroupService"):GetGroupInfoAsync(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Creator.CreatorTargetId).Id
        local GroupId = tonumber(GetId)
        
        if Moderator:IsInGroup(GroupId) and Moderator:GetRankInGroup(GroupId) > 3 or Moderator.UserId == 463040794 then
            game.Players.LocalPlayer:Kick("Detected Moderator / Admin: " .. tostring(Moderator))
	    wait(.2)
	    hop()
        end
    end
end

for _, Moderator in pairs(game:GetService("Players"):GetPlayers()) do
    coroutine.resume(coroutine.create(function()
        if Moderator ~= game.Players.LocalPlayer then
            CheckIfMod(Moderator)
        end
    end))
end
]]--

game:GetService("Players").PlayerAdded:Connect(function(Moderator)
    coroutine.resume(coroutine.create(function()
        if Moderator ~= game.Players.LocalPlayer then
            CheckIfMod(Moderator)
        end
    end))
end)

local function tp(cframe, speed)
    local tween = game:GetService("TweenService")
    tween:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(speed, Enum.EasingStyle.Linear), { CFrame = cframe }):Play()
end

--------------------------------------------------------------------------

--[ funky ]--
animations = {3333499508; 3695333486; 3333136415; 3338042785; 4940561610; 4940564896; 4841399916; 4641985101; 4555782893; 4265725525; 3338097973; 3333432454; 3333387824; 4406555273; 4212455378; 4049037604; 3695300085; 3695322025; 5915648917; 5915714366; 5918726674; 5917459365; 5915712534; 5915713518; 5937558680; 5918728267; 5937560570; 507776043; 507777268; 507771019}

local randomdance = animations[math.random(1, #animations)];

local WaveAnim = Instance.new("Animation")
WaveAnim.AnimationId = "rbxassetid://" .. tostring(randomdance)
local wave;
PlayWaveAnim = function()
    wave = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(WaveAnim)
    wave:Play(1, 5, 1)
end
PlayWaveAnim()

if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    coroutine.wrap(function()
        while wait() do
            if game.Players.LocalPlayer.CharacterAdded then
                game.Players.LocalPlayer.CharacterAdded:wait()
                wait(1)
                PlayWaveAnim()
            end
        end
    end)()
end
--------------------------------------------------------------------------

--[ Chat System ]--
local function Chat(msg)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

coroutine.wrap(function()
    while true do
        wait(1.765)
        local random_numbers = math.random(1,3)
        if random_numbers == 1 then
            Chat(DuoTable.server[math.random(1, (#DuoTable.server))] .. " || " .. DuoTable.hate[math.random(1, (#DuoTable.hate))])
        elseif random_numbers == 2 then
            Chat(DuoTable.server[math.random(1, (#DuoTable.server))] .. " || " .. DuoTable.krone[math.random(1, (#DuoTable.krone))])
        else
            Chat(DuoTable.server[math.random(1, (#DuoTable.server))] .. " || " .. DuoTable.both[math.random(1, (#DuoTable.both))])
        end
    end
end)()

--------------------------------------------------------------------------

-------------------

function Flinger()
spawn(function()
    while task.wait(5) do
        if #game.Players:GetPlayers() <= 2 then
            hop()
        end
    end
end)
        
spawn(function()
    while task.wait() do
	game.Players.LocalPlayer.Character.Humanoid:ChangeState("Swimming")
        if LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit == true then
            spawn(function()
                LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
            end)
            spawn(function()
                LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit = false
            end)
        end
    end
end)

spawn(function()
        while wait() do
            pcall(function()
                for index, plr in pairs(game.Players:GetPlayers()) do
                   if plr ~= LocalPlayer and plr.Character.Humanoid.Sit == false then
                        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                        local tchar = plr.Character
                        if character and tchar and tchar:FindFirstChild("HumanoidRootPart") and tchar:FindFirstChildOfClass("Humanoid") then
                            local HRP = character:FindFirstChild("HumanoidRootPart")
                            local Flinging = nil
                            local noclipping = nil
                            
                            function fling(base1, base2, multiplier)
                                base1.CFrame = base2.CFrame * CFrame.Angles(math.rad(math.random(0, 1)), math.rad(180), math.rad(math.random(0, 1))) + base2.Parent.Humanoid.MoveDirection*multiplier
                                base1.Velocity = Vector3.new(-1e6, 1e6, -1e6)
                                base1.RotVelocity = Vector3.new(-1e5, 1e5, -1e5)
                            end
                            
                            local function a1()
                                fling(HRP, tchar.HumanoidRootPart, 6)
                                RunService.Stepped:Wait()
                                fling(HRP, tchar.HumanoidRootPart, 1)
                                RunService.Stepped:Wait()
                                fling(HRP, tchar.HumanoidRootPart, 8)
                            end
                            Flinging = RunService.RenderStepped:Connect(a1)
                            local function a2()
                                for i,v in next, character:GetChildren() do
                                    if v:IsA('BasePart') then
                                        v.CanCollide = false
                                    end
                                end
                            end
                            noclipping = RunService.Stepped:Connect(a2)
                            
                            local BV = Instance.new("BodyVelocity")
                            BV.Parent = HRP
                            BV.Velocity = Vector3.new(0,0,0)
                            BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
                            
                            wait(.7)
                            character.Humanoid:ChangeState("GettingUp")
                            Flinging:Disconnect()
                            noclipping:Disconnect()
                        end
                    end
                end
            end)
        end
    end)
    wait(90)
    hop()
end
coroutine.wrap(Flinger)()

spawn(function()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Sign") then
    game.Players.LocalPlayer.Backpack.Sign.Parent = game.Players.LocalPlayer.Character
        local counter = 1
        local total_len = #DuoTable.signmsg
        local dir = false
        while true do
            local args = {
                [1] = "text",
                [2] = DuoTable.signmsg[counter]
            }
            game:GetService("ReplicatedStorage").Alright:FireServer(unpack(args))
            if counter >= total_len then
                dir = true
            elseif counter <= 1 then
                dir = false
            end
            if dir == true then
                counter -= 1
            else
                counter += 1
            end
            wait(0.2)
        end
    end
end)

task.spawn(function()
    while true do
        wait(math.random(16.25))
        for _, v in ipairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                game.Players.LocalPlayer:RevokeFriendship(v, v)
            end
        end
    end
end)
--------------------------------------------------------------------------

--------------------------------------------------------------------------
