do
    ---@type rech.scenecontrol.SingleLine
    local SingleLine = {}

    ---@param imgPath string
    ---@param material ( 'default' | 'colorburn' | 'colordodge' | 'darken' | 'difference' | 'exclusion' | 'add' | 'fastadd' | 'fastdarken' | 'fastlighten' | 'fastmultiply' | 'fastscreen' | 'hardlight' | 'lighten' | 'linearburn' | 'lineardodge' | 'linearlight' | 'multiply' | 'overlay' | 'screen' | 'softlight' | 'subtract' | 'vividlight')
    function SingleLine.CreateSingleLine(imgPath, material, textureOffsetY)
        if material == nil then material = "default" end
        if textureOffsetY == nil then textureOffsetY = Channel.saw("l", 7000, 0, 1, 0) end
        local singleLine = Scene.createSprite(imgPath, material, "background")
        singleLine.setParent(Scene.worldCanvas)
        singleLine.sort = 0
        singleLine.layer = "Foreground"
        singleLine.translationX, singleLine.translationY, singleLine.translationZ = -4, 7.15, -50
        singleLine.rotationX, singleLine.rotationY, singleLine.rotationZ = 145, 90, -90
        singleLine.scaleX, singleLine.scaleY, singleLine.scaleZ = 1.28, -40, 1
        singleLine.textureScaleY = 40
        singleLine.textureOffsetY = textureOffsetY
        local oldSingleLine = singleLine
        local singleLine = Scene.createSprite(imgPath, material, "background")
        singleLine.setParent(Scene.worldCanvas)
        singleLine.copyAllChannelsFrom(oldSingleLine)
        singleLine.translationX, singleLine.translationY, singleLine.translationZ = 4, 7.15, -50
        singleLine.rotationX, singleLine.rotationY, singleLine.rotationZ = -145, 90, -90
    end

    return SingleLine
end
