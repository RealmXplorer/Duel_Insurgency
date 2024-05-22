kill @e[tag=displayItem]

#Crait
summon area_effect_cloud 228 92 26 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Crait\",\"color\":\"red\",\"bold\":true}"}
summon minecraft:item 228 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:calcite",Count:1b}}
summon marker 230 91 26 {Tags:["mapVote","displayItem","vote1"]} 

#Junkyard
summon area_effect_cloud 228 92 28 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Junkyard\",\"color\":\"yellow\",\"bold\":true}"}
summon minecraft:item 228 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:packed_mud",Count:1b}}
summon marker 230 91 28 {Tags:["mapVote","displayItem","vote2"]} 

#San Ricardo
summon area_effect_cloud 228 92 30 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"San Ricardo\",\"color\":\"gold\",\"bold\":true}"}
summon minecraft:item 228 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:sandstone",Count:1b}}
summon marker 230 91 30 {Tags:["mapVote","displayItem","vote3"]} 

#Random
summon area_effect_cloud 232 92 37 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Random Map\",\"color\":\"blue\",\"bold\":true}"}
summon minecraft:item 232 92 37 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:lapis_block",Count:1b}}
summon marker 232 91 36 {Tags:["mapVote","displayItem","voteRand"]} 

