execute if score #main shutdown matches 1.. if score #main online matches 2.. if entity @a[tag=playing,tag=!working] run tellraw @a {"text":"Game shutdown canceled!","bold":true,"color":"green"}
execute if score #main online matches 2.. if entity @a[tag=playing] run scoreboard players reset #main shutdown
execute if score #main online matches 2.. if entity @a[tag=playing] run scoreboard players reset #main shutdownTimer
execute if score #main online matches 2.. if entity @a[tag=playing] run tag @a[tag=playing] remove falseWin