kill @e[tag=displayItem]

#Crait
summon minecraft:item 228 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:calcite",count:1},CustomNameVisible:1b,CustomName:{text:"Crait",color:"red",bold:true}}
summon marker 230 91 26 {Tags:["mapVote","displayItem","vote1"],UUID:[I;-927512646,-1502460517,-1439794930,1641440511]}
scoreboard players set c8b747ba-a672-459b-aa2e-790e61d664ff mapVote 1 

#Junkyard
summon minecraft:item 228 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:packed_mud",count:1},CustomNameVisible:1b,CustomName:{text:"Junkyard",color:"yellow",bold:true}}
summon marker 230 91 28 {Tags:["mapVote","displayItem","vote2"],UUID:[I;740570849,-985053000,-1334328049,-1959660061]} 
scoreboard players set 2c2436e1-c549-48b8-b077-c50f8b31f5e3 mapVote 2

#San Ricardo
summon minecraft:item 228 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:bell",count:1},CustomNameVisible:1b,CustomName:{text:"San Ricardo",color:"gold",bold:true}}
summon marker 230 91 30 {Tags:["mapVote","displayItem","vote3"],UUID:[I;-2047481173,220610565,-1481168053,1042943621]} 
scoreboard players set 85f5eaab-0d26-4005-a7b7-2b4b3e2a0e85 mapVote 3

#Random
summon minecraft:item 232 92 37 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:lapis_lazuli",count:1,components:{"minecraft:item_model":"du-in:lobby/mystery"}},CustomNameVisible:1b,CustomName:{text:"Random Map",color:"blue",bold:true}}
summon marker 232 91 36 {Tags:["mapVote","displayItem","voteRand"],UUID:[I;-318129313,1463701484,-1914264091,-1764804147]} 
scoreboard players set ed09bb5f-573e-4fec-8de6-a5e596cf39cd mapVote -1

