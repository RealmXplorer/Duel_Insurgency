#Add Party Leader to random player
tag @r add partyLeader

#Announce new party leader
tellraw @a [{"selector":"@a[tag=partyLeader]"},{"text":" is now the party leader!","bold":true,"color":"gold"}]

#Reset lobby music
execute if score #main lobby matches 1 run stopsound @a[tag=!parkour,tag=!shop] record
execute if score #main lobby matches 1 run scoreboard players set @a[tag=!parkour,tag=!shop] music 0


##The following functions and commands test for if the new party leader has different settings enabled
#Announce gamemode cap changes#
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] killScale = #main killScale run function du-in:lobby/scales/classicap
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] dmScale = #main dmScale run function du-in:lobby/scales/dmcap
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] kothScale = #main kothScale run function du-in:lobby/scales/kothcap
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] ctfScale = #main ctfScale run function du-in:lobby/scales/ctfcap
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] conqScale = #main conqScale run function du-in:lobby/scales/conquestcap
#TEAM MODES#
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] tKillScale = #main tKillScale run function du-in:lobby/scales/tclassicap
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] tKothScale = #main tKothScale run function du-in:lobby/scales/tkothcap

#Announce Death Timer Changes#
execute unless score @a[tag=partyLeader,limit=1,tag=!playing] dtScale = #main dtScale run function du-in:lobby/scales/death_timer_cap

execute unless score @a[tag=partyLeader,limit=1,tag=!playing] gameTimeScale = #main gameTimeScale run function du-in:lobby/scales/gametimecap

#Set Main scale to match new party leader's
execute store result score #main killScale run scoreboard players get @a[tag=partyLeader,limit=1] killScale
execute store result score #main dmScale run scoreboard players get @a[tag=partyLeader,limit=1] dmScale
execute store result score #main kothScale run scoreboard players get @a[tag=partyLeader,limit=1] kothScale
execute store result score #main ctfScale run scoreboard players get @a[tag=partyLeader,limit=1] ctfScale
execute store result score #main conqScale run scoreboard players get @a[tag=partyLeader,limit=1] conqScale
execute store result score #main tKillScale run scoreboard players get @a[tag=partyLeader,limit=1] tKillScale
execute store result score #main tkothScale run scoreboard players get @a[tag=partyLeader,limit=1] tKothScale


#tag @a[tag=partyLeader] add online

#Resets
execute as @a[tag=partyLeader] run function du-in:lobby/leader_reset