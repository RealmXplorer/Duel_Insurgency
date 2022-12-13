tag @r add partyLeader
tellraw @a ["",{"selector":"@a[tag=partyLeader]"},{"text":" is now the party leader!","bold":true,"color":"gold"}]
execute if score #main lobby matches 1 run stopsound @a[tag=!parkour,tag=!shop] record
execute if score #main lobby matches 1 run scoreboard players set @a[tag=!parkour,tag=!shop] music 0
#FFA MODES#
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] killScale = #main killScale run function du-in:lobby/scales/classicap
#DEATHMATCH INCLUDES TEAM MODE#
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] dmScale = #main dmScale run function du-in:lobby/scales/dmcap
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] kothScale = #main kothScale run function du-in:lobby/scales/kothcap
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] ctfScale = #main ctfScale run function du-in:lobby/scales/ctfcap
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] conqScale = #main conqScale run function du-in:lobby/scales/conquestcap

#Death Timer#
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] dtScale = #main dtScale run function du-in:lobby/scales/death_timer_cap

#TEAM MODES#
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] tKillScale = #main tKillScale run function du-in:lobby/scales/tclassicap
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] tKothScale = #main tKothScale run function du-in:lobby/scales/tkothcap

#SET MAIN TO NEW SCORE#
execute store result score #main killScale run scoreboard players get @a[tag=partyLeader,limit=1] killScale
execute store result score #main dmScale run scoreboard players get @a[tag=partyLeader,limit=1] dmScale
execute store result score #main kothScale run scoreboard players get @a[tag=partyLeader,limit=1] kothScale
execute store result score #main ctfScale run scoreboard players get @a[tag=partyLeader,limit=1] ctfScale
execute store result score #main conqScale run scoreboard players get @a[tag=partyLeader,limit=1] conqScale


execute store result score #main tKillScale run scoreboard players get @a[tag=partyLeader,limit=1] tKillScale
execute store result score #main tkothScale run scoreboard players get @a[tag=partyLeader,limit=1] tKothScale
tag @a[tag=partyLeader] add online
execute as @a[tag=partyLeader] run function du-in:lobby/leader_reset
#execute unless entity @a[tag=partyLeader,scores={lobby=3}] run clear @a[tag=partyLeader] #du-in:lobby
#item replace entity @a[tag=partyLeader,scores={lobby=2}] inventory.15 with minecraft:cookie{display:{Name:'{"text":"Spam mode","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"Click to allow spam clicking!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b}
#item replace entity @a[tag=partyLeader,scores={lobby=2}] inventory.11 with minecraft:rabbit_foot{display:{Name:'{"text":"Random kit on Death","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"Click to respawn with random kit every life!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b}

