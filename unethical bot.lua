-- [ bot made by fault and fault only nobody else ]
-- [ only being fault works else you get logged xD ]
-- [ anyone claiming they have the source is larp ]

Players, RunService, HttpService, TPService = game:GetService("Players"), game:GetService("RunService"), game:GetService("HttpService"), game:GetService("TeleportService")

LocalPlayer, PlaceID = Players.LocalPlayer, game.PlaceId

--[ Tables ]--

local Blacklist = {4744111286, 4400344270}

local Whitelist = {4086783457, 102605219}

local kroneHate = {4095925862, 2053921341}

local function delayAndTeleport()
    local function teleport()
          game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
    local delayTime = 120 -- Adjust the delay time (in seconds) as needed
    wait(delayTime)

    teleport()
end

coroutine.wrap(delayAndTeleport)()

local BlacklistedPlayers, WhitelistedPlayers, ModsTable, kroneTable = {}, {}, {}, {}
local BLSV, WLSV, MDSV, KRONE = false, false, false, false

local function checkBlacklist(player)
    if table.find(Blacklist, player.UserId) then
        table.insert(BlacklistedPlayers, player)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Blacklisted Player Detected: " .. player.DisplayName, "All")
        BLSV = true
    end
end

local function checkKrone(player)
    if table.find(kroneHate, player.UserId) then
        table.insert(WhitelistedPlayers, player)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("krone | owner Detected: " .. player.DisplayName, "All")
        KRONE = true
    end
end

local function checkWhitelist(player)
    if table.find(Whitelist, player.UserId) then
        table.insert(WhitelistedPlayers, player)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Whitelisted Player Detected: " .. player.DisplayName, "All")
    end
    WLSV = true
end

local function checkAllPlayers()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= LocalPlayer then
            checkBlacklist(player)
            checkKrone(player)
            checkWhitelist(player)
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        checkBlacklist(player)
        checkKrone(player)
        checkWhitelist(player)
    end
end)

checkAllPlayers()

coroutine.wrap(function()
    while true do
        task.wait()
        if #BlacklistedPlayers > 0 then
            for _, player in ipairs(game.Players:GetPlayers()) do
                if player ~= LocalPlayer and not table.find(BlacklistedPlayers, player) then
                    player:Destroy()
                    if player.Character then
                        player.Character:Destroy()
                        wait(0.1)
                    end
                end
            end
        end
    end
end)()

coroutine.wrap(function()
    while true do
        task.wait()
        if #WhitelistedPlayers > 0 then
            for _, player in ipairs(game.Players:GetPlayers()) do
                if player ~= LocalPlayer and table.find(WhitelistedPlayers, player) then
                    player:Destroy()
                    if player.Character then
                        player.Character:Destroy()
                        wait(0.1)
                    end
                end
            end
        end
    end
end)()

coroutine.wrap(function()
    while true do
        task.wait()
        if #kroneTable > 0 then
            for _, player in ipairs(game.Players:GetPlayers()) do
                if player ~= LocalPlayer and table.find(kroneTable, player) then
                    player:Destroy()
                    if player.Character then
                        player.Character:Destroy()
                        wait(0.1)
                    end
                end
            end
        end
    end
end)()

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
    },
    fault = {
        "AHHHHH I HATE YOU!!! || 😅",
        "ITS YOUR FAULT STOP IT NOW OH MY GOD || 😅",
        "YOU WILL NEVER TAKE ME ALIVE!!!!! || 😅",
        "I HATE YOU AGHHH I HATE YOU I HATE YOU I HATE YOU I HATE YOU || 😅",
        "YOUR THE REASON IM LIKE THIS || 😅",
        "GET AWAY FROM ME RIGHT NOW!!!! || 😅",
        "OH MY GODDDDDDD YOU DID THIS YOU ARE THE REASON IM LIKE THIS ILL NEVER BE THE SAME AGAIN || 😅",
    },
    both = {
        "best duo ngl || hate x fault",
        "nobody can stop us || fault x hate",
        "its our time now || fault x hate",
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
      "join /s",
      "join /sh",
      "join /shh",
      "join /shhh",
      "join /shhh",
      "join /shhh",
      "join /shhh",
      "join /shhh lol",
      "join /shhh lol",
      "join /shhh",
      "join /shhh",
      "join /shh",
      "join /sh",
      "join /s",
      "join /s",
      "join /s",
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
        wait(0.5)
        local random_numbers = math.random(1,3)
        if random_numbers == 1 then
            Chat(DuoTable.server[math.random(1, (#DuoTable.server))] .. " || " .. DuoTable.hate[math.random(1, (#DuoTable.hate))])
        elseif random_numbers == 2 then
            Chat(DuoTable.server[math.random(1, (#DuoTable.server))] .. " || " .. DuoTable.fault[math.random(1, (#DuoTable.fault))])
        else
            Chat(DuoTable.server[math.random(1, (#DuoTable.server))] .. " || " .. DuoTable.both[math.random(1, (#DuoTable.both))])
        end
    end
end)()
--------------------------------------------------------------------------

wait(1)

local Nearby = function(TP, WP)
    local WC, TC = WP["Character"] or nil, TP["Character"] or nil
    if WC and TC then
        local WPS, TPS = WC["PrimaryPart"]["Position"] or nil, TC["PrimaryPart"]["Position"] or nil
        if WPS and TPS then
            return ((WPS - TPS)["magnitude"] <= 18)
        else
            return false
        end
    end
    return false
end

local autokillfling = function(Player, Delay)
    pcall(function()
	for _, v in next, game:GetService("Players"):GetPlayers() do
	    local WP = table.find(WhitelistedPlayers, v.UserId)
	    if WP and Nearby(Player, WP) then
			return
	    end
	end
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
            Me.CFrame = Target and Target.CFrame * CFrame.new(0,0,math.random(-radius,radius)) + Target.Parent.Humanoid.MoveDirection * 9.5
	    	Me.RotVelocity = Vector3.new(-9e9, 9e9, -9e9)
        end)

        wait(Delay)
        autokillfling:Disconnect()
    end)
end


spawn(function()
    while true do
        for _, v in ipairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character.Humanoid.Sit == false and not table.find(WhitelistedPlayers, v.UserId) then
                autokillfling(v, 0.5)
            end
        end
        wait()
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

local numb = 0
spawn(function()
    while true do
        wait(0.5)
        numb = numb + 1
        if numb == 140 then
            pcall(hop)
        end
    end
end)

