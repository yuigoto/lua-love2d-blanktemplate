--[[
    YUITI : Löve2D Blank Template : Main
    ======================================================================
    Main game file, manages Löve2D's callbacks and the game loop.

    It's kinda monstrous, but you don't need to use everything, delete 
    unused stuff, please!
    ----------------------------------------------------------------------
    @author     Fabio Y. Goto <lab@yuiti.com.br>
    @version    0.0.1
    @copyright  ©2017 Fabio Y. Goto
--]]

-- LIBRARIES AND ADDITIONAL MODULES
-- ======================================================================

-- Test library
require("test");

-- GLOBAL VARIABLES
-- ======================================================================

-- Simple time counter
time = 0;

-- BOOTSTRAPPING
-- ======================================================================

--[[
    Called when the game's started, usually loads assets and resources 
    used in the game, variables and some settings (not the conf ones).
--]]
function love.load()
    -- Was the project loaded?
    print("Project Loaded");

    -- Does the Test Library works?
    test.healthcheck();

    -- Can we access the Test Library variables?
    print(test.vals);
end

-- GAME LOOP + WINDOW UPDATES
-- ======================================================================

--[[
    Updates the game logic on every frame.

    @param dt number 
        Delta time, in seconds, since this function was last called
--]]
function love.update(dt) 
    -- Update timer
    time = time + 0.05;
    -- Since I came from JS, I often used +=, but this won't work in 
    -- Lua, unless you're using PICO-8, which makes it possible.
end

--[[
    Updates the game's canvas on every frame.

    Call all drawing functions inside this one only.
--]]
function love.draw() 
    -- Draw the nice wave
    test.nice_wave(time);

    -- Draw FPS
    test.fancy_fps();
end

--[[
    Checks whether the game's window gained or lost focus, like when the 
    user clicks outside and then back again.

    Useful for pausing whenever the window loses focus.

    @param status boolean 
        Whether the window has, or not, focus
--]]
function love.focus(status)
    if not status then
        -- LOST FOCUS
    else
        -- GAINED FOCUS
    end
end

--[[
    Called whenever the window loses/receives mouse focus.

    @param status boolean 
        Whether the window has, or not, the mouse focus
--]]
function love.mousefocus(status) 
    if not status then
        -- LOST MOUSE FOCUS
    else
        -- GAINED MOUSE FOCUS
    end
end

--[[
    Triggered when the window is minimized/maximized by the user.

    @param visible boolean 
        If the window is visible, or not
--]]
function love.visible(visible)
end

--[[
    Triggered when the window is resized, either by dragging the corners 
    or by using `love.window.setMode`.

    @param w number 
        New width, in pixels
    @param h number
        New height, in pixels
--]]
function love.resize(w, h)
end

--[[
    Executes code when the user closes the window by clicking on the close 
    button.

    Useful to save stuff before quitting.
--]]
function love.quit()
    -- Just quit already!
    print("So long, Cowboy!");
end

-- KAYBOARD + MOUSE + TOUCH INPUT MONITORING
-- ======================================================================

--[[
    Triggered when the user entered text using the keyboard.

    On Android/iOS, this is disabled by default, and can be enabled by 
    setting `love.keyboard.setTextInput`.

    @param text string 
        A UTF-8 encoded text string 
--]]
function love.textinput(text)
end

--[[
    Triggered whenever a key was pressed on the keyboard.

    @param key string 
        String containing the key that was just pressed 
--]]
function love.keypressed(key)
end

--[[
    Triggered whenever a key was released on the keyboard.
    
    @param key string 
        String containing the key that was just released 
--]]
function love.keyreleased(key)
    -- Simply quit, if escape was released
    if (key == "escape") then 
        love.event.quit();
    end
end

--[[
    Triggered whenever the mouse cursor moves within the game's window.

    @param x number 
        Current X position of the cursor
    @param y number 
        Current Y position of the cursor
    @param dx number 
        Delta X, relative to the last time this function was called 
    @param dy number 
        Delta Y, relative to the last time this function was called 
    @param istouch boolean 
        If this action was triggered, or not, by using a touchscreen 
--]]
function love.mousemoved(x, y, dx, dy, istouch)
end

--[[
    Triggered when the user pressed a mouse button.

    @param x number 
        Current X position of the cursor
    @param y number 
        Current Y position of the cursor
    @param button number 
        Number identifying which button was pressed
    @param istouch boolean 
        If this action was triggered, or not, by using a touchscreen 
--]]
function love.mousepressed(x, y, button, istouch)
end

--[[
    Triggered when the user releases a mouse button.

    @param x number 
        Current X position of the cursor
    @param y number 
        Current Y position of the cursor
    @param button number 
        Number identifying which button was pressed
    @param istouch boolean 
        If this action was triggered, or not, by using a touchscreen 
--]]
function love.mousereleased(x, y, button, istouch)
end

--[[
    Called whenever the mouse's scroll wheel was moved, usually values are 
    either -1, 0 or 1.

    @param x number 
        The amount of horizontal movement the wheel produced, negative 
        value means it's moving to the left, while a positive is right 
    @param y number 
        The amount of vertical movement the wheel produced, negative 
        value means it's moving downward, while a positive value means 
        upward movement
--]]
function love.wheelmoved(x, y)
end

--[[
    Triggered whenever a touch press inside the touch screen moved.

    @param id number 
        Touch point identifier, since each point should have an ID
    @param x number 
        Current X position of the touch point 
    @param y number 
        Current Y position of the touch point 
    @param dx number 
        X-axis movement of the touch inside the window, in pixels
    @param dy number 
        Y-axis movement of the touch inside the window, in pixels 
    @param pressure number 
        Amount of pressure being applied, since most touch screens 
        aren't pressure sensitive, will mostly be 1
--]]
function love.touchmoved(id, x, y, dx, dy, pressure)
end

--[[
    Triggered when the screen is touched.

    @param id number 
        Touch point identifier, since each point should have an ID
    @param x number 
        Current X position of the touch point 
    @param y number 
        Current Y position of the touch point 
    @param dx number 
        X-axis movement of the touch inside the window, in this 
        function, it should always be zero 
    @param dy number 
        Y-axis movement of the touch inside the window, in this 
        function, it should always be zero  
    @param pressure number 
        Amount of pressure being applied, since most touch screens 
        aren't pressure sensitive, will mostly be 1
--]]
function love.touchpressed(id, x, y, dx, dy, pressure)
end

--[[
    Triggered when the touch screen is released.

    @param id number 
        Touch point identifier, since each point should have an ID
    @param x number 
        Current X position of the touch point 
    @param y number 
        Current Y position of the touch point 
    @param dx number 
        X-axis movement of the touch inside the window, in pixels
    @param dy number 
        Y-axis movement of the touch inside the window, in pixels 
    @param pressure number 
        Amount of pressure being applied, since most touch screens 
        aren't pressure sensitive, will mostly be 1
--]]
function love.touchreleased(id, x, y, dx, dy, pressures)
end

-- GAMEPAD + JOYSTICK INPUT MONITORING
-- ======================================================================

--[[
    Called when a Joystick object's virtual gamepad axis is moved.

    @param joystick Joystick 
        Joystick object 
    @param axis GamepadAxis 
        Virtual gamepad axis' name 
    @param value number 
        The new axis value 
--]]
function love.gamepadaxis(joystick, axis, value)
end

--[[
    Called when a Joystick object's virtual gamepad butotn is pressed.

    @param joystick Joystick 
        Joystick object 
    @param button GamepadButton 
        Virtual gamepad button 
--]]
function love.gamepadpressed(joystick, button)
end

--[[
    Called when a Joystick object's virtual gamepad butotn is released.
    
    @param joystick Joystick 
        Joystick object 
    @param button GamepadButton 
        Virtual gamepad button 
--]]
function love.gamepadreleased(joystick, button)
end

--[[
    Called when a Joystick is connected.

    @param joystick Joystick 
        The connected Joystick object 
--]]
function love.joystickadded(joystick)
end

--[[
    Called when a Joystick is disconnected.

    @param joystick Joystick 
        The disconnected Joystick object 
--]]
function love.joystickremoved(joystick)
end

--[[
    Called when one of the Joystick axis moves.

    @param joystick Joystick 
        Joystick object 
    @param axis number 
        Joystick axis number 
    @param value number 
        Axis value 
--]]
function love.joystickaxis(joystick, axis, value) 
end

--[[
    Called when the Joystick hat direction changes. On X360 controllers 
    this means the D-pad.

    @param joystick Joystick 
        Joystick object 
    @param hat number 
        The hat number 
    @param direction JoystickHat 
        New hat direction 
--]]
function love.joystickhat(joystick, hat, direction) 
end

--[[
    Called wheh a Joystick button is pressed.

    @param joystick Joystick 
        Joystick object 
    @param button number 
        Button number
--]]
function love.joystickpressed(joystick, button)
end

--[[
    Called wheh a Joystick button is released.

    @param joystick Joystick 
        Joystick object 
    @param button number 
        Button number
--]]
function love.joystickreleased(joystick, button)
end

-- FILE + DIRECTORY DRAG AND DROP
-- ======================================================================

--[[
    Triggered when the user drags and drops a file inside the window.

    @param path string 
        Full, platform-independent, path to the directory, can be used as
        argument to `love.filesystem.mount` to gain read access to this 
        folder using `love.filesystem` 
--]]
function love.directroydropped(path)
end

--[[
    Triggered when the user drags and drops a file inside the window.

    @param file File 
        Unoneped file object, representing what was dropped 
--]]
function love.filedropped(file)
end
