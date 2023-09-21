function onAffCommand(timing, isShow, duration)
    background1 = Scene.getSprite("background1")
    background2 = Scene.getSprite("background2")
    register(background2, timing, duration, "backgroundChange")
    register(background2, 0, 1, "init")
end

function backgroundChange(currentTiming, isShow, duration)
    if currentTiming >= BaseTiming then
        local p = (currentTiming - BaseTiming) / duration
        if isShow > 0 then
            background2.setColor(255, 255, 255, Ease.InOutQuad(0, 255, p))
        else
            background2.setColor(255, 255, 255, 255 - Ease.InOutQuad(0, 255, p))
        end
    end
end

function init(timing, isShow, duration)
    background2.setColor(255, 255, 255, 0)
end