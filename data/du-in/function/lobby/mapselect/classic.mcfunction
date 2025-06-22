#Kill previous instances
kill @e[tag=displayItem]

##Left Side
#San Ricardo
summon minecraft:item 228 92 16 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:sandstone",count:1},CustomNameVisible:1b,CustomName:{text:"San Ricardo",color:"#ffc500",bold:true}}
summon marker 230 91 16 {Tags:["mapVote","displayItem","vote18"]} 
execute if entity @a[tag=ricardoLock,tag=partyLeader] run summon marker 228 92 16 {Tags:["displayItem","voidLocked"]}

#Wild West
summon minecraft:item 228 92 18 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:red_sandstone",count:1},CustomNameVisible:1b,CustomName:{text:"Wild West",color:"#ff8100",bold:true}}
execute if entity @a[tag=escLock,tag=partyLeader] run summon marker 228 92 18 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 18 {Tags:["mapVote","displayItem","vote17"]} 

#Escher
summon minecraft:item 228 92 20 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:smooth_sandstone_stairs",count:1},CustomNameVisible:1b,CustomName:{text:"Escher",color:"yellow",bold:true}}
execute if entity @a[tag=escLock,tag=partyLeader] run summon marker 228 92 20 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 20 {Tags:["mapVote","displayItem","vote16"]} 

#Jermall
summon minecraft:item 228 92 22 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:skeleton_skull",count:1},CustomNameVisible:1b,CustomName:{text:"Jermall",color:"red",bold:true}}
execute if entity @a[tag=jermLock,tag=partyLeader] run summon marker 228 92 22 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 22 {Tags:["mapVote","displayItem","vote13"]} 

#Wishing Star
summon minecraft:item 228 92 24 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:nether_star",count:1},CustomNameVisible:1b,CustomName:{text:"Wishing Star",color:"dark_purple",bold:true}}
execute if entity @a[tag=wsLock,tag=partyLeader] run summon marker 228 92 24 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 24 {Tags:["mapVote","displayItem","vote12"]} 

#Mountain Castle
summon minecraft:item 228 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stone_brick_stairs",count:1},CustomNameVisible:1b,CustomName:{text:"Mountain Castle",color:"gray",bold:true}}
execute if entity @a[tag=mcLock,tag=partyLeader] run summon marker 228 92 26 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 26 {Tags:["mapVote","displayItem","vote1"]} 

#The Hive
summon minecraft:item 228 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:honeycomb",count:1},CustomNameVisible:1b,CustomName:{text:"The Hive",color:"gold",bold:true}}
execute if entity @a[tag=hiveLock,tag=partyLeader] run summon marker 228 92 28 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 28 {Tags:["mapVote","displayItem","vote2"]} 

#Desert Arena
summon minecraft:item 228 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:dead_bush",count:1},CustomNameVisible:1b,CustomName:{text:"Desert Arena",color:"yellow",bold:true}}
execute if entity @a[tag=daLock,tag=partyLeader] run summon marker 228 92 30 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 30 {Tags:["mapVote","displayItem","vote3"]} 

#The Caves
summon minecraft:item 228 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:diamond",count:1},CustomNameVisible:1b,CustomName:{text:"The Caves",color:"aqua",bold:true}}
execute if entity @a[tag=cavesLock,tag=partyLeader] run summon marker 228 92 32 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 32 {Tags:["mapVote","displayItem","vote4"]} 

#Mustafar
summon minecraft:item 228 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:polished_blackstone_bricks",count:1},CustomNameVisible:1b,CustomName:{text:"Mustafar",color:red,bold:true}}
execute if entity @a[tag=mustafarLock,tag=partyLeader] run summon marker 228 92 34 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 34 {Tags:["mapVote","displayItem","vote5"]} 


##Right Side
#Harvest
summon minecraft:item 236 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:jack_o_lantern",count:1},CustomNameVisible:1b,CustomName:{text:"Harvest",color:"#e06e16",bold:true}}
execute if entity @a[tag=harvestLock,tag=partyLeader] run summon marker 236 92 34 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 34 {Tags:["mapVote","displayItem","vote10"]} 

#Maze
summon minecraft:item 236 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:spruce_leaves",count:1},CustomNameVisible:1b,CustomName:{text:"Maze",color:"dark_green",bold:true}}
execute if entity @a[tag=mazeLock,tag=partyLeader] run summon marker 236 92 32 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 32 {Tags:["mapVote","displayItem","vote9"]} 

#Dust 2
summon minecraft:item 236 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:smooth_sandstone",count:1},CustomNameVisible:1b,CustomName:{text:"Dust 2",color:"yellow",bold:true}}
execute if entity @a[tag=d2Lock,tag=partyLeader] run summon marker 236 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 30 {Tags:["mapVote","displayItem","vote8"]} 

#Arena(s)
execute unless score #main lobbyTheme matches 1..4 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:smooth_quartz",count:1},CustomNameVisible:1b,CustomName:{text:"The Arena",color:"gray",bold:true}}

execute if score #main lobbyTheme matches 1 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:deepslate",count:1},CustomNameVisible:1b,CustomName:{text:"Haunted Arena",color:"gray",bold:true}}

execute if score #main lobbyTheme matches 2 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:spruce_log",count:1},CustomNameVisible:1b,CustomName:{text:"Fall Arena",color:"gray",bold:true}}

execute if score #main lobbyTheme matches 3 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:campfire",count:1},CustomNameVisible:1b,CustomName:{text:"Cozy Arena",color:"gray",bold:true}}

execute if score #main lobbyTheme matches 4 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:birch_log",count:1},CustomNameVisible:1b,CustomName:{text:"Easter Arena",color:"gray",bold:true}}
#No Void Lock on Arena
summon marker 234 91 28 {Tags:["mapVote","displayItem","vote7"]} 

#Mt. Ebbot
summon minecraft:item 236 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:grass_block",count:1},CustomNameVisible:1b,CustomName:{text:"Mt. Ebbot",color:"green",bold:true}}
execute if entity @a[tag=ebbotLock,tag=partyLeader] run summon marker 236 92 26 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 26 {Tags:["mapVote","displayItem","vote6"]} 

#Mirage
summon minecraft:item 236 92 24 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stripped_warped_stem",count:1},CustomNameVisible:1b,CustomName:{text:"Mirage",color:"blue",bold:true}}
execute if entity @a[tag=mirageLock,tag=partyLeader] run summon marker 236 92 24 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 24 {Tags:["mapVote","displayItem","vote11"]} 

#Haunted House
summon minecraft:item 236 92 22 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:cobweb",count:1},CustomNameVisible:1b,CustomName:{text:"Haunted House",color:"red",bold:true}}
execute if entity @a[tag=hauntedLock,tag=partyLeader] run summon marker 236 92 22 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 22 {Tags:["mapVote","displayItem","vote14"]} 

#Saac House
summon minecraft:item 236 92 20 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:other/kickstart2"}},CustomNameVisible:1b,CustomName:{text:"Saac's House",color:"yellow",bold:true}}
execute if entity @a[tag=shLock,tag=partyLeader] run summon marker 236 92 20 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 20 {Tags:["mapVote","displayItem","vote15"]} 

#Kiln of the First Flame
summon minecraft:item 236 92 18 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:item_model":"du-in:weapons/coiled_sword"}},CustomNameVisible:1b,CustomName:{text:"First Flame",color:"#e7d8c1",bold:true}}
summon marker 234 91 18 {Tags:["mapVote","displayItem","vote19"]} 
execute if entity @a[tag=flameLock,tag=partyLeader] run summon marker 236 92 18 {Tags:["displayItem","voidLocked"]}

#Random
summon minecraft:item 232 92 37 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:lapis_lazuli",count:1,components:{"minecraft:item_model":"du-in:lobby/mystery"}},CustomNameVisible:1b,CustomName:{text:"Random Map",color:"blue",bold:true}}
summon marker 232 91 36 {Tags:["mapVote","displayItem","voteRand"]} 
