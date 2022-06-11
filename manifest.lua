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
      "m-title",
   },

   scripts = {
      -- All scripts and modules will go here
      "main.lua",
      "sound.lua",
      "title.lua",
   },

   misc = {
      -- Language localization files will go here, English will be main and then translation is a possibility
   }
}

return app
