tellraw @a {"text":"Game shutdown in 10 seconds!","bold":true,"color":"dark_red"}
execute at @a[tag=falseWin] run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 100 0.5 1
execute at @a[tag=falseWin] run playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 0.5 1
