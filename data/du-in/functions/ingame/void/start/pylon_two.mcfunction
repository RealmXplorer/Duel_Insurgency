summon marker 10062 41 10030 {Tags:["pylon","mapSpecific"]}
setblock 10029 33 10030 air replace
summon marker 10029 52 10063 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10029 52 10030 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10062 52 10063 {Tags:["missileSpawn","mapSpecific"]}
summon marker 10062 52 10030 {Tags:["missileSpawn","mapSpecific"]}
schedule function du-in:ingame/void/spawn/missile 2s
tellraw @a [{"text":"The Second Pylon ","bold":true,"color":"dark_purple"},{"text":"glows intensely...","color":"light_purple"}]