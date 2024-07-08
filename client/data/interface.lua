--------------------------------
----    Helpful Links   ----
-- https://www.w3schools.com/colors/colors_picker.asp For HTML Colors
-- https://fontawesome.com/search?m=free&o=r For Choosing Icons
-- https://overextended.dev/ox_lib/Modules/Interface/Client/notify Notification Documentation
-- Colors: bgnd - 20% / main 70% / desc 90%
----    Notification Options    ----
NotInfo = {
    position = 'top-right',
    duration = 5000,
    showduration = false,
}

Inf = {
    color_bgnd = '#004466', color_text = '#66ccff', color_desc = '#e6f7ff',
    color_icon = '#ffffff', icon_disp = 'question', icon_anim = 'beat'
}

Err = {
    color_bgnd = '#660000', color_text = '#ff6666', color_desc = '#ffe6e6',
    color_icon = '#ffffff', icon_disp = 'xmark', icon_anim = 'beat'
}

Cor = {
    color_bgnd = '#006644', color_text = '#66ffcc', color_desc = '#ccffee',
    color_icon = '#ffffff', icon_disp = 'check', icon_anim = 'beat'
}

War = {
    color_bgnd = '#666600', color_text = '#ffff66', color_desc = '#ccffee',
    color_icon = '#ffffff', icon_disp = 'exclamation', icon_anim = 'beat'
}

RegisterNetEvent('notif')
AddEventHandler('notif', function(data, type)
    lib.notify({
        id = data.id, title = data.title, description = data.desc,
        duration = NotInfo.duration, showDuration = NotInfo.showduration,
        position = NotInfo.position,
        style = {
            backgroundColor = type.color_bgnd,
            color = type.color_text,
            ['.description'] = { color = type.color_desc }
        },
        icon = type.icon_disp, iconColor = type.color_icon,
        iconAnimation = type.icon_anim
    })
end)