#If suicide
execute unless entity @s[scores={killedByPlayer=1..}] if entity @s[tag=cIngame,scores={killIngame=1..}] run function du-in:kit/all/death/suicide

#Clear Titles
title @s[tag=!lose] title {text:"  ",color:red,bold:true}
title @s[tag=!lose] subtitle {text:"  ",color:red,bold:true}

#Drop flag if player has flag and dies
execute if entity @s[tag=flagGot] run function du-in:ingame/ctf/flag_death

scoreboard players add #main matchDeaths 1
execute if entity @s[tag=deathMark] run scoreboard players set #main markTimer 10

tag @s remove deathMark
tag @s remove pondered
tag @s remove glowing

execute if entity @s[scores={killedByPlayer=1..},tag=hasRing] run function du-in:kit/sauron/ring/lose_ring
execute if entity @s[tag=hasRing] unless entity @s[scores={killedByPlayer=1..}] run function du-in:kit/sauron/ring/drop_ring

execute if entity @s[tag=selectedTarget] run function du-in:maps/jermall/clear

execute if entity @s[tag=sabotaged] run function du-in:kit/nick/ability/sabotage/expire

execute if entity @s[tag=fortniteCard] run function du-in:kit/paz/card/lose_card

#Death messages (depending on holiday theme)
execute unless score #main lobbyTheme matches 1.. run function du-in:kit/all/kill/msg/death/default
execute if score #main lobbyTheme matches 1 run function du-in:kit/all/kill/msg/death/halloween
execute if score #main lobbyTheme matches 2 run function du-in:kit/all/kill/msg/death/thanks
execute if score #main lobbyTheme matches 3 run function du-in:kit/all/kill/msg/death/christmas
execute if score #main lobbyTheme matches 4 run function du-in:kit/all/kill/msg/death/easter

#Start death timer for team modes
execute if entity @s[tag=!teamDead,tag=!cIngame,tag=!dmIngame,tag=!kothIngame,tag=teamMode] run function du-in:ingame/team_death/death_go

#Play deathsounds
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:block.glass.break master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 2
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:entity.blaze.hurt master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 1

execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:soundeffect.table master @s[tag=!startgame,tag=!lose,tag=!win] ~ ~ ~ 1 1

execute unless entity @s[tag=stolen] run function du-in:kit/all/death/search
execute if entity @s[tag=stolen] run function du-in:kit/villager/death

execute if entity @s[scores={jermaTimer=0..}] run scoreboard players reset @s jermaTimer


scoreboard players reset @s ralseiTimer

execute if entity @s[scores={cinderTimer=1..}] run function du-in:kit/cinder/ability/mage/end
scoreboard players reset @s cinderTimer
scoreboard players reset @s cinderMagic

execute if entity @s[tag=midasTouched] run tag @s remove midasTouched

scoreboard players set @s pussFearTimer 1

#Start Zombie ability
execute if entity @s[tag=grave,tag=!teamDead] run scoreboard players set @s zombieTimer 5

execute if entity @a[scores={kit=1004}] run clear @s mushroom_stew

scoreboard players reset @s jockeyTimer

#CLEAR TAGS#
execute if entity @s[tag=kyloHit] run tag @s remove kyloHit
execute if entity @s[tag=notEaten] run tag @s remove notEaten


execute if entity @s[tag=runza] run tag @s remove runza
execute if entity @s[tag=peepedHorror] run tag @s remove peepedHorror

execute if entity @s[scores={shrunkTimer=0..}] run function du-in:kit/jack_horner/ability/drink/reset

#Parry clear#
execute if entity @s[scores={parryDuration=0..},tag=parry] run scoreboard players set @s parryDuration 0

#KILLSTREAK#
scoreboard players reset @s killStreak

function du-in:ingame/kill_combo/reset

#Remove a life (only applicable in Deathmatch)
execute if entity @s[tag=dmIngame] run scoreboard players remove @s Lives 1
execute if entity @s[tag=void] run scoreboard players remove @s Lives 1

#If died in random kit mode
execute if entity @s[tag=ranMode] run function du-in:kit/all/death/random_mode

#End function
scoreboard players reset @s killedByCreeper
scoreboard players reset @s killedByPlayer
scoreboard players reset @s justdied
