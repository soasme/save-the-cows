local TitleScreenState = Class 'TitleScreenState'

function TitleScreenState:update(dt)
    if love.keyboard.isDown('return') then
        Gamestate.switch(MenuState)
    end
end

function TitleScreenState:draw()
    love.graphics.setFont(Assets.font_xl)
    love.graphics.printf('Save the Cows', 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(Assets.font_l)
    love.graphics.printf('Press Enter to Start!', 0, 200, VIRTUAL_WIDTH, 'center')
end

return TitleScreenState
