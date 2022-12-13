tellraw @s [{"text":"------------------------------","color":"gray"}]
execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run tellraw @s [{"text":"Red Team: ","color":"red","bold":true},{"score":{"name":"#main","objective":"redOnline"},"color":"gold","bold":true}]
execute if score #main lobbyTheme matches 1 run tellraw @s [{"text":"Ghouls Team: ","color":"gold","bold":true},{"score":{"name":"#main","objective":"redOnline"},"color":"red","bold":true}]
execute if score #main lobbyTheme matches 3 run tellraw @s [{"text":"Saints Team: ","color":"red","bold":true},{"score":{"name":"#main","objective":"redOnline"},"color":"gold","bold":true}]
tellraw @s [{"selector":"@a[tag=team1,tag=lobby]"}]

execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run tellraw @s [{"text":"\nBlue Team: ","color":"blue","bold":true},{"score":{"name":"#main","objective":"blueOnline"},"color":"gold","bold":true}]
execute if score #main lobbyTheme matches 1 run tellraw @s [{"text":"\nGhosts Team: ","color":"dark_purple","bold":true},{"score":{"name":"#main","objective":"blueOnline"},"color":"red","bold":true}]
execute if score #main lobbyTheme matches 3 run tellraw @s [{"text":"\nElves Team: ","color":"dark_green","bold":true},{"score":{"name":"#main","objective":"blueOnline"},"color":"gold","bold":true}]
tellraw @s [{"selector":"@a[tag=team2,tag=lobby]"}]

scoreboard players reset @s teamQuery