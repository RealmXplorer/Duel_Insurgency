summon marker 10062 41 10030 {Tags:["pylon","mapSpecific"]}
setblock 10029 33 10030 air replace

schedule function du-in:void/hazard/bridge/pick_bridge 2s

tellraw @a [{"text":"The Second Pylon ","bold":true,"color":"dark_purple"},{"text":"glows intensely...","color":"light_purple"}]

scoreboard players set #gonerMax gonerCount 2

#10046.007 42 10030.5 X
#10046.007 42 10063.5 X

#10062.5 42 10046.998 Z
#10029.5 42 10046.998 Z