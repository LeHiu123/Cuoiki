function onAffCommand(timing)
    Notes = getNoteGroup()
    Rot = Notes.getRotationIndividualAt(0)
    Scale = Notes.getScaleIndividualAt(0)
    register(Notes, timing, 1000, "notesDrop")
    register(Notes, 0, 1, "init")
end

function notesDrop(currentTiming)
    if currentTiming >= BaseTiming then
        local p = (currentTiming - BaseTiming) / 1000

        -- Notes.setRotationIndividual(0, 0, Ease.InCubic(Rot.z, Rot.z + 15, p) * s)
        Notes.setScaleIndividual(Scale.x - Ease.InCubic(0, Scale.x, p), Scale.y - Ease.InCubic(0, Scale.y, p), Scale.z - Ease.InCubic(0, Scale.z, p))
    end
end

function init(timing)
    Notes.setRotationIndividual(0, 0, 0)
    Notes.setScaleIndividual(Scale)
end