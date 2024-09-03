
----------------------------------------------------------------
----------------------------------------------------------------
-- question template
--[[
    {
        -- set question here
        prompt = 'word?',
        -- set for the correct answer
        answer = 'A',
        -- set the answers here / leave id alone for answer
        q1 = { id = 'A', prompt = 'word' },
        q2 = { id = 'B', prompt = 'word' },
        q3 = { id = 'C', prompt = 'word' },
        q4 = { id = 'D', prompt = 'word' }
    },
]]

-- reference for questions
-- https://www.varsitytutors.com/practice-tests

-- courses & questions
Data.Courses = {

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    ['General'] = {

        [1] = {
            prompt = 'Which could NOT be a characteristic of a prokaryotic cell?',
            answer = 'A',
            q1 = { id = 'A', prompt = 'A true nucleus' },
            q2 = { id = 'B', prompt = 'Ribosomes' },
            q3 = { id = 'C', prompt = 'DNA' },
            q4 = { id = 'D', prompt = 'A Cell' }
        },

        [2] = {
            prompt = 'Add:  100+1.01+0.01+0.00001',
            answer = 'D',
            q1 = { id = 'A', prompt = '101.01001' },
            q2 = { id = 'B', prompt = '101.12001' },
            q3 = { id = 'C', prompt = '101.11001' },
            q4 = { id = 'D', prompt = '101.02001' }
        },

        [3] = {
            prompt = 'Which of the following cells that have both a cell wall / membrane?',
            answer = 'C',
            q1 = { id = 'A', prompt = 'Fungal & Animal Cells' },
            q2 = { id = 'B', prompt = 'Bacterial & Animal Cells' },
            q3 = { id = 'C', prompt = 'Bacterial & Fungal Cells' },
            q4 = { id = 'D', prompt = 'Fungal, Bacterial, & Animal Cells' }
        },

        [4] = {
            prompt = 'Which empire was dominant in the Indian subcontinent before the British?',
            answer = 'B',
            q1 = { id = 'A', prompt = 'The Nepalese Empire' },
            q2 = { id = 'B', prompt = 'The Mughal Empire' },
            q3 = { id = 'C', prompt = 'The Persian Empire' },
            q4 = { id = 'D', prompt = 'The Chinese Empire' }
        },

        [5] = {
            prompt = 'Which of the following is an example of primary consumers?',
            answer = 'B',
            q1 = { id = 'A', prompt = 'Algae' },
            q2 = { id = 'B', prompt = 'Deer eating grass' },
            q3 = { id = 'C', prompt = 'Fungi that gain energy from detritus' },
            q4 = { id = 'D', prompt = 'Foxes eating squirrels ' }
        },

        [6] = {
            prompt = 'The Meiji restoration occurred in __________.',
            answer = 'C',
            q1 = { id = 'A', prompt = 'Korea' },
            q2 = { id = 'B', prompt = 'Russia' },
            q3 = { id = 'C', prompt = 'Japan' },
            q4 = { id = 'D', prompt = 'China' }
        },

        [7] = {
            prompt = 'The XYZ affair was important because __________.',
            answer = 'A',
            q1 = { id = 'A', prompt = 'It led to the construction of the United States’ navy ' },
            q2 = { id = 'B', prompt = 'It caused the United States to stop trading with Britain' },
            q3 = { id = 'C', prompt = 'It caused the United States to declare war on France' },
            q4 = { id = 'D', prompt = 'It caused the United States to declare war against Britain' }
        },

        [8] = {
            prompt = 'The U.S. military took possession of the Phillipines during:',
            answer = 'A',
            q1 = { id = 'A', prompt = 'World War II' },
            q2 = { id = 'B', prompt = 'World War I' },
            q3 = { id = 'C', prompt = 'Korean War' },
            q4 = { id = 'D', prompt = 'Spanish-American War' }
        },

        [9] = {
            prompt = 'What year was the war of 1812 fought?',
            answer = 'C',
            q1 = { id = 'A', prompt = '1813' },
            q2 = { id = 'B', prompt = '2043' },
            q3 = { id = 'C', prompt = '1812' },
            q4 = { id = 'D', prompt = '1985' }
        },

        [10] = {
            prompt = 'Julie scored 100,90,67,89, & 78. What was the mean of her scores?',
            answer = 'A',
            q1 = { id = 'A', prompt = '84.8' },
            q2 = { id = 'B', prompt = '87.1' },
            q3 = { id = 'C', prompt = '79.9' },
            q4 = { id = 'D', prompt = '92.4' }
        },

    }
}