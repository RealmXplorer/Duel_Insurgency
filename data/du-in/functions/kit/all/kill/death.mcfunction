title @s[tag=!lose] title {"text":"  ","color":"red","bold":true}
title @s[tag=!lose] subtitle {"text":"  ","color":"red","bold":true}

#Drop flag if player has flag and dies
execute if entity @s[tag=flagGot] run function du-in:ingame/ctf/flag_death

scoreboard players add #main matchDeaths 1
execute if entity @s[tag=deathMark] run scoreboard players set #main markTimer 10

tag @s remove deathMark
tag @s remove pondered
tag @s remove glowing

execute if entity @s[tag=selectedTarget] run tag @s remove monsterTarget
execute if entity @s[tag=selectedTarget] run tag @s remove selectedTarget

execute if entity @s[tag=sabotaged] run xp set @s 120 levels
execute if entity @s[tag=sabotaged] run clear @s carrot_on_a_stick
execute if entity @s[tag=sabotaged] run tag @s remove sabotaged

execute if entity @s[tag=fortniteCard] run function du-in:kit/paz/card/lose_card

#Summon slimes on death
#execute if entity @s[scores={kit=3},tag=!stolen] run function du-in:kit/slime/death/init

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
execute if entity @s[tag=stolen] run function du-in:kit/villager/death

#Stop some abiliies upon death
#execute if entity @s[scores={kit=12}] run scoreboard players reset @s floweyHitTimer

# execute if entity @s[scores={kit=22},tag=pursue] run scoreboard players set @s gumballPursueTimer 40
# execute if entity @s[scores={kit=22}] run scoreboard players set @s darwinTimer 0

#execute if entity @s[scores={kit=4}] run scoreboard players reset @s creeperTimer

execute if entity @s[scores={jermaTimer=0..}] run scoreboard players reset @s jermaTimer

#execute if entity @s[scores={kit=8}] run scoreboard players reset @s villagerEmeralds
#execute if entity @s[tag=stolen] run scoreboard players reset @s villagerEmeralds

execute if entity @s[scores={ralseiTimer=0..}] run scoreboard players reset @s ralseiTimer

#execute if entity @s[scores={kit=3},tag=magma] run scoreboard players set @s magmaTimer 1

execute if entity @s[tag=midasTouched] run tag @s remove midasTouched

execute if entity @s[scores={pussFearTimer=1..}] run scoreboard players set @s pussFearTimer 1

#Start Zombie ability
execute if entity @s[tag=grave,tag=!teamDead] run scoreboard players set @s zombieTimer 5

#clear items
#execute if entity @s[scores={kit=18}] run clear @s minecraft:wither_rose

execute if entity @a[scores={kit=1004}] run clear @s mushroom_stew

#execute if entity @s[scores={kit=8}] run clear @s minecraft:emerald
#execute if entity @s[tag=stolen] run clear @s minecraft:emerald

#CLEAR TAGS#
execute if entity @s[tag=kyloHit] run tag @s remove kyloHit
execute if entity @s[tag=notEaten] run tag @s remove notEaten

#execute if entity @s[scores={kit=1001,weaponTier=1..}] run scoreboard players remove @s weaponTier 1
#execute if entity @s[scores={kit=1001}] run clear @s #du-in:weapon
#execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/weapon

execute if entity @s[tag=runza] run tag @s remove runza
execute if entity @s[tag=peepedHorror] run tag @s remove peepedHorror

#execute if entity @s[scores={kit=5},tag=springLock] run function du-in:kit/springtrap/ability/disable

#KILLSTREAK#
scoreboard players reset @s killStreak

function du-in:ingame/killstreaks/combo/reset

#Remove a life (only applicable in Deathmatch)
execute if entity @s[tag=dmIngame] run scoreboard players remove @s Lives 1
execute if entity @s[tag=void] run scoreboard players remove @s Lives 1