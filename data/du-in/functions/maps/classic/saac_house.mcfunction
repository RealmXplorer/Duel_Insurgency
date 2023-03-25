tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Saac's Literal House ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0..2}] -2001 36 -1985
tp @a[tag=!working,scores={spawnpoint=3..4}] -2003 47 -1984
tp @a[tag=!working,scores={spawnpoint=5..6}] -2013 36 -1947
tp @a[tag=!working,scores={spawnpoint=7..}] -1992 39 -1994

function du-in:maps/common

#Saac Spawnpoints#
summon marker -2001 36 -1985 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2003 47 -1984 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2013 36 -1947 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -1992 39 -1994 {Tags:["spawnPoint","team2","mapSpecific"]}

#Saac Vents#
execute if entity @a[tag=sus] run summon marker -2004 36 -1973 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -1991 47 -1969 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -1991 39 -1977 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -1992 36 -1949 {Tags:["vent","mapSpecific"]}

summon marker -1990 38 -1976 {Tags:["ventBlock","mapSpecific"]}
summon marker -1990 46 -1968 {Tags:["ventBlock","mapSpecific"]}
summon marker -1991 35 -1948 {Tags:["ventBlock","mapSpecific"]}
summon marker -2005 35 -1974 {Tags:["ventBlock","mapSpecific"]}

#Saac Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2000 36 -1965 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1996 39 -1976 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1995 47 -1975 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2007 41 -1979 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -2007 41 -1980 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -2000 36 -1964 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1995 47 -1974 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1996 39 -1977 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}