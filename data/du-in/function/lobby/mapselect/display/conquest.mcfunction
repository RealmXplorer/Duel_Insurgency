kill @e[tag=displayItem]

#Crait
summon minecraft:item 228 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:calcite",count:1},CustomNameVisible:1b,CustomName:{text:"Crait",color:"red",bold:true}}
summon marker 230 91 26 {Tags:["mapVote","displayItem","vote1"]} 

#Junkyard
summon minecraft:item 228 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:packed_mud",count:1},CustomNameVisible:1b,CustomName:{text:"Junkyard",color:"yellow",bold:true}}
summon marker 230 91 28 {Tags:["mapVote","displayItem","vote2"]} 

#San Ricardo
summon minecraft:item 228 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:bell",count:1},CustomNameVisible:1b,CustomName:{text:"San Ricardo",color:"gold",bold:true}}
summon marker 230 91 30 {Tags:["mapVote","displayItem","vote3"]} 

#Random
summon minecraft:item 232 92 37 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:lapis_lazuli",count:1,components:{"minecraft:item_model":"du-in:lobby/mystery"}},CustomNameVisible:1b,CustomName:{text:"Random Map",color:"blue",bold:true}}
summon marker 232 91 36 {Tags:["mapVote","displayItem","voteRand"]} 

