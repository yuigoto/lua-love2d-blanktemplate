--[[
    YUITI : Löve2D Blank Template : Configuration File
    ======================================================================
    This is the configuration file for the game, defines some stuff related to 
    the game's window, resolution and other stuff.
    ----------------------------------------------------------------------
    @author     Fabio Y. Goto <lab@yuiti.com.br>
    @version    0.0.1
    @copyright  ©2017 Fabio Y. Goto
--]]

--[[
    Runs before LÖVE modules are loaded and it's responsible for bootstrapping 
    some of the game's base settings.

    @param t table 
        A table that hosts all the setup information
--]]
function love.conf(t)
    -- Save directory name
    t.identity      = "save";
    
    -- Love version used
    -- t.version       = "0.10.2";

    -- Attach console? (Windows only, use it for debugging)
    t.console       = true;

    -- WINDOW OPTIONS (more on the Löve2D wiki)
    -- ==================================================================
    t.window.title          = "LÖVE2D : Blank Template";
    t.window.icon           = nil;
    t.window.width          = 640;
    t.window.height         = 360;
    t.window.borderless     = false;
    t.window.resizable      = false;
    t.window.fullscreen     = false;
    t.window.fullscreentype = "desktop";
    t.window.mssa           = 0;
    t.window.vsync          = true;
end
