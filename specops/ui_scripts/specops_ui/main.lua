function frontend()
    require("menus/levelselect")

    CoD.Music.MainSPMusic = "mus_so_main_menu"

    LUI.LevelSelect.IsAllLevelCompleted = function()
        return false
    end
    
    Engine.CanResumeGame = function()
        return false
    end
    
    local localize = Engine.Localize
    Engine.Localize = function(...)
        local args = {...}
        if (args[1] == "@MENU_SP_FOR_THE_RECORD") then
            return ""
        end
    
        if (args[1] == "@MENU_SP_CAMPAIGN") then
            return localize("@MENU_SP_SPECIAL_OPS_CAPS1")
        end
    
        return localize(unpack(args))
    end
    
    LUI.onmenuopen("main_campaign", function(menu)
        local buttonlist = menu:getChildById(menu.type .. "_list")
        buttonlist:removeElement(buttonlist:getFirstChild())
        buttonlist:removeElement(buttonlist:getFirstChild())
        buttonlist:removeElement(buttonlist:getFirstChild())
        buttonlist:removeElement(buttonlist:getFirstChild():getNextSibling())
    end)
    
    LUI.addmenubutton("main_campaign", {
        index = 1,
        text = "@MENU_MISSION_SELECT_CAPS",
        description = Engine.Localize("@MENU_SP_SPECIAL_OPS_DESC"),
        callback = function()
            LUI.FlowManager.RequestAddMenu(nil, firstmenu)
        end
    })
end

function ingame()
    require("popups/eog_summary")
    require("popups/new_stars")
    require("popups/new_record")
    require("hud/main")

    LUI.sp_hud.PauseMenu.canChangeDifficulty = function() return false end
    LUI.sp_hud.PauseMenu.canLowerDifficulty = function() return false end
    LUI.sp_hud.ObjectivesFrame.AddIntelAndDifficulty = function() end
    LUI.sp_hud.ObjectivesFrame.canShowMinimap = function() 
        return tonumber(Engine.GetDvarString("ui_so_show_minimap")) == 1
    end

    local getdvarbool = Engine.GetDvarBool
    Engine.GetDvarBool = function(...)
        local args = {...}
        if (args[1] == "specialops") then
            return true
        end

        if (args[1] == "limited_mode") then
            return true
        end

        return getdvarbool(...)
    end

    isNoRussian = function()
        return false
    end
end

if (Engine.InFrontend()) then
    frontend()
else
    ingame()
end
