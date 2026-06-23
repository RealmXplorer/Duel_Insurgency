tellraw @a [{text:"The ",bold:false,color:gray},{text:"DFC ",bold:true,color:yellow},{text:"map has been chosen!",bold:false,color:gray}]

time set 14000

tp @a[tag=!audience,scores={spawnpoint=0..2}] -4293 16 -2293 135 0
tp @a[tag=!audience,scores={spawnpoint=3..4}] -4303 16 -2293 -135 0
tp @a[tag=!audience,scores={spawnpoint=5..6}] -4303 16 -2303 -45 0
tp @a[tag=!audience,scores={spawnpoint=7..}] -4293 16 -2303 45 0

# tp @a[tag=audience,scores={spawnpoint=0..2}] -4279 23 -2317 45 0
# tp @a[tag=audience,scores={spawnpoint=3..4}] -4279 23 -2279 135 0
# tp @a[tag=audience,scores={spawnpoint=5..6}] -4317 23 -2279 -135 0
# tp @a[tag=audience,scores={spawnpoint=7..}] -4317 23 -2317 -45 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker -4293 16 -2293 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -4303 16 -2293 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -4303 16 -2303 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -4293 16 -2303 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vending Machine
execute positioned -4317 23 -2322 run function du-in:ingame/vending_machine/place/east