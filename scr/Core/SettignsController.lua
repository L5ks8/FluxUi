local SettignsController = {}

function SettignsController.Init(WindowTable)
    if not WindowTable.SettingsElements then
        return
    end

    local UI = WindowTable.SettingsElements

    -- Advanced Settings Navigation
    UI.AdvSettingsBtn.MouseButton1Click:Connect(function()
        UI.SelectionTab.Visible = false
        UI.AdvancedSettings.Visible = true
    end)

    UI.BackBtn.MouseButton1Click:Connect(function()
        UI.AdvancedSettings.Visible = false
        UI.SelectionTab.Visible = true
    end)

    -- Tab Layout Logic
    local currentLayout = 1 -- 1 for left, 3 for right
    
    UI.TabLayoutBtn.MouseButton1Click:Connect(function()
        -- Reset visual state to current
        if WindowTable.Tabs.LayoutOrder == 1 then
            UI.LeftSelected.Visible = true
            UI.RightSelected.Visible = false
            currentLayout = 1
        else
            UI.LeftSelected.Visible = false
            UI.RightSelected.Visible = true
            currentLayout = 3
        end
        UI.Confirmation.Visible = true
    end)

    UI.LeftBtn.MouseButton1Click:Connect(function()
        UI.LeftSelected.Visible = true
        UI.RightSelected.Visible = false
        currentLayout = 1
    end)

    UI.RightBtn.MouseButton1Click:Connect(function()
        UI.LeftSelected.Visible = false
        UI.RightSelected.Visible = true
        currentLayout = 3
    end)

    UI.AcceptBtn.MouseButton1Click:Connect(function()
        WindowTable.Tabs.LayoutOrder = currentLayout
        UI.Confirmation.Visible = false
    end)

    UI.CancelBtn.MouseButton1Click:Connect(function()
        UI.Confirmation.Visible = false
    end)
end

return SettignsController
