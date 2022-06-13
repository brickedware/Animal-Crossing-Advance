local function wait(seconds) -- SIMPLE WAIT FUNCTION
    local us = seconds * 1000000
    local start = delta()
    repeat start = start + delta() until start >= us
end

local function printText(text,x,y,rmargin)
    txtr(0,"font-8x8.bmp")
    if rmargin == nil then
        rmargin = x
    end
    local tabl = {}
    local xx = x
    local yy = y
    text:gsub(".",function(c) table.insert(tabl,c) end)
    for u,v in pairs(tabl) do
        for i=32,256 do
            if v == utf8.char(i) then
                tile(0, xx, yy, i-32)
            end
        end
        if rmargin == false or xx <= 28 - rmargin then
            xx = xx + 1
        else
            yy = yy+1
            xx = x
        end
    end
end

local function loadTitle() -- TITLESCREEN FUNCTION
    
    sound("m-nintdo.raw")
    wait(7)
    
    --music("m-title.raw",0)
    --wait(1)

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


local function speech(text,voice,open,color,name)
    if voice == nil then
        voice = 0
    end 

    printText(name,3,9,false)

    txtr(1,"".. color .."speak.bmp")
    local t = 0
    for yy = 0, 13 do
       for xx = 0, 29 do
          tile(1, 0 + xx, 7 + yy, t)
          t = t + 1
       end
    end
    
    
    txtr(0,"font-8x8.bmp")
    
    
    local tabl = {}
    local xx = 3
    local yy = 11
    text:gsub(".",function(c) table.insert(tabl,c) end)
    for u,v in pairs(tabl) do
        for i=32,256 do
            if v == utf8.char(i) then
                tile(0, xx, yy, i-32)
            end
        end
        if xx <= 25 then
            xx = xx + 1
        else
            yy = yy+1
            xx = 3
        end
        if v ~= " " or "," or "!" or "?" or "" then
            sound("v" .. tostring(voice) .. "-" .. string.lower(v) .. ".raw")
        end
        local deltime = 0
        delta()
        if btn(1) == true or btnp(1) or tabl[u+1] ~= utf8.char(32) then
            repeat
               deltime = deltime + delta()
               clear()
               display()
           until deltime >= 250
       end
    end
end
---------------------------------------------------------------------------------------------------
--BEGIN GAME---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------

loadTitle()
speech("So, you've decided to move out? Get your own place? See the world? That's groovy.",0,true,"g","K.K.")
clearDisplay()
