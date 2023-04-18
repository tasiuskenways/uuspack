RegisterNetEvent("editor:record", function()
    StartRecording(1)
    TriggerEvent('QBCore:Notify', Lang:t('editor.started'), "success")
end)

RegisterNetEvent("editor:clip", function ()
    StartRecording(0)
end)

RegisterNetEvent("editor:saveclip", function()
    StopRecordingAndSaveClip()
    TriggerEvent('QBCore:Notify', Lang:t('editor.save'), "success")
end)

RegisterNetEvent("editor:delclip", function()
    StopRecordingAndDiscardClip()
    TriggerEvent('QBCore:Notify', Lang:t('editor.delete'), "error")
end)

RegisterNetEvent("editor:editor", function()
    NetworkSessionLeaveSinglePlayer()
    ActivateRockstarEditor()
    TriggerEvent('QBCore:Notify', Lang:t('editor.editor'), "error")
end)

RegisterCommand('record', function()
    exports['qb-menu']:openMenu({
        {
            header = 'Editor Menu',
            icon = 'fas fa-video',
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = 'Start Record',
            icon = 'fas fa-circle',
            params = {
                event = 'editor:record'
            }
        },
        {
            header = 'Clip',
            icon = 'fas fa-clapperboard',
            params = {
                event = 'editor:clip'
            }
        },
        {
            header = 'Save Clip',
            icon = 'fas fa-floppy-disk',
            params = {
                event = 'editor:saveclip'
            }
        },
        {
            header = 'Delete Clip',
            icon = 'fas fa-trash',
            params = {
                event = 'editor:delclip'
            }
        },
        {
            header = 'Rockstar Editor',
            icon = 'fas fa-pen-to-square',
            params = {
                event = 'editor:editor'
            }
        },
    })
end)
