--
-- Created by IntelliJ IDEA.
-- User: Pawcio
-- Date: 2015-07-07
-- Time: 20:26
-- To change this template use File | Settings | File Templates.
--

local media = require("media")
local properties = require("tools.properties")
local captureImg

local catchRect = display.newRect(properties.center.x, properties.center.y, 200, 200)

local function onComplete(event)
    captureImg = event.target
    print("photo w,h = " .. captureImg.width .. "," .. captureImg.height)
end

local function catchRectListener(event)
    if event.phase == "ended" then
        if media.hasSource(media.Camera) then
            media.capturePhoto({ listener = onComplete })
        else
            native.showAlert("Corona", "This device does not have a camera.", { "OK" })
        end
    end
end

catchRect:addEventListener("touch", catchRectListener)