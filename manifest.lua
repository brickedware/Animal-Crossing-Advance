local app = {
   name = "ACAdvance",
   gamecode = "ADMA", -- Optional: set the game code in the rom header (four chars)
   makercode = "O3",  -- Optional: set the maker code in the rom header (two chars)

   tilesets = {
      "textures/tilesets/test1.bmp",
	  "textures/tilesets/test2.bmp",
	  
      "textures/ui/font-8x8.bmp",

      "textures/ui/gspeak.bmp",
      "textures/ui/bspeak.bmp",
      "textures/ui/pspeak.bmp",
	  
	  "textures/image/train1.bmp",
	  "textures/image/train2.bmp",
   },

   spritesheets = {
      -- all player, villager, and special spritesheets would be listed here
	  
   },

   audio = {
      -- Title may be slightly modified from ACPG
      -- All tracks may be copied from ACPG in a ACWW/ACCF way, not good at music so original tracks are out of the question
      "audio/ui/nintendo.raw",
      "audio/music/title.raw",

      "audio/voice/0/..raw",
      "audio/voice/0/0.raw",
      "audio/voice/0/1.raw",
      "audio/voice/0/2.raw",
      "audio/voice/0/3.raw",
      "audio/voice/0/4.raw",
      "audio/voice/0/5.raw",
      "audio/voice/0/6.raw",
      "audio/voice/0/7.raw",
      "audio/voice/0/8.raw",
      "audio/voice/0/9.raw",
      "audio/voice/0/a.raw",
      "audio/voice/0/b.raw",
      "audio/voice/0/c.raw",
      "audio/voice/0/d.raw",
      "audio/voice/0/e.raw",
      "audio/voice/0/f.raw",
      "audio/voice/0/g.raw",
      "audio/voice/0/h.raw",
      "audio/voice/0/i.raw",
      "audio/voice/0/j.raw",
      "audio/voice/0/k.raw",
      "audio/voice/0/l.raw",
      "audio/voice/0/m.raw",
      "audio/voice/0/n.raw",
      "audio/voice/0/o.raw",
      "audio/voice/0/p.raw",
      "audio/voice/0/q.raw",
      "audio/voice/0/r.raw",
      "audio/voice/0/s.raw",
      "audio/voice/0/t.raw",
      "audio/voice/0/u.raw",
      "audio/voice/0/v.raw",
      "audio/voice/0/w.raw",
      "audio/voice/0/x.raw",
      "audio/voice/0/y.raw",
      "audio/voice/0/z.raw",
   },

   scripts = {
      -- All scripts and modules will go here
      "main.lua",
--      "sound.lua",  << packed into main as require did not work properly
--      "title.lua",  << also in main
   },

   misc = {
      -- Language localization files will go here, English will be main and then translation is a possibility
	  "tilemaps/testisland.csv",
	  
	  "catalog.bin",
   }
}

return app
