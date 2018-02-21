cfg = {}

cfg.showself = false -- True: shows your own id and blip
cfg.distance = 15 -- Max distance for id

cfg.default = {r = 255, g = 255, b = 255} -- Colors for default id
cfg.talker = {r = 255, g = 255, b = 51} -- Colors for talker id

cfg.showteam = false -- True: shows team colored id to everyone, not just team members
cfg.hideteam = false -- True: hides team colored id to everyone, make them use the cfg.default color for id

cfg.blips = { -- Groups blip display 
  ["BOPE"] = {
    id = {r = 70, g = 100, b = 200}, -- Colors for group id and vrp_cmd team chat color
	sprite = 1, -- Sprite for group blip
	colour = 29, -- Colour for group blip
	distance = 100 -- Max distance for group blip
  },
  ["PMRJ"] = {
    id = {r = 255, g = 225, b = 85},
	sprite = 1,
	colour = 60,
	distance = 100
  },
  ["CHEFE EMERGENCIA"] = {
    id = {r = 255, g = 100, b = 85},
	sprite = 1,
	colour = 1,
	distance = 100
  },
}

cfg.teams = { -- groups on the same teams can see each other (in this case sheriff can see both and be seen by both but they cant see each other)
  ["COPS"] = { -- Team name
    -- groups
    "police",
    "sheriff"
  },
  ["EMS"] = { -- Team name
    -- groups
    "emergency",
    "sheriff"
  },
  -- create more teams here
}

return cfg
-- Link for blip colours: http://i.imgur.com/Hvyx6cE.png
-- Link for blip sprites: https://marekkraus.sk/gtav/blips/list.html