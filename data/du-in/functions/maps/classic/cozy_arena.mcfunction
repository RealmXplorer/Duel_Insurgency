tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Cozy Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] -965 9 1037 135 0
tp @a[tag=!working,scores={spawnpoint=3..4}] -965 9 1015 45 0
tp @a[tag=!working,scores={spawnpoint=5..6}] -987 9 1015 -45 0
tp @a[tag=!working,scores={spawnpoint=7..}] -987 9 1037 -135 0

function du-in:maps/common

weather rain 100000

#Christmas Spawnpoints#
summon marker -965 9 1037 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -965 9 1015 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -987 9 1015 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -987 9 1037 {Tags:["spawnPoint","team2","mapSpecific"]}

#Christmas Vents#
execute if entity @a[tag=sus] run summon marker -979 8 1010 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -978 8 1024 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -991 9 1032 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -963 9 1035 {Tags:["vent","mapSpecific"]}

summon marker -962 8 1036 {Tags:["ventBlock","mapSpecific"]}
summon marker -992 8 1032 {Tags:["ventBlock","mapSpecific"]}
summon marker -979 7 1023 {Tags:["ventBlock","mapSpecific"]}
summon marker -979 8 1009 {Tags:["ventBlock","mapSpecific"]}

#Christmas Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -976 9 1009 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -959 9 1026 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -976 9 1043 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -993 9 1026 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -976 9 1010 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -992 9 1026 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -976 9 1042 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -960 9 1026 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}