tellraw @s [{"text":"------------------------------","color":"gray"}]
tellraw @s [{"text":"Game ","color":"gray","bold":true},{"score":{"name":"#main","objective":"gameNum"},"color":"gold","bold":true}]
tellraw @s[tag=wonGame,tag=!wasSpect,tag=!fromVoid] [{"text":"Result: ","color":"gold","bold":false},{"text":"Victory!","color":"green","bold":true}]
tellraw @s[tag=!wonGame,tag=!wasSpect,tag=!fromVoid] [{"text":"Result: ","color":"gold","bold":false},{"text":"Defeat!","color":"red","bold":true}]
tellraw @s[tag=!wonGame,tag=!wasSpect,tag=fromVoid] [{"text":"Result: ","color":"gold","bold":false},{"text":"YOU WILL NEVER LEAVE!","color":"dark_purple","bold":true}]
tellraw @s[tag=wonGame,tag=!wasSpect,tag=fromVoid] [{"text":"Result: ","color":"gold","bold":false},{"text":"YOU ARE NOTHING","color":"light_purple","bold":true}]
tellraw @s[tag=wasSpect] [{"text":"Result: ","color":"gold","bold":false},{"text":"Specating","color":"gray","bold":true}]

tellraw @s [{"text":"\nKills: ","color":"gray","bold":false},{"score":{"name":"*","objective":"gameKills"},"color":"gold","bold":false}]
tellraw @s [{"text":"Deaths: ","color":"gray","bold":false},{"score":{"name":"*","objective":"gameDeaths"},"color":"gold","bold":false}]
tellraw @s [{"text":"Damage Dealt: ","color":"gray","bold":false},{"score":{"name":"*","objective":"gameDam"},"color":"gold","bold":false}]
tellraw @s [{"text":"Damage Taken: ","color":"gray","bold":false},{"score":{"name":"*","objective":"gameHit"},"color":"gold","bold":false}]
tellraw @s [{"text":"Win Streak: ","color":"aqua","bold":false},{"score":{"name":"*","objective":"winStreak"},"color":"gold","bold":false}]
scoreboard players reset @s statsItem
