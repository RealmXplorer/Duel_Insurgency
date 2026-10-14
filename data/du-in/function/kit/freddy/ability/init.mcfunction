##DEFAULT ABILITY
execute store result score #main team run scoreboard players get @s team
execute as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = #main team run tag @s add freddyHit
tag @s[tag=sabotaged] add freddyHit

#Sort team
scoreboard players reset #main team

attribute @s attack_damage modifier add freddy_ability 2 add_value
attribute @s movement_speed modifier add freddy_ability 0.02 add_value

playsound du-in:kit.freddy.power master @a ~ ~ ~ 1 1
playsound du-in:kit.freddy.laugh master @a ~ ~ ~ 1 1

execute if entity @s[tag=empower] run tag @a[tag=freddyHit] add empoweredFreddyHit
execute as @a[tag=freddyHit] run function du-in:kit/freddy/ability/enemy_hit

#Go Invisible
tag @s[tag=!sabotaged] add freddyShadow
tag @s[tag=!sabotaged] add invisible
effect give @s[tag=!sabotaged] night_vision infinite 1 true
clear @s[tag=!sabotaged] #du-in:armor

#Take lights away
execute if entity @s[tag=!void,tag=!sabotaged] run function du-in:kit/freddy/ability/light/scan_start
scoreboard players set @s[tag=!empower] lightTimer 200
scoreboard players set @s[tag=empower] lightTimer 300
execute if entity @s[tag=!void,tag=!sabotaged] unless score #freddyLight running matches 1 run function du-in:kit/freddy/ability/light/loop

##Freddy lights
#execute if entity @s[tag=light,tag=!unset] run function du-in:kit/freddy/ability/light/timer

#Put into cooldown
tag @s add cooldown
clear @s #du-in:ability

tag @s remove kitActions

