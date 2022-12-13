execute unless entity @s[tag=stolen] as @a[tag=kitActions,scores={kit=16}] run xp set @s 200 levels
tag @a[tag=kitActions,scores={kit=16}] add kitDone
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 0.3