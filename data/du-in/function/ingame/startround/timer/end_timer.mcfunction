tag @a remove startgame
tag @a[tag=lobby,tag=playing] remove lobby
#scoreboard players reset #main startSeq
gamemode adventure @a[tag=playing]

scoreboard objectives setdisplay below_name Health
scoreboard objectives setdisplay list killStreak

tag @a remove kitPicked
tag @a remove spectator

scoreboard players set @a music 0

scoreboard players reset @a lobby

title @a times 0 10 5
title @a[scores={team=1}] subtitle {text:"Red Team",color:red,bold:true}
title @a[scores={team=2}] subtitle {text:"Blue Team",color:blue,bold:true}

execute as @a[scores={kit=21}] at @s run playsound minecraft:cuphead.announce.go master @s ~ ~ ~ 10 1
execute at @e[type=armor_stand,tag=vendMachine] run setblock ~ ~1 ~ barrier keep
execute at @e[type=armor_stand,tag=vendMachine] run setblock ~ ~ ~ light[level=9] keep

execute as @a run attribute @s attack_damage modifier remove startgame

scoreboard players reset #main titleTimer2

execute if entity @a[tag=devMode,tag=partyLeader] run item replace entity @a hotbar.4 with minecraft:barrier[item_name={text:'End Game',bold:true,color:red},lore=[{text:'Throw to activate!',color:dark_purple,bold:true}],enchantment_glint_override=true]

item replace entity @a[scores={kit=7}] hotbar.8 with minecraft:arrow 2

execute if entity @a[tag=partyLeader,tag=specialEvent] at @r run playsound minecraft:soundeffect.bell master @a ~ ~ ~ 1 1