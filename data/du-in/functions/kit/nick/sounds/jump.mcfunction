playsound minecraft:entity.wolf.step master @a ~ ~ ~ 0.2 2
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 0.2 0.2
playsound minecraft:nick.jump master @a ~ ~ ~ 0.2 1
execute if entity @s[scores={wildeSkin=2}] run playsound minecraft:krampus.jingle master @a ~ ~ ~ 0.2 1
scoreboard players reset @s jump