scoreboard players set @a[distance=0.05..4,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] golemFloat 5

effect give @a[distance=0.05..4,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] minecraft:levitation 1 25 true
effect give @a[distance=0.05..4,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] minecraft:instant_damage 1 0 true

tellraw @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!teamDead] [{"text":"You got tossed by Iron Golem!","bold":true,"color":"red"}]
playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 10 1

particle minecraft:crit ~ ~.1 ~ 0.1 1 0.1 0 100 force
particle minecraft:poof ~ ~.1 ~ 0.1 0.1 0.1 0.05 100 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 100 .1
playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 100 1
playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 .1

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 360 levels
tag @s add kitDone