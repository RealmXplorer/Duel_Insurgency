
execute if entity @s[scores={UUID.0=1612949873,UUID.1=2065910740,UUID.2=-1258910022,UUID.3=768424128}] run scoreboard players set @s FRIEND 2
execute if entity @s[scores={UUID.0=-510383905,UUID.1=1558989178,UUID.2=-1147761220,UUID.3=-1154644620}] run scoreboard players set @s FRIEND 2
execute if entity @s[scores={UUID.0=-1190152401,UUID.1=-1879357203,UUID.2=-1588908662,UUID.3=-694414132}] run scoreboard players set @s FRIEND 2
execute if entity @s[scores={UUID.0=-2063637115,UUID.1=-1763032855,UUID.2=-1199772617,UUID.3=440400551}] run scoreboard players set @s FRIEND 2
execute if entity @s[scores={UUID.0=-863980199,UUID.1=763969701,UUID.2=-1725317378,UUID.3=-1423621088}] run scoreboard players set @s FRIEND 2
execute if entity @s[scores={UUID.0=-475348742,UUID.1=-2114500422,UUID.2=-1257414522,UUID.3=457344893}] run scoreboard players set @s FRIEND 2
execute if entity @s[scores={UUID.0=-118350686,UUID.1=287195243,UUID.2=-1827134255,UUID.3=-379434867}] run scoreboard players set @s FRIEND 2
execute if entity @s[scores={UUID.0=-929091579,UUID.1=339297835,UUID.2=-1279598836,UUID.3=-195228322}] run scoreboard players set @s FRIEND 2

execute if entity @s[scores={FRIEND=2..}] at @s run playsound minecraft:me master @s ~ ~ ~
execute if entity @a[scores={FRIEND=2..}] run scoreboard players set #main LEVEL_OF_FUN 1

return 1