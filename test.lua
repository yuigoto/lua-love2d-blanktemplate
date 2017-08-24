--[[
    YUITI : Löve2D Blank Template : Test Library
    ======================================================================
    This is just a test library called by the `main.lua` file, for testing 
    and learning purposes.
    ----------------------------------------------------------------------
    @author     Fabio Y. Goto <lab@yuiti.com.br>
    @version    0.0.1
    @copyright  ©2017 Fabio Y. Goto
--]]
test = {};
test.__index = test;

-- VARIABLES
-- ======================================================================

--[[
    Just a test string.
--]]
test.vals = "This is a test value";

-- FUNCTIONS
-- ======================================================================

--[[
    Test function.
--]]
function test.healthcheck()
    print("Test Library Loaded");
end

--[[
    Draws a nice wave on screen.

    @param dt number 
        A number, usually the delta time or another time-related value 
--]]
function test.nice_wave(dt) 
    -- Set local variables
    win_w   = love.graphics.getWidth();
    win_h   = love.graphics.getHeight();
    cell    = 32;
    grid_w  = math.ceil(win_w / cell);
    grid_h  = math.ceil(win_h / cell);

    -- Loop
    for _y=1, grid_h + 2 do
        for _x=1, grid_w + 2 do
            -- Local X/Y values
            local x = _x - 2;
            local y = _y - 2;

            -- Defining some oscilators
            local osc1 = math.cos(dt + y * .1);
            local osc2 = math.sin(dt + x * .25);
            local osc3 = (osc1 + osc2) / 2;

            -- Define the color
            love.graphics.setColor(
                256 * math.abs(osc1), 
                256 * math.abs(osc2), 
                256 * math.abs(osc3)
            );

            -- Draw a filled circle
            love.graphics.circle(
                "fill", 
                x * cell + cell * osc1, 
                y * cell + cell * osc2, 
                cell / 3 * math.abs(osc1)
            );

            -- Draw an outline of a circle
            love.graphics.circle(
                "line", 
                x * cell + cell * osc1, 
                y * cell + cell * osc2, 
                cell * math.abs(osc1)
            );
        end
    end
end

--[[
    Draws a "fancy" FPS on screen.
--]]
function test.fancy_fps() 
    -- Text position
    _x = 10;
    _y = 10;

    -- Set color to black
    love.graphics.setColor(0, 0, 0, 128);

    -- Draw outline
    for y=-2,2 do
        for x=-2,2 do
            love.graphics.print(love.timer.getFPS(), _x + x, _y + y);
        end
    end

    -- Set color to white
    love.graphics.setColor(255, 255, 255);

    -- Draw text
    love.graphics.print(love.timer.getFPS(), _x, _y);
end
