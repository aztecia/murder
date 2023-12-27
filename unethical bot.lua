-- [ bot made by krone and krone only nobody else ]
-- [ opened source because its a shitty bot so who cares ]

Players, RunService, HttpService, TPService = game:GetService("Players"), game:GetService("RunService"), game:GetService("HttpService"), game:GetService("TeleportService")

LocalPlayer, PlaceID = Players.LocalPlayer, game.PlaceId



--[ Tables ]--
local ChatLists = {
    greetTable = {
      "hi",
      "hello",
      "greetings",
      "bonjour",
      "hola",
      "hey",
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
    FriendlyOffer = {
      "maybe we can play a game some day when im online.",
      "ill probably join you on roblox.",
      "gotta be nice around here",
      "im dying for a friend right now"
    }
}


local Settings = {
    ServerHops = 5,
    Loadstring = "https://nord.vip/KRONE/DB.json",
    Distance = 18,
    Globals = {"Executions", "List"}
}

local Blacklist = {
    2624322912, 179382225, 1763959549, 594466748, 1226511307,
    96341697, 1127310364, 300973348, 340313047, 2357464908,
    1692404954, 1164656128, 4091825339, 4642921141, 427350315,
    4151946796, 676922605, 4291227408, 3698921306, 281175,
    3649518491, 4716685339, 1227687540, 3431620134, 4802734169,
    12823259, 90092430, 970409153, 958344097, 4841441517,
    9412752, 1052736001, 3810754327, 2205824526, 697595
}

local kroneUserids = {4710732523, 354902977}

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

task.spawn(function() 
    while true do 
        wait(1.675) 
        Chat("join /held || Heres a random song: " .. ChatLists.songTable[math.random(1, (#ChatLists.songTable))]) 
    end 
end)
--------------------------------------------------------------------------
local numb = 0
local speed = 0.5
local radius = math.random(3,7) --- orbit size
local eclipse = 1 --- width of orbit
local rotation = CFrame.Angles(0, math.random(90,145), 0) --only works for unanchored parts (not localplayer)
local sin, cos = math.sin, math.cos
local rotspeed = math.pi * 2 / speed
eclipse = eclipse * radius
local rot = 0
--[ Fling Function ]--
wait(1)

local autokillfling = function(Player, Delay)
    pcall(function()
        workspace['FallenPartsDestroyHeight'] = 0 / 0
        workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
        local Target = Player.Character.HumanoidRootPart
        local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
        local LastCF = Me.CFrame
        local Delay = Delay or 1 / 5
        local Angle = 165
        autokillfling = game:GetService('RunService').Stepped:connect(function(t, dt)
            rot = rot + dt * rotspeed
            Me.CFrame = rotation * CFrame.new(sin(rot) * eclipse, 0, cos(rot) * radius) + Target.Position
        end)

        wait(Delay)
        LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
        autokillfling:Disconnect()
    end)
end
--------------------------------------------------------------------------

--[ Body Velocity ]--
spawn(function()
    while true do
        for _, v in pairs(game.Players:GetPlayers()) do
            autokillfling(v, 2)
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

spawn(function()
    while true do
        wait(0.5)
        numb = numb + 1
        if numb == 165 then
            pcall(hop)
        end
    end
end)
--------------------------------------------------------------------------

--------------------------------------------------------------------------
