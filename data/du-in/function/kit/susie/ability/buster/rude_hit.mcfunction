execute if entity @s[gamemode=adventure,distance=..0.75] run damage @s 20 arrow by @n[type=armor_stand,tag=rudeBuster]
execute if entity @s[gamemode=adventure,distance=0.76..1.5] run damage @s 16 arrow by @n[type=armor_stand,tag=rudeBuster]

playsound minecraft:susie.rude_buster.hit master @a ~ ~ ~ 10 1
