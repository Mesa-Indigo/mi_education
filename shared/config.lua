----[[    General Set    ]]----
EDU = {}
Debug = true

----[[    General Set    ]]----
EDU.Location = {
    LSU = {
        name = 'lsu',
        location = vec3(-1636.356, 180.857, 61.757),
        heading = 297.09,
        size = vec3(1.0,1.0,1.0),
        options = {
            label = 'LSU',
            name = 'lsu',
            icon = 'fa-solid fa-boxes',
            distance = 2,
            onSelect = function()
                print('lsu')
            end
        }
    },
    LSU1 = {
        name = 'lsu1',
        location = vec3(-1636.356, 182.857, 61.757),
        heading = 297.09,
        size = vec3(1.0,1.0,1.0),
        options = {
            label = 'LSU 1',
            name = 'lsu1',
            icon = 'fa-solid fa-boxes',
            distance = 2,
            onSelect = function()
                print('lsu1')
            end
        }
    }
}

EDU.Courses = {

    class = 'certificate',

    courses = {
        'cert_const', 'cert_autom', 'cert_boatm',
        'cert_airfm', 'cert_elect', 'cert_medic',
        'cert_pvtsc'
    },

    classroom = {
        location = vec4(0,0,0,0),
        model = 'ig_davenorton',
        scenario = 'WORLD_HUMAN_DRINKING_CASINO_TERRACE',
        
    }
}