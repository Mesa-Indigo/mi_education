
-- variables
local test = {
    score = 0,
    quest = 5,
    count = 1,
    total = 5,
}

-- function
local menu = function()
    lib.registerContext({
        id = 'test_menu',
        title = 'Test Example',
        options = {
            {
                title = 'Test Progress',
                description = 'Remaining questions: '..test.total,
                readOnly = true,
                progress = test.score,
                colorScheme = '#69DB7C',
            },
            {
                title = 'Question: '..test.count,
                description = 'Inset_question_here',
                readOnly = true,
            },
            {
                title = 'Answer',
                icon = 'a',
                onSelect = function()
                    test.score = test.score + 5
                    test.count = test.count + 1
                    test.total = test.total - 1
                end,
            },
            {
                title = 'Answer',
                icon = 'b',
                onSelect = function()
                    test.score = test.score + 5
                    test.count = test.count + 1
                    test.total = test.total - 1
                end,
            },
            {
                title = 'Answer',
                icon = 'c',
                onSelect = function()
                    test.score = test.score + 5
                    test.count = test.count + 1
                    test.total = test.total - 1
                end,
            },
            {
                title = 'Answer',
                icon = 'd',
                onSelect = function()
                    test.score = test.score + 5
                    test.count = test.count + 1
                    test.total = test.total - 1
                end,
            },
        }
    })

    lib.showContext('test_menu')
end

RegisterCommand('test', function()
    menu()
end, false)