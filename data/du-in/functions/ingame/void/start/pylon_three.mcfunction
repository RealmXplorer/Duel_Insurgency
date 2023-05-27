function du-in:music/void/pursuit_happiness
summon marker 10062 41 10063 {Tags:["pylon","mapSpecific"]}
setblock 10062 33 10030 air replace
tellraw @a [{"text":"The Third Pylon ","bold":true,"color":"dark_purple"},{"text":"hums ominously...","color":"light_purple"}]