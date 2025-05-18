title @s[tag=!lose] title {text:"  ",color:red,bold:true}
title @s[tag=!lose] subtitle {text:"  ",color:red,bold:true}

#Drop flag if player has flag and dies
execute if entity @s[tag=flagGot] run function du-in:ingame/ctf/flag_death

scoreboard players add #main matchDeaths 1
execute if entity @s[tag=deathMark] run scoreboard players set #main markTimer 10

tag @s remove deathMark
tag @s remove pondered
tag @s remove glowing

execute if entity @s[scores={killedByPlayer=1..}] run function du-in:kit/sauron/ring/lose_ring

execute if entity @s[tag=selectedTarget] run tag @s remove monsterTarget
execute if entity @s[tag=selectedTarget] run tag @s remove selectedTarget

execute if entity @s[tag=sabotaged] run xp set @s 120 levels
execute if entity @s[tag=sabotaged] run clear @s carrot_on_a_stick
execute if entity @s[tag=sabotaged] run tag @s remove sabotaged

execute if entity @s[tag=fortniteCard] run function du-in:kit/paz/card/lose_card

#Death messages (depending on holiday theme)
execute unless score #main lobbyTheme matches 1.. run function du-in:kit/all/kill/kill_msg/death/default
execute if score #main lobbyTheme matches 1 run function du-in:kit/all/kill/kill_msg/death/halloween
execute if score #main lobbyTheme matches 2 run function du-in:kit/all/kill/kill_msg/death/thanks
execute if score #main lobbyTheme matches 3 run function du-in:kit/all/kill/kill_msg/death/christmas
execute if score #main lobbyTheme matches 4 run function du-in:kit/all/kill/kill_msg/death/easter

#Start death timer for team modes
execute if entity @s[tag=!teamDead,tag=!cIngame,tag=!dmIngame,tag=!kothIngame,tag=teamMode] run function du-in:ingame/team_death/death_go

#Play deathsounds
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:block.glass.break master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 2
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:entity.blaze.hurt master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 1

execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:soundeffect.table master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 1

execute unless entity @s[tag=stolen] run function du-in:kit/all/death
execute if entity @s[tag=stolen] run function du-in:kit/villager/death

execute if entity @s[scores={jermaTimer=0..}] run scoreboard players reset @s jermaTimer


execute if entity @s[scores={ralseiTimer=0..}] run scoreboard players reset @s ralseiTimer

execute if entity @s[tag=midasTouched] run tag @s remove midasTouched

execute if entity @s[scores={pussFearTimer=1..}] run scoreboard players set @s pussFearTimer 1

#Start Zombie ability
execute if entity @s[tag=grave,tag=!teamDead] run scoreboard players set @s zombieTimer 5

execute if entity @a[scores={kit=1004}] run clear @s mushroom_stew

#CLEAR TAGS#
execute if entity @s[tag=kyloHit] run tag @s remove kyloHit
execute if entity @s[tag=notEaten] run tag @s remove notEaten


execute if entity @s[tag=runza] run tag @s remove runza
execute if entity @s[tag=peepedHorror] run tag @s remove peepedHorror


#KILLSTREAK#
scoreboard players reset @s killStreak

function du-in:ingame/killstreaks/combo/reset

#Remove a life (only applicable in Deathmatch)
execute if entity @s[tag=dmIngame] run scoreboard players remove @s Lives 1
execute if entity @s[tag=void] run scoreboard players remove @s Lives 1