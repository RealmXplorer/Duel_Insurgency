function du-in:music/void/vain_pursuit
summon marker 10029 41 10063 {Tags:["pylon","mapSpecific"]}
setblock 10062 33 10063 air replace
schedule function du-in:ingame/void/spawn/missile 2s
schedule function du-in:ingame/void/hazard/fire/pick_pylon 10s
schedule function du-in:ingame/void/hazard/shock/prepare 20s
tellraw @a [{"text":"It's the end...","bold":true,"color":"dark_purple"}]
#scoreboard objectives modify matchDeaths displayname ["",{"text":"Match Deaths ","bold":true,"color":"red"},{"text":"(Max 3)","color":"gray"}]

summon marker 10029 52 10063 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10029 52 10030 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10062 52 10063 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10062 52 10030 {Tags:["missileSpawn","mapSpecific"]}