#Test for team score if there is a player in radius
execute unless score @s team = @a[distance=0.05..5,tag=playing,tag=!teamDead,gamemode=!spectator,limit=1,sort=nearest] team run function du-in:kit/papyrus/ability/success


#If enemy is too far
execute unless entity @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far

#If nearest player is on same team
execute if score @s team = @a[distance=0.05..5,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/all/ability/team


#execute if entity @e[type=marker,scores={papyrusHitTimer=..2}] at @e[type=marker,tag=papyrusFind] run kill @e[tag=papyrusBone,type=minecraft:armor_stand,distance=..2]

#tag @e[type=armor_stand,tag=papyrusBone,scores={papyrusBone=-99..}] add boneTimer

#kill @e[type=armor_stand,tag=papyrusBone,scores={boneTimer=..-1}]

#scoreboard players remove @e[type=armor_stand,scores={boneTimer=-99..}] boneTimer 1

tag @s remove kitActions