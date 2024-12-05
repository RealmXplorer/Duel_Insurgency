#playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1000 1 1
execute if entity @s[tag=shop] run playsound minecraft:entity.villager.yes master @a ~ ~ ~
playsound minecraft:soundeffect.unlock master @s ~ ~ ~ 1000 1 1
playsound minecraft:saac.ready2 master @a ~ ~ ~ .5 1.25