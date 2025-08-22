tag @s remove grave

effect give @s minecraft:speed 2 2 true
effect give @s minecraft:strength 2 0 true
execute if entity @s[tag=!stolen] run function du-in:kit/zombie/ability/grave/sound
execute if entity @s[tag=stolen] run playsound minecraft:entity.zombie_villager.ambient master @a ~ ~ ~ 100000 0.1 1

# execute unless entity @s[scores={zombSkin=1..}] run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 100000 0.1 1
# execute if entity @s[scores={zombSkin=1}] run playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 100000 0.1 1
# execute if entity @s[scores={zombSkin=2}] run playsound minecraft:entity.drowned.ambient master @a ~ ~ ~ 100000 0.1 1
# execute if entity @s[scores={zombSkin=3}] run playsound minecraft:terraria.zombamb master @a ~ ~ ~ 100000 0.1 1
# execute if entity @s[scores={zombSkin=4}] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 100000 0.1 1
# execute if entity @s[scores={zombSkin=4}] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100000 0.1 1
# execute if entity @s[scores={zombSkin=4}] run playsound minecraft:soundeffect.alive master @a ~ ~ ~ 1 1

#,tag=!teamDead

playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 100000 2 1
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 100000 .5 1

xp set @s[tag=!stolen] 350 levels
tag @s[tag=stolen,tag=givenStolen] add kitDone

kill @n[type=interaction,tag=grave,distance=..3]
kill @n[type=falling_block,tag=grave,distance=..3]


execute if entity @s[tag=ranMode] run function du-in:kit/all/reset
#tag @s[tag=ranMode] add random
execute if entity @s[tag=ranMode] run function du-in:kit/all/random/roll
      
scoreboard players reset @s zombieTimer