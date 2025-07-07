scoreboard players add @s saacMoneyDollar 1
execute if entity @s[scores={kit=1000}] run playsound minecraft:saac.ready master @a ~ ~ ~ 20000 1
playsound minecraft:saac.ready2 master @a ~ ~ ~ 20000 1
scoreboard players set @s saacMoneyCheck 0
