kill @e[tag=displayItem]

##Left Side
#Moraband
summon area_effect_cloud 228 92 34 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Moraband\",\"color\":\"gold\",\"bold\":true}"}
summon minecraft:item 228 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:chiseled_red_sandstone",Count:1b}}
execute if entity @a[tag=moraLock,tag=partyLeader] run summon marker 228 92 34 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 34 {Tags:["mapVote","displayItem","vote5"]} 

#The Bowl
summon area_effect_cloud 228 92 32 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"The Bowl\",\"color\":\"green\",\"bold\":true}"}
summon minecraft:item 228 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:bowl",Count:1b}}
execute if entity @a[tag=bowlLock,tag=partyLeader] run summon marker 228 92 32 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 32 {Tags:["mapVote","displayItem","vote4"]} 

#End
summon area_effect_cloud 228 92 30 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"End\",\"color\":\"dark_purple\",\"bold\":true}"}
summon minecraft:item 228 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:end_stone",Count:1b}}
execute if entity @a[tag=endLock,tag=partyLeader] run summon marker 228 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 30 {Tags:["mapVote","displayItem","vote3"]} 

#Nether
summon area_effect_cloud 228 92 28 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Nether\",\"color\":\"red\",\"bold\":true}"}
summon minecraft:item 228 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:netherrack",Count:1b}}
execute if entity @a[tag=nethLock,tag=partyLeader] run summon marker 228 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 28 {Tags:["mapVote","displayItem","vote2"]} 

#Ziggurat
summon area_effect_cloud 228 92 26 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Ziggurat\",\"color\":\"white\",\"bold\":true}"}
summon minecraft:item 228 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stone_brick_stairs",Count:1b}}
execute if entity @a[tag=zigLock,tag=partyLeader] run summon marker 228 92 26 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 26 {Tags:["mapVote","displayItem","vote1"]} 

##Right Side
#Chancel
summon area_effect_cloud 236 92 30 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Chancel\",\"color\":\"white\",\"bold\":true}"}
summon minecraft:item 236 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stone_brick_wall",Count:1b}}
execute if entity @a[tag=chancelLock,tag=partyLeader] run summon marker 236 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 30 {Tags:["mapVote","displayItem","vote8"]}

#Pride Rock
summon area_effect_cloud 236 92 28 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Pride Rock\",\"color\":\"gray\",\"bold\":true}"}
summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:dead_tube_coral",Count:1b}}
execute if entity @a[tag=prideLock,tag=partyLeader] run summon marker 236 92 28 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 28 {Tags:["mapVote","displayItem","vote7"]} 

#Dunesday
summon area_effect_cloud 236 92 26 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Dunesday\",\"color\":\"yellow\",\"bold\":true}"}
summon minecraft:item 236 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:sand",Count:1b}}
execute if entity @a[tag=duneLock,tag=partyLeader] run summon marker 236 92 26 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 26 {Tags:["mapVote","displayItem","vote6"]} 


#Random
summon area_effect_cloud 232 92 37 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Random Map\",\"color\":\"blue\",\"bold\":true}"}
summon minecraft:item 232 92 37 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:lapis_block",Count:1b}}
summon marker 232 91 36 {Tags:["mapVote","displayItem","voteRand"]} 
