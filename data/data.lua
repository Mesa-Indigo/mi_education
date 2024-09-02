
-- blips
Data.locations = {

    ['campus'] = {

        -- set options to be active
        active = true,

        -- blip location
        blip = {
            label = locale('blip_campus'),
            spawn = vec2(-1640.583, 219.006),
            sprite = 793, scale = 0.6, color = 60
        },

        -- locations to enter classroom
        location = {
            [1] = { }
        },

        -- courses at location
        courses = {
            'General'
        }
    },

}