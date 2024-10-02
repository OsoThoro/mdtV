-- MDTV Client Script
-- Handles UI interaction and dispatch case inputs

-- Example function for opening MDT (triggered by a key or event)
local isMDTOpen = false

function OpenMDT()
    -- Display UI for MDT (use ox_lib or native UI options here)
    isMDTOpen = true
    print("MDT opened") -- Debug print
end

function CloseMDT()
    -- Close MDT UI
    isMDTOpen = false
    print("MDT closed") -- Debug print
end

-- Sample Keybind for toggling MDT (placeholder logic)
CreateThread(function()
    while true do
        Wait(0)
        if IsControlJustReleased(0, 38) then -- Example: Press 'E' to open MDT
            if isMDTOpen then
                CloseMDT()
            else
                OpenMDT()
            end
        end
    end
end)
