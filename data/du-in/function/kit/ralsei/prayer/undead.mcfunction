effect give @s minecraft:instant_damage 1 0 true
tellraw @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,tag=undead] [{text:"The undead cannot be healed!",bold:true,color:red}]