Config = {}

-- Display Options
-- 2 = Shows on both main map and minimap
-- 3 = Shows on main map only
-- 5 = Shows on minimap only
-- wouldnt recommend using other numbers unless you know what your doing

Config.Blips = {
    {
        name = "test", --name to show on blip
        coords = vector3(-297.74, 379.84, 112.1), --location for blip
        sprite = 52, --the blip sprite. find more here https://docs.fivem.net/docs/game-references/blips/
        scale = 0.8, --the size of blip on map
        colour = 3,  --the colour of the blip. numbers can be found here https://docs.fivem.net/docs/game-references/blips/#blip-colors
        display = 2, --display options above
    },
    {
        name = "test",
        coords = vector3(119.37, 564.19, 183.96),
        sprite = 51, 
        scale = 1, 
        colour = 2,  
        display = 5,
    },
    {
        name = "test",
        coords = vector3(808.72, -163.69, 75.88),
        sprite = 56, 
        scale = 1.5, 
        colour = 5,  
        display = 3, 
    },
}