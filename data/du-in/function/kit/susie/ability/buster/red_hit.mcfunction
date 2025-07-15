execute if entity @s[gamemode=adventure,distance=..0.75] run damage @s 20 arrow by @n[type=armor_stand,tag=redBuster]
execute if entity @s[gamemode=adventure,distance=0.76..1.5] run damage @s 15 arrow by @n[type=armor_stand,tag=redBuster]

playsound minecraft:susie.rude_buster.hit master @a ~ ~ ~ 10 0.90
