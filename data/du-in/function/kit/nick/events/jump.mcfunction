playsound minecraft:entity.wolf.step voice @a ~ ~ ~ 0.2 2
playsound minecraft:entity.player.attack.nodamage voice @a ~ ~ ~ 0.2 0.2
playsound minecraft:nick.jump voice @a ~ ~ ~ 0.2 1
execute if entity @s[scores={wildeSkin=5}] run playsound minecraft:krampus.jingle voice @a ~ ~ ~ 0.2 1
#scoreboard players reset @s jump