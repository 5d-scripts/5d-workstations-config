_CONFIG = 
{
    syncSeconnds = 60, -- Recommended between 30 and 60 seconds.
    locale = "en",
    menu_align = "top-left", -- ESX Menu align (top-left, top-right, left, right)
    Workstations = 
    {
        {
            name = "Bread Workstation", -- has to be UNIQUE
            coords = vector3(234.1851, -876.7906, 30.4921),
            capacity = 1000,
            itemIn = 
            {
                name = "water",
                label = "Wasser",
                count = 4
            },
            itemOut = 
            {
                name = "bread",
                label = "Bread",
                count = 3
            },
            transformTimeSeconds = 5,

            blip = 
            {
                enabled = true,
                coords = vector3(234.1851, -876.7906, 30.4921),
                label = "Bread Workstation",
                sprite = 51, -- https://wiki.rage.mp/index.php?title=Blips
                color = 3, -- https://wiki.rage.mp/index.php?title=Blips
                asShortRange = true, -- true = only shows blip when player is close to it
                scale = 0.7
            },
            marker = 
            {
                enabled = true,
                coords = vector3(234.1851, -876.7906, 29.4921),
                scale = vector3(1.5, 1.5, 1.0),
                type = 1, -- https://docs.fivem.net/docs/game-references/markers/
                color = vector4(0,255,125,125),
                rotation = vector3(0, 0, 0),
                bobUpAndDown = false,
                faceCamera = false,
                rotate = false
            },
            ped = 
            {
                enabled = true,
                coords = vector4(234.1851, -876.7906, 29.4921, 343.31),
                model = "s_m_y_dockwork_01", -- https://wiki.rage.mp/index.php?title=Peds
                scenario = "WORLD_HUMAN_CLIPBOARD", -- https://wiki.rage.mp/index.php?title=Scenarios
            }
        },

        {
            name = "Fabric Workstation", -- has to be UNIQUE
            coords = vector3(246.0423, -878.4362, 29.4921),
            capacity = 350,
            itemIn = 
            {
                name = "clothe",
                label = "Cloth",
                count = 10
            },
            itemOut = 
            {
                name = "fabric",
                label = "Fabric",
                count = 2
            },
            transformTimeSeconds = 10,

            blip = 
            {
                enabled = true,
                coords = vector3(246.0423, -878.4362, 29.4921),
                label = "Fabric Workstation",
                sprite = 51, -- https://wiki.rage.mp/index.php?title=Blips
                color = 3, -- https://wiki.rage.mp/index.php?title=Blips
                asShortRange = true, -- true = only shows blip when player is close to it
                scale = 0.7
            },
            marker = 
            {
                enabled = true,
                coords = vector3(246.0423, -878.4362, 29.4921),
                scale = vector3(1.5, 1.5, 1.0),
                type = 1, -- https://docs.fivem.net/docs/game-references/markers/
                color = vector4(0,255,125,125),
                rotation = vector3(0, 0, 0),
                bobUpAndDown = false,
                faceCamera = false,
                rotate = false
            },
            ped = 
            {
                enabled = true,
                coords = vector4(246.0423, -878.4362, 29.4921, 332.5),
                model = "ig_abigail", -- https://wiki.rage.mp/index.php?title=Peds
                scenario = "PROP_HUMAN_STAND_IMPATIENT", -- https://wiki.rage.mp/index.php?title=Scenarios
            }
        }
    }
}

if (not IsDuplicityVersion()) then
    -- Notify event. Can be replaced.
    ---@param message string Message to be displayed for the notify.
    ---@param type string Notify type. Either success or errror.
    RegisterNetEvent("5d-workstations:notify", function(message, type)
        ESX.ShowNotification(message)
    end)

    -- Help Notification. Can be repalced.
    ---@param message string Message to be displayed for the help notify. Is called every frame. Can be modified to be displayed only once (see comments).
    local isOpen = false
    RegisterNetEvent("5d-workstations:helpNotify:show", function(message)
        ESX.ShowHelpNotification(message, true)

        --[[         
        if(not isOpen) then
            isOpen = true
            -- Show UI
        end 
]]
    end)

    RegisterNetEvent("5d-workstations:helpNotify:hide", function()
        --[[         
        if(isOpen) then
            isOpen = false
            --Hide UI
        end 
]]
    end)
end

_LOCALE = {} -- dont touch