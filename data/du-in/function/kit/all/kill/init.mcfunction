#This function is triggered by this advancement
advancement revoke @s only du-in:utility/kill

#Add Kill scores#
scoreboard players add @s quickKill 1
scoreboard players add @s killStreak 1

#Detect Double, Triple, Quad or Quin kills#
execute if entity @s[scores={quickKill=1..}] run function du-in:ingame/kill_combo/init

#Detect Killstreak
execute if entity @s[scores={killStreak=3..}] run function du-in:ingame/killstreak

#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Run kit-specific functions in "(kit)/events/kill"
execute at @s run function du-in:kit/all/kill/find_kit with storage du-in:main player

#Kill Messages
execute if entity @s[tag=killMsg] unless entity @s[scores={justdied=1..}] run function du-in:kit/all/kill/msg/init
#Allow for another killMsg
tag @s remove killMsg

#Announce if player killed player with Killstreak
execute if entity @a[scores={justdied=1,killStreak=3..}] run function du-in:ingame/killstreaks/killed

#Kill Sounds#
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound du-in:sfx.te.golkill master @s ~ ~ ~ .4 2
execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 2
execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound du-in:sfx.funny.boom master @s ~ ~ ~ 1 1

#Rewards#
scoreboard players add @s Diamonds 2
scoreboard players add @s exp 1

#Increase Ring corruption
execute if entity @s[tag=hasRing] unless entity @s[scores={kit=31}] run scoreboard players add @s ringTimer 5

#Classic Functions
execute if entity @s[tag=cIngame] run function du-in:kit/all/kill/classic