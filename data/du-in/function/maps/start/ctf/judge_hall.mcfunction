tellraw @a [{text:"The ",bold:false,color:gray},{text:"Judgement Hall ",bold:true,color:gold},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={team=1}] 251 4 527 180 0
tp @a[scores={team=2}] 252 4 412 0 0

function du-in:ingame/startround/timer/start_timer

summon marker 251 4 527 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 251 4 412 {Tags:["spawnPoint","team2","mapSpecific"]}

summon marker 248 4 527 {Tags:["ctfFlag","redFlag","gameObject","mapSpecific"]}
summon marker 248 4 413 {Tags:["ctfFlag","blueFlag","gameObject","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
summon interaction 253 4 426 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction 242 4 515 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 253 4 425 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 242 4 516 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
