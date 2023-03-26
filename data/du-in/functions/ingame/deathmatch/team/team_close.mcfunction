tag @a[tag=song] add songEnd
scoreboard players set @a[tag=song,tag=songEnd] music 0
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
tag @a[tag=songEnd] remove song
execute if score #main redTeamCount matches 1 run tellraw @a[tag=!dmFinale,tag=!dmRedFinale] {"text":"1 player on Red Team remains!","color":"red","bold":true,"underlined":false}
execute if score #main blueTeamCount matches 1 run tellraw @a[tag=!dmFinale,tag=!dmBlueFinale] {"text":"1 player on Blue Team remains!","color":"red","bold":true,"underlined":false}
execute if score #main redTeamCount matches 1 run tag @a add dmRedFinale
execute if score #main blueTeamCount matches 1 run tag @a add dmBlueFinale

tag @a add dmFinale