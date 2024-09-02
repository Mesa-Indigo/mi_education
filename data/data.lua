
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

            [1] = {
                name = "ulsa_c1", coords = vec3(-1637.25, 180.35, 62.0),
                size = vec3(2.0, 0.25, 2.2), rotation = 295.25,
                exit = vec4(-1636.655, 180.768, 61.757, 296.172)
            },

            [2] = {
                name = "ulsa_c2", coords = vec3(-1601.2, 207.15, 59.45),
                size = vec3(2.0, 0.25, 2.2), rotation = 294.75,
                exit = vec4(-1601.868, 206.840, 59.256, 113.004)
            },

            [3] = {
                name = "ulsa_c3", coords = vec3(-1649.8, 249.05, 62.5),
                size = vec3(2.0, 0.25, 2.2), rotation = 204.75,
                exit = vec4(-1649.473, 248.241, 62.390, 206.314)
            },

        },

        -- courses at location
        courses = {
            ['General'] = { cost = 5000, questions = 5 }
        }

    },

    ['annex'] = {

        -- set options to be active
        active = true,

        -- blip location
        blip = {
            label = locale('blip_traing'),
            spawn = vec2(-1225.765, -405.004),
            sprite = 793, scale = 0.6, color = 60
        },

        -- locations to enter classroom
        location = {

            [1] = {
                name = "ulsa_a1", coords = vec3(-1213.6, -406.35, 34.35),
                size = vec3(2.0, 0.25, 2.2), rotation = 28.0,
                exit = vec4(-1213.304, -406.852, 34.140, 208.365)
            },

            [2] = {
                name = "ulsa_a2", coords = vec3(-1221.4, -412.3, 34.35),
                size = vec3(2.0, 0.25, 2.2), rotation = 30.0,
                exit = vec4(-1221.023, -412.700, 34.085, 211.367)
            },
            
            [3] = {
                name = "ulsa_a3", coords = vec3(-1211.95, -402.15, 38.4),
                size = vec3(2.0, 0.25, 2.2), rotation = 299.0,
                exit = vec4(-1211.335, -401.767, 38.099, 299.695)
            }

        },

        -- courses at location
        courses = {
            ['Certificates'] = { cost = 2500, questions = 5 }
        }

    },

}