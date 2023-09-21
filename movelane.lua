function onAffCommand(timing, direction)
    notes = getNoteGroup()
    duration = 343
    moveLength = 4.25
    previousPosX =  moveLength * direction
    register(notes, timing, duration, "moveLane")
    register(notes, 0, 1, "init")
end

-- direction > 0で右方向、< 0で左方向
function moveLane(currentTiming, direction)
    if currentTiming >= BaseTiming then
        local p = (currentTiming - (BaseTiming)) / duration
        notes.setTranslation(Ease.OutQuad(previousPosX, 0, p), 0, 0)
    end
end

function init(timing, direction)
    notes.setTranslation(previousPosX, 0, 0)
end