local app = {
   name = "AnimalCrossingAdvance",

   tilesets = {
      -- no tilesets yet, the only required tilesets are terrain for all seasons
   },

   spritesheets = {
      -- all player, villager, and special spritesheets would be listed here
   },

   audio = {
      -- Title may be slightly modified from ACPG
      -- All tracks may be copied from ACPG in a ACWW/ACCF way, not good at music so original tracks are out of the question
      "m-nintdo.raw",
      "m-title.raw",

      "v0-..raw",
      "v0-0.raw",
      "v0-1.raw",
      "v0-2.raw",
      "v0-3.raw",
      "v0-4.raw",
      "v0-5.raw",
      "v0-6.raw",
      "v0-7.raw",
      "v0-8.raw",
      "v0-9.raw",
      "v0-a.raw",
      "v0-b.raw",
      "v0-c.raw",
      "v0-d.raw",
      "v0-e.raw",
      "v0-f.raw",
      "v0-g.raw",
      "v0-h.raw",
      "v0-i.raw",
      "v0-j.raw",
      "v0-k.raw",
      "v0-l.raw",
      "v0-m.raw",
      "v0-n.raw",
      "v0-o.raw",
      "v0-p.raw",
      "v0-q.raw",
      "v0-r.raw",
      "v0-s.raw",
      "v0-t.raw",
      "v0-u.raw",
      "v0-v.raw",
      "v0-w.raw",
      "v0-x.raw",
      "v0-y.raw",
      "v0-z.raw",
   },

   scripts = {
      -- All scripts and modules will go here
      "main.lua",
--      "sound.lua",  << packed into main as require did not work properly
--      "title.lua",  << also in main
   },

   misc = {
      -- Language localization files will go here, English will be main and then translation is a possibility
   }
}

return app
