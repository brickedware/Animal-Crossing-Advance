local function wait(seconds) -- SIMPLE WAIT FUNCTION
    local us = seconds * 1000000
    local start = delta()
    repeat start = start + delta() until start >= us
end

local function printText(text,x,y,rmargin)
    txtr(0,"textures/ui/font-8x8.bmp")
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
                if v == " " or v == "." or v == "," then
                    
                    tile(0, xx, yy, i-32)
                else
                    tile(0, xx, yy, i-32)
                end
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
    
    sound("audio/ui/nintendo.raw")
    wait(7)
    
    --music("m-title.raw",0)
    --wait(1)

    -- not done, need a "preview" of the game
end

local function clearDisplay() -- REFRESH DISPLAY 
    --while true do
        clear()
        display()
    --end
end

local function loadTrain(skip)
    -- nothing yet
end


local function speech(text,voice,open,color,name)
    if voice == nil then
        voice = 0
    end 

    --printText(name,3,9,false)

    txtr(1,"textures/ui/".. color .."speak.bmp")
    local t = 0
    for yy = 0, 13 do
       for xx = 0, 29 do
          tile(1, 0 + xx, 7 + yy, t)
          t = t + 1
       end
    end
    
    
    txtr(0,"textures/ui/font-8x8.bmp")
    
    
    local tabl = {}
    local xx = 3
    local yy = 11
    text:gsub(".",function(c) table.insert(tabl,c) end)
    for u,v in pairs(tabl) do
        -- for i=32,256 do
            -- if v == utf8.char(i) then
                -- --tile(0, xx, yy, i-32)
				
            -- elseif v == "␤" then
                -- yy = yy+1
                -- xx = 2
            -- end
        -- end
		local unicodeID = string.byte(v)
		local i = 0
		repeat
			i = i + delta()
		until i > delta() * 375
		
		--print(v,xx,yy,0x000000,0xFF00FF)
		tile(0, xx, yy, unicodeID-32)
		
        if xx <= 25 and v ~= "␤" then
            xx = xx + 1
        else 
            yy = yy+1
            xx = 3
        end
        if v ~= " " or "," or "!" or "?" or "" then
            sound("audio/voice/" .. tostring(voice) .. "/" .. string.lower(v) .. ".raw")
        end
        --if btn(1) == true or btnp(1) or tabl[u+1] ~= utf8.char(32) then
            --repeat
             --   local rasterLine = rline()
                --clear()
                --display()
				clearDisplay()
           --until rasterLine >= 1
      -- end
    end
end
---------------------------------------------------------------------------------------------------
--BEGIN GAME---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------

--loadTitle()
--speech("So, you've decided to␤move out? Get your own␤place? See the world?␤That's groovy.",0,true,"g","K.K.")
--  ^^^ that will be replaced by a reference to a file

--priority()

txtr(2,"textures/tilesets/test1.bmp")
tilemap("tilemaps/testisland.csv", 2, 20, 18, 0, 0, 0, 0)
txtr(1,"textures/tilesets/test2.bmp")
tilemap("tilemaps/testisland.csv", 1, 20, 18, 0, 0, 0, 0)

--speech("this is text",0,true,"g","test")

--txtr(4,"textures/image/train1.bmp")
--spr(0,0,0)
--txtr(4,"textures/image/train2.bmp")

repeat
	clearDisplay()
until false