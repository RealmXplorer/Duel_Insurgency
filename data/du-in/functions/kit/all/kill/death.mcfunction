title @s[tag=!lose] title {"text":"  ","color":"red","bold":true}
title @s[tag=!lose] subtitle {"text":"  ","color":"red","bold":true}

#Drop flag if player has flag and dies
execute if entity @s[tag=flagGot] run function du-in:ingame/ctf/flag_death

scoreboard players add #main matchDeaths 1
execute if entity @s[tag=deathMark] run scoreboard players set #main markTimer 10
tag @s remove deathMark
tag @s remove pondered
xp set @s[tag=sabotaged] 120 levels
tag @s remove sabotaged
#Summon slimes on death
execute if entity @s[scores={kit=3},tag=!stolen] run function du-in:kit/slime/death/init

#Death messages (depending on holiday theme)
execute unless score #main lobbyTheme matches 1.. run function du-in:ingame/killmsg/death/default
execute if score #main lobbyTheme matches 1 run function du-in:ingame/killmsg/death/halloween
execute if score #main lobbyTheme matches 2 run function du-in:ingame/killmsg/death/thanks
execute if score #main lobbyTheme matches 3 run function du-in:ingame/killmsg/death/christmas
execute if score #main lobbyTheme matches 4 run function du-in:ingame/killmsg/death/easter

#Start death timer for team modes
execute if entity @s[tag=!teamDead,tag=!cIngame,tag=!dmIngame,tag=!kothIngame,tag=teamMode] run function du-in:ingame/teamdeath/death_go

#Play deathsounds
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:block.glass.break master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 2
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:entity.blaze.hurt master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 1
execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:soundeffect.table master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 1
execute unless entity @s[tag=stolen] run function du-in:kit/all/deathsound
execute if entity @s[tag=stolen] run function du-in:kit/villager/sounds/death

#Stop some abiliies upon death
scoreboard players reset @s[scores={kit=12}] floweyHitTimer
scoreboard players set @s[scores={kit=22},tag=pursue] gumballPursueTimer 40
scoreboard players set @s[scores={kit=22}] darwinTimer 0
scoreboard players reset @s[scores={kit=4}] creeperTimer
execute if entity @a[scores={kit=1002}] run scoreboard players reset @s jermaTimer
scoreboard players reset @s[scores={kit=8}] villagerEmeralds
scoreboard players reset @s[tag=stolen] villagerEmeralds
execute if entity @a[scores={kit=24}] run scoreboard players reset @s ralseiTimer
scoreboard players set @s[scores={kit=3},tag=magma] magmaTimer 1
tag @s[tag=midasTouched] remove midasTouched

#Start Zombie ability
scoreboard players set @s[tag=grave,tag=!teamDead] zombieTimer 5

#clear items
clear @s minecraft:wither_rose
clear @s mushroom_stew
clear @s[scores={kit=8}] minecraft:emerald
clear @s[tag=stolen] minecraft:emerald

#CLEAR TAGS#
execute if entity @a[scores={kit=17}] run tag @s remove kyloHit
execute if entity @a[scores={kit=1005}] run tag @s remove notEaten

execute if entity @a[scores={kit=1001}] run scoreboard players remove @s[scores={weaponTier=1..}] weaponTier 1
clear @s[scores={kit=1001}] #du-in:weapon
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/weapon

execute if entity @a[scores={kit=1005}] run tag @s remove runza
execute if entity @a[scores={kit=1005}] run tag @s remove peepedHorror
execute if entity @s[scores={kit=5},tag=springLock] run function du-in:kit/springtrap/ability/disable

#KILLSTREAK#
scoreboard players reset @s killStreak

function du-in:ingame/killstreaks/combo/reset

#Remove a life (only applicable in Deathmatch)
scoreboard players remove @s[tag=dmIngame] Lives 1