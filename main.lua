--
-- Created by IntelliJ IDEA.
-- User: Pawcio
-- Date: 2015-07-07
-- Time: 20:26
-- To change this template use File | Settings | File Templates.
--

local catchRect = display.newRect()

local function catchRectListener(event)
    if event.phase == "ended" then
        --TODO: catch that shit
    end
end

catchRect:addEventListener("touch", catchRectListener)