function du-in:music/void/pursuit_happiness
summon marker 10062 41 10063 {Tags:["pylon","mapSpecific"]}
setblock 10062 33 10030 air replace
schedule function du-in:ingame/void/spawn/missile 2s
scoreboard players set #main pylonFireList 0
summon marker 10029 52 10063 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10029 52 10030 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10062 52 10063 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10062 52 10030 {Tags:["missileSpawn","mapSpecific"]}
schedule function du-in:ingame/void/hazard/fire/pick_pylon 10s
tellraw @a [{"text":"The Third Pylon ","bold":true,"color":"dark_purple"},{"text":"hums ominously...","color":"light_purple"}]