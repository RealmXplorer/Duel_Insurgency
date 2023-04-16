execute as @a[distance=1..10,tag=playing,tag=!win,tag=!lose,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[tag=kitActions,scores={kit=9},limit=1] team run function du-in:kit/chara/ability/effect
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 460 levels
effect give @s minecraft:speed 5 1 true
#effect give @s minecraft:haste 5 1 true
scoreboard players set @s charaTimer 100
function du-in:kit/chara/particle
tag @s remove kitActions
tag @s[tag=stolen] add kitDone