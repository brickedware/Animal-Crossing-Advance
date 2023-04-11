# Animal Crossing: Advance
Animal Crossing: Advance is a recreation of Animal Crossing: Population Growing for the Game Boy Advance. Due to graphics and size limitations, and the fact that the GameCube runs at 435Mhz with loads of ram and processing units, compared to the 16.78Mhz GameBoy Advance, it won't look as good, neither will it have 3D graphics or... 236 villagers (it will most likely have <100 of fan favorites from Animal Crossing GameCube), but it will function as a portable Animal Crossing game on the GBA, so that's that.

## Engine
I'm using the [BPCore Engine](https://github.com/evanbowman/BPCore-Engine) for the main game engine, which allows you to program GBA games using Lua compared to C or C++, neither of which I am familiar with, which makes it easier on me. If you are contributing, please make sure you have all the requirements on the BPCore Engine page.

## Progress
Current progress:
Tilemaps are working! All code is in the sources, go to the BPCore-Engine page for more information on compiling.
How this works is that it uses 2 layers of tilesets. My only problem is that this reduces the amount of other layers significantly, so I'm going to need to figure out how to get the overlays and text to work.
![Island Tilemap](https://raw.githubusercontent.com/brickedware/Animal-Crossing-Advance/main/screenshots/islandtilemap.png "Island Tilemap")
I call the tilesets A and B tilesets (layer ID 2 and layer ID 1). Tileset slot A is commonly reserved for ground when outside, or a room if inside. Tileset slot B is reserved for extras, and in this case, the sand on a beach.
I split up the tilesets because on the GBA you only get limited palette for each image, and with BPCore-Engine, there's also a limit on how large an image can be, (presumably for it to properly load into RAM).

## Updates
- 4/8/2023, I have not been working on this project recently, however, I have found out that the sprites from some of the GBA minigames in AC and DNMe+ have been extracted. I will most likely be using those or basing custom assets off of a similar style.
- As of 7/7/2022, project will continue development.
- As of 6/22/2022, project may be slow, I will be going on vacation soon.
- As of 6/10/2022, I just started, so this GitHub page will have more to offer soon!
