Acd, Cls, Drm = {}, {}, {}

Acd = {
    crt = {
        -- Door label
        label = 'Academic Offices',

        -- entrance zone
        enlc = vec3(-1637.3, 180.35, 61.85), ensz = vec3(0.15, 2.15, 2.05), enrt = 25.0,
        -- exit zone
        xtlc = vec3(-1643.95, 175.8, 42.3), xtsz = vec3(0.25, 1.2, 2.0), xtrt = 25.0,

        -- Teleport enter zone
        entp = vec4(-1644.825, 175.367, 42.049, 207.773),
        -- Teleport exit zone
        xttp = vec4(-1636.518, 180.721, 60.757, 297.992),

        -- shell spawn
        clsh = 'shell_office1', clrm = vec3(-1649.241, 174.721, 40.00), clrt = -65.00,
    },
    frn = {
        { prop = 'v_ind_dc_desk02',     loc = vec3(0,0,0), head = 0 },
    }
}

Cls = {
    crt = {
        -- Door label
        label = 'Classrooms',

        -- entrance zone
        enlc = vec3(-1601.2, 207.15, 59.3), ensz = vec3(0.15, 2.15, 2.05), enrt = 25.0,
        -- exit zone
        xtlc = vec3(-1594.6, 208.0, 42.25), xtsz = vec3(1.2, 0.25, 2.0), xtrt = 295.0,

        -- Teleport enter zone
        entp = vec4(-1593.511, 208.250, 41.049, 29.188),
        -- Teleport exit zone
        xttp = vec4(-1601.713, 206.969, 58.256, 112.074),

        -- shell spawn
        clsh = 'shell_office1', clrm = vec3(-1589.227, 209.132, 40.00), clrt = 115.00,
    },

    inst = {
        loc = vec4(-1586.172, 205.284, 42.049, 16.753),
        anim = 'WORLD_HUMAN_DRINKING_CASINO_TERRACE'
    },

    frn = {
        -- instructor desk
        { prop = 'reh_prop_reh_desk_comp_01a',      loc = vec3(-1591.437, 210.369, 41.049),     rot = 0, 0, 25.00 },
        { prop = 'v_ret_gc_chair03',                loc = vec3(-1590.898, 209.482, 41.7359),    rot = 0, 0, -165.00 },

        -- front of class
        { prop = 'ch_prop_whiteboard',              loc = vec3(-1583.908, 205.198, 43.150),     rot = 0, 0, 24.970 },
        { prop = 'prop_fbibombbin',                 loc = vec3(-1586.488, 204.492, 41.0486),    rot = 0, 0, -148.907 },

        -- desks set: front
        { prop = 'm23_2_prop_m32_desk_01a',         loc = vec3(-1584.348, 208.127, 41.047),     rot = 0, 0, 25.00 },
        { prop = 'prop_cd_paper_pile3',             loc = vec3(-1585.004, 207.994, 41.858),     rot = -90, 0, -68.399 },
        { prop = 'prop_cd_paper_pile3',             loc = vec3(-1583.866, 208.509, 41.858),     rot = -90, 0, 122.408 },
        { prop = 'hei_heist_din_chair_03',          loc = vec3(-1585.426, 208.828, 41.053),     rot = 0, 0, 25.00 },
        { prop = 'hei_heist_din_chair_03',          loc = vec3(-1584.274, 209.373, 41.053),     rot = 0, 0, 25.00 },

        -- desks set: middle
        { prop = 'm23_2_prop_m32_desk_01a',         loc = vec3(-1585.496, 210.588, 41.047),     rot = 0, 0, 25.00 },
        { prop = 'prop_cd_paper_pile3',             loc = vec3(-1586.009, 210.532, 41.858),     rot = -90, 0, -68.399 },
        { prop = 'prop_cd_paper_pile3',             loc = vec3(-1585.088, 210.952, 41.858),     rot = -90, 0, 99.401 },
        { prop = 'hei_heist_din_chair_03',          loc = vec3(-1585.402, 211.792, 41.053),     rot = 0, 0, 25.00 },
        { prop = 'hei_heist_din_chair_03',          loc = vec3(-1586.548, 211.235, 41.053),     rot = 0, 0, 25.00 },

        -- desks set: back
        { prop = 'm23_2_prop_m32_desk_01a',         loc = vec3(-1586.619, 212.997, 41.047),     rot = 0, 0, 25.00 },
        { prop = 'prop_cd_paper_pile3',             loc = vec3(-1587.239, 212.928, 41.858),     rot = -90, 0, -68.399 },
        { prop = 'prop_cd_paper_pile3',             loc = vec3(-1586.101, 213.460, 41.858),     rot = -90, 0, 122.408 },
        { prop = 'hei_heist_din_chair_03',          loc = vec3(-1587.675, 213.652, 41.053),     rot = 0, 0, 25.00 },
        { prop = 'hei_heist_din_chair_03',          loc = vec3(-1586.520, 214.190, 41.053),     rot = 0, 0, 25.00 },

        -- decor
        { prop = 'm23_2_prop_m32_poster_01a',       loc = vec3(-1593.208, 210.427, 42.910),     rot = 0, 0, -65.241 },
        { prop = 'm23_1_prop_m31_poster_skin_01',   loc = vec3(-1593.208, 210.427, 42.910),     rot = 0, 0, -65.241 },
    }
}

Drm = {
    crt = {
        label = 'ULSA Dorms',

        -- entrance zone 1
        enlc1 = vec3(-1670.9, 174.4, 61.85), ensz1 = vec3(1.7, 0.3, 2), enrt1 = 295.0,
        -- entrance zone 2
        enlc2 = vec3(-1663.4, 158.45, 61.8), ensz2 = vec3(1.7, 0.3, 2), enrt2 = 295.0,
        -- exit zone
        xtlc = vec3(-1676.6, 197.7, 51.15), xtsz = vec3(1.2, 0.3, 2.2), xtrt = 295.0,

        -- Teleport enter zone
        entp = vec4(-1676.338, 197.861, 50.009, 299.231),
        -- Teleport exit zone
        xttp = vec4(-1671.524, 174.218, 61.755, 115.892),

        -- shell spawn
        clsh = 'standardmotel_shell', clrm = vec3(-1677.015, 200.190, 50.0), clrt = 25.00,
    }
}