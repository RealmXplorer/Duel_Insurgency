kill @e[tag=displayItem]

##Left Side
#Moraband
summon minecraft:item 228 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:chiseled_red_sandstone",count:1},CustomNameVisible:1b,CustomName:{text:"Moraband",color:"gold",bold:true}}
execute if entity @a[tag=moraLock,tag=partyLeader] run summon marker 228 92 34 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 34 {Tags:["mapVote","displayItem","vote5"]} 

#The Bowl
summon minecraft:item 228 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:bowl",count:1},CustomNameVisible:1b,CustomName:{text:"The Bowl",color:"green",bold:true}}
execute if entity @a[tag=bowlLock,tag=partyLeader] run summon marker 228 92 32 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 32 {Tags:["mapVote","displayItem","vote4"]} 

#End
summon minecraft:item 228 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:end_stone",count:1},CustomNameVisible:1b,CustomName:{text:"End",color:"dark_purple",bold:true}}
execute if entity @a[tag=endLock,tag=partyLeader] run summon marker 228 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 30 {Tags:["mapVote","displayItem","vote3"]} 

#Nether
summon minecraft:item 228 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:netherrack",count:1},CustomNameVisible:1b,CustomName:{text:"Nether",color:"red",bold:true}}
execute if entity @a[tag=nethLock,tag=partyLeader] run summon marker 228 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 28 {Tags:["mapVote","displayItem","vote2"]} 

#Ziggurat
summon minecraft:item 228 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stone_brick_stairs",count:1},CustomNameVisible:1b,CustomName:{text:"Ziggurat",color:"white",bold:true}}
execute if entity @a[tag=zigLock,tag=partyLeader] run summon marker 228 92 26 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 26 {Tags:["mapVote","displayItem","vote1"]} 

#Lao Gai
summon minecraft:item 228 92 24 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:tuff_bricks",count:1},CustomNameVisible:1b,CustomName:{text:"Lao Gai",color:"white",bold:true}}
execute if entity @a[tag=lgLock,tag=partyLeader] run summon marker 228 92 24 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 24 {Tags:["mapVote","displayItem","vote9"]} 

##Right Side
#Chancel
summon minecraft:item 236 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stone_brick_wall",count:1},CustomNameVisible:1b,CustomName:{text:"Chancel",color:"white",bold:true}}
execute if entity @a[tag=chancelLock,tag=partyLeader] run summon marker 236 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 30 {Tags:["mapVote","displayItem","vote8"]}

#Paz Pool Party
summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:water_bucket",count:1},CustomNameVisible:1b,CustomName:{text:"Paz Pool Party",color:"aqua",bold:true}}
execute if entity @a[tag=pazLock,tag=partyLeader] run summon marker 236 92 28 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 28 {Tags:["mapVote","displayItem","vote7"]} 

#Dunesday
summon minecraft:item 236 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:sand",count:1},CustomNameVisible:1b,CustomName:{text:"Dunesday",color:"yellow",bold:true}}
execute if entity @a[tag=duneLock,tag=partyLeader] run summon marker 236 92 26 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 26 {Tags:["mapVote","displayItem","vote6"]} 


#Random
summon minecraft:item 232 92 37 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:lapis_lazuli",count:1,components:{"minecraft:item_model":"du-in:lobby/mystery"}},CustomNameVisible:1b,CustomName:{text:"Random Map",color:"blue",bold:true}}
summon marker 232 91 36 {Tags:["mapVote","displayItem","voteRand"]} 
