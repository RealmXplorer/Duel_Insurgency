tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0..2}] 920 10 501 -90 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 942 10 501 -180 0
tp @a[tag=!working,scores={spawnpoint=5..6}] 942 10 479 90 0
tp @a[tag=!working,scores={spawnpoint=7..}] 920 10 479 0 0

function du-in:maps/start/common

#Default Spawnpoints#
summon marker 920 10 501 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 942 10 501 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 942 10 479 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 920 10 479 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 944 10 499 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 916 10 495 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 929 9 488 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 929 10 474 {Tags:["vent","mapSpecific"]}

summon interaction 928 9 473 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 945 9 500 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 928 8 487 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 945 9 500 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}

#Default Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 931 10 507 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 948 10 490 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 931 10 473 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 914 10 490 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 931 10 506 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 947 10 490 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 931 10 474 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 915 10 490 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#execute if entity @a[scores={kit=1000}] run 