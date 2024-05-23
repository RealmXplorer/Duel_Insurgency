function du-in:music/void/pursuit_happiness
summon marker 10062 41 10063 {Tags:["pylon","mapSpecific"]}
setblock 10062 33 10030 air replace
schedule function du-in:void/hazard/bridge/pick_bridge 2s
scoreboard players set #main pylonFireList 0

schedule function du-in:void/hazard/fire/pick_pylon 10s
tellraw @a [{"text":"The Third Pylon ","bold":true,"color":"dark_purple"},{"text":"hums ominously...","color":"light_purple"}]

scoreboard players set #gonerMax gonerCount 4