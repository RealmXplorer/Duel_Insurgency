tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Escher ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={spawnpoint=0..2}] 675 12 -621 -56 7
tp @a[tag=!working,scores={spawnpoint=3..4}] 691 20 -620 -20 8
tp @a[tag=!working,scores={spawnpoint=5..6}] 692 14 -601 111 12
tp @a[tag=!working,scores={spawnpoint=7..}] 673 8 -608 -85 1

function du-in:maps/common

#Spawnpoints#
summon marker 675 12 -621 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 691 20 -620 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 692 14 -601 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 673 8 -608 {Tags:["spawnPoint","team2","mapSpecific"]}

#NO VENTS#

#NO VENDING MACHINES#