fade(1, 0x000000)

local function wait(microseconds) -- SIMPLE WAIT FUNCTION
    local start = delta()
    repeat until start >= delta()
end

local function loadTitle(musId) -- TITLESCREEN FUNCTION
    sound("m-nintdo.raw")
    --wait(5000000)
    music(musId,0)
    -- not done, need a "preview" of the game
end

local function clearDisplay() -- REFRESH DISPLAY 
    while true do
        clear()
        display()
    end
end

local function loadTrain(skip)
    -- nothing yet
end

local function speak(text,voice)
    if voice == nil then
        voice = 0
    end

    local t = {}
    local ltext = string.lower(text)
    ltext:gsub(".",function(c) table.insert(t,c) end)

    for i,v in ipairs(t) do
        local deltime = 0
        delta()
        repeat
            deltime = deltime + delta()
            -- nothing
        until deltime >= 60000
        if v ~= " " or "," or "!" or "?" then
            sound("v" .. tostring(voice) .. "-" .. v .. ".raw")
        end
    end
end
fade(0, 0x000000)

--loadTitle("m-title.raw")

speak("This is where you input the text. ABCDEFGHIJKLMNOPQRSTUVWXZY1234567890.",0)

clearDisplay()