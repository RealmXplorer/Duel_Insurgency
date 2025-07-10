playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 0.2 0.2

execute if entity @s[scores={bogoTimer=0..}] run function du-in:kit/bogo/ability/end

#scoreboard players reset @s jump