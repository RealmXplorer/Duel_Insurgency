tag @s[tag=!teamDead] remove grave

effect give @s minecraft:speed 2 2 true
effect give @s minecraft:strength 2 0 true
execute if entity @s[tag=!teamDead] unless entity @s[scores={zombSkin=1..}] run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 100000 0.1 1

execute if entity @s[scores={zombSkin=1},tag=!teamDead] run playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=2},tag=!teamDead] run playsound minecraft:entity.drowned.ambient master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=3},tag=!teamDead] run playsound minecraft:terraria.zombamb master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=4},tag=!teamDead] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=4},tag=!teamDead] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=4},tag=!teamDead] run playsound minecraft:soundeffect.alive master @a ~ ~ ~ 1 1

execute if entity @s[tag=!teamDead] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 100000 2 1
execute if entity @s[tag=!teamDead] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 100000 .5 1

xp set @s[tag=!stolen] 350 levels
tag @s[tag=stolen,tag=givenStolen] add kitDone
execute if entity @s[scores={zombieTimer=..1}] run kill @e[tag=grave,type=minecraft:armor_stand,limit=1,sort=nearest]
execute if entity @s[scores={zombieTimer=..1}] run kill @e[tag=grave,type=minecraft:falling_block,limit=1,sort=nearest]
tag @s remove zombieRespawn
execute if entity @s[tag=ranMode] run function du-in:kit/all/reset
tag @s[tag=ranMode] add random
scoreboard players reset @s zombieTimer