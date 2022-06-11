fade(1, 0x000000)

local function loadTitle(musId) -- TITLESCREEN FUNCTION
    music(musId,0)
end

local function clearDisplay() -- REFRESH DISPLAY 
    while true do
        clear()
        display()
    end
end
fade(0)

loadTitle("m-title.raw")
clearDisplay()