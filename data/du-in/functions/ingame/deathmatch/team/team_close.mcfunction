tag @a[tag=song] add songEnd
scoreboard players set @a[tag=song,tag=songEnd] music 0
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
function du-in:music/ingame/deathmatch
tag @a[tag=songEnd] remove song
execute if score Red teamPool matches 2 run tellraw @a[tag=!dmFinale,tag=!dmRedFinale] {"text":"2 Lives left for Red team!","color":"red","bold":true,"underlined":false}
execute if score Blue teamPool matches 1 run tellraw @a[tag=!dmFinale,tag=!dmBlueFinale] {"text":"2 Lives left for Blue team!","color":"red","bold":true,"underlined":false}

execute if score Red teamPool matches 2 run tag @a add dmRedFinale
execute if score Blue teamPool matches 2 run tag @a add dmBlueFinale

tag @a add dmFinale