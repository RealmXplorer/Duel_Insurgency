scoreboard players set @s runzaEat 0
tag @s add runza
tag @s add notEaten
playsound minecraft:entity.player.burp master @s ~ ~ ~ 20 0 1
particle minecraft:spit ~ ~1 ~ .5 .5 .5 .1 100 force
tellraw @s {text:"You're suddenly salivating at the mouth. You're famished!",bold:true,color:red}
effect give @s minecraft:nausea 9999 10 true
effect give @s minecraft:wither 9999 2 true
tag @s remove runza

