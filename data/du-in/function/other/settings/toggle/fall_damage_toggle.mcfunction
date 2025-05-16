#Cycle
scoreboard players add #main fallDamageSetting 1
execute if score #main fallDamageSetting matches 2 run scoreboard players reset #main fallDamageSetting

#Fall damage on
execute if score #main fallDamageSetting matches 1 run tellraw @a ["",{text:"Fall Damage: ",bold:true,color:gold},{text:"On",color:green}]
execute if score #main fallDamageSetting matches 1 run gamerule fallDamage true

#Fall damage off
execute unless score #main fallDamageSetting matches 1 run tellraw @a ["",{text:"Fall Damage: ",bold:true,color:gold},{text:"Off",color:red},{text:" (Default)",color:gray}]
execute unless score #main fallDamageSetting matches 1 run gamerule fallDamage false

setblock ~ ~ ~-2 birch_button[facing=north] destroy