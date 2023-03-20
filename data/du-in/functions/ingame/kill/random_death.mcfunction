#This function runs in Random kit on death

execute if entity @s[scores={kit=3},tag=!stolen] run function du-in:kit/slime/death/init

execute unless score #main lobbyTheme matches 1.. run function du-in:ingame/killmsg/death/default
execute if score #main lobbyTheme matches 1 run function du-in:ingame/killmsg/death/halloween
execute if score #main lobbyTheme matches 2 run function du-in:ingame/killmsg/death/thanks
execute if score #main lobbyTheme matches 3 run function du-in:ingame/killmsg/death/christmas
execute if score #main lobbyTheme matches 4 run function du-in:ingame/killmsg/death/easter

#Drop flag if player has flag and dies
execute if entity @s[tag=flagGot] run function du-in:ingame/ctf/flag_death

#Start death timer for team modes
execute if entity @s[tag=!teamDead,tag=!cIngame,tag=!dmIngame,tag=!kothIngame,tag=teamMode] run function du-in:ingame/teamdeath/death_go

#Play deathsounds
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:block.glass.break master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 2
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:entity.blaze.hurt master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 1
execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:soundeffect.table master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 1
execute unless entity @s[tag=stolen] run function du-in:kit/all/deathsound
execute if entity @s[tag=stolen] run function du-in:kit/villager/sounds/death

#Stop some abiliies upon death
scoreboard players reset @s floweyHitTimer
scoreboard players reset @s creeperTimer
scoreboard players reset @s jermaTimer
scoreboard players reset @s villagerEmeralds
scoreboard players reset @s ralseiTimer
scoreboard players set @s magmaTimer 1
scoreboard players set @s[tag=grave,tag=!teamDead] zombieTimer 5
clear @s minecraft:wither_rose
#tag @s[tag=springLock] add kitActions

#CLEAR TAGS#
tag @s remove kyloHit
#tag @s remove anakinPulled
#tag @s remove close
#tag @s remove lukePulled
#tag @s remove charaFear
tag @s remove inRing
tag @s remove ring1
tag @s remove ring2
tag @s remove notEaten
tag @s remove runza
execute if entity @s[tag=springLock] run function du-in:kit/springtrap/ability/disable
tag @s remove peepedHorror

#Stop Chara jumpscare sound
stopsound @s master chara.jump

#KILLSTREAK#
scoreboard players reset @s killStreak
tag @s remove killstreak
tag @s remove killstreak3

#Remove a life (only applicable in Deathmatch)
scoreboard players remove @s Lives 1
function du-in:ingame/killstreaks/combo/reset

scoreboard players add #main matchDeaths 1
execute if entity @s[tag=deathMark] run scoreboard players set #main markTimer 10
tag @s remove deathMark

#Random kit mode clears
execute unless entity @s[tag=grave] run function du-in:kit/all/reset
tag @s[tag=!grave] add random
clear @s
clear @s minecraft:emerald
attribute @s generic.armor base set 0
attribute @s generic.max_health base set 20
execute if entity @s[tag=!stolen,scores={kit=2}] run tag @s add undead
execute if entity @s[tag=!stolen,scores={kit=5}] run tag @s add undead
tag @s[tag=!grave] add deathTest