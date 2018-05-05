Class = require 'libs.30log'
Tiny = require 'libs.tiny'
Gamestate = require 'libs.gamestate'
Bump = require 'libs.bump'

-- virtual resolution dimensions
VIRTUAL_WIDTH = 512
VIRTUAL_HEIGHT = 288

Assets = require 'assets'

TitleScreenState = require 'states.TitleScreenState'
MenuState = require 'states.MenuState'

function love.load()
    Gamestate.registerEvents()
    Gamestate.switch(TitleScreenState)
end
