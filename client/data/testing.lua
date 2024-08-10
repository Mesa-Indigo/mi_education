
local questions = {
    sub = 'test',
    test = {
        q1 = {
            ask = 'words',
            ans = {
                a1 = 'inc',
                a2 = 'inc',
                a3 = 'inc',
                a4 = 'cor',
            }
        }
    }
}

lib.registerContext({
    id = 'ques1',
    title = questions.sub,
    options = {
      {
        title = questions.test.q1.ask,
      },

      {
        title = 'A',
        description = '',
        icon = 'play',
        onSelect = function()
          lib.print.info("Pressed the button!")
        end,
      },
    }
  })

RegisterCommand('test', function()
    
end, false)