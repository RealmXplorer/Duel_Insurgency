execute if entity @a[tag=playing,scores={Lives=..3}] if score #main online matches 2 run tag @a[tag=song,tag=!teamMode] add songEnd
execute if score #main online matches 3.. run tag @a[tag=song,tag=!teamMode] add songEnd

tellraw @a[tag=!teamMode,tag=!dmFinale] {"text":"2 players remain!","color":"red","bold":true,"underlined":false}
scoreboard players set @a[tag=song,tag=songEnd] music 0
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
execute if entity @a[tag=song,tag=songEnd] run function du-in:music/ingame/deathmatch
tag @a[tag=songEnd] remove song
tag @a[tag=!teamMode,tag=!dmFinale] add dmFinale
