-- [ bot made by krone and krone only nobody else ]
-- [ only being krone works else you get logged xD ]
-- [ anyone claiming they have the source is larp ]

Players, RunService, HttpService, TPService = game:GetService("Players"), game:GetService("RunService"), game:GetService("HttpService"), game:GetService("TeleportService")

LocalPlayer, PlaceID = Players.LocalPlayer, game.PlaceId



--[ Tables ]--
getgenv().DuoTable = {
    server = {
        "/insist",
    },
    hate = {
        "i hate you || hate",
        "ngl hope yall break a leg or just have a bad day || hate",
        "best botted server || hate",
        "im sooo much better than you || hate",
        "Hi everyone || hate",
    },
    krone = {
        "best source known to man || krone",
        "i know you're upset at me || krone",
        "i hope you fail at going up in life || krone",
        "best botted server || krone",
        "i feel more superior when im in your server || krone",
        "bow down to me || krone",
        "i hope you like the noise || krone",
    },
    both = {
        "best duo ngl || hate x krone",
        "nobody can stop us || krone x hate",
        "its our time now || krone x hate",
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
    }
}





getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
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

wait(1)

local autokillfling = function(Player, Delay)
    pcall(function()
    local radius = math.random(5,10) --- orbit size
        workspace['FallenPartsDestroyHeight'] = 0 / 0
        workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
        local Target = Player.Character.HumanoidRootPart
        local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
        local LastCF = Me.CFrame
        local Delay = Delay or 1 / 5
        local Angle = 165
        game.Players.LocalPlayer:RequestFriendship(Player, Player)
        autokillfling = game:GetService('RunService').Heartbeat:connect(function()
            Me.CFrame = CFrame.new(Target.Position) * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(0), math.rad(math.random(0, 360))) * CFrame.new(0,0,math.random(-radius,radius)) + Target.Parent.Humanoid.MoveDirection * 9.5
            LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
            LocalPlayer.Character.Humanoid:ChangeState("Swimming")
        end)

        wait(Delay)
        autokillfling:Disconnect()
    end)
end
--------------------------------------------------------------------------

--[ Body Velocity ]--
spawn(function()
    while true do
        for _, v in ipairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                autokillfling(v, 3)
            end
        end
        wait()
    end
end)

spawn(function()
    while true do
        wait(math.random(10,15))
        for _, v in ipairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                game.Players.LocalPlayer:RevokeFriendship(v, v)
            end
        end
    end
end)

spawn(function()
    while true do
        wait()
        if #game.Players:GetPlayers() == 1 then
            pcall(ServerHop)
        end
    end
end)

spawn(function()
    while true do
        wait(0.5)
        numb = numb + 1
        if numb == 180 then
            pcall(hop)
        end
    end
end)
--------------------------------------------------------------------------

--------------------------------------------------------------------------


