#Kill previous instances
kill @e[tag=displayItem]

##Left Side
#San Ricardo
summon minecraft:item 228 92 16 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:sandstone",count:1},CustomNameVisible:1b,CustomName:{text:"San Ricardo",color:"#ffc500",bold:true}}
execute if entity @a[tag=ricardoLock,tag=partyLeader] run summon marker 228 92 16 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 16 {Tags:["mapVote","displayItem","vote18"],UUID:[I;1262021245,1145981575,-2127218026,-814003797]}
scoreboard players set 4b38ea7d-444e-4a87-8135-3a96cf7b49ab mapVote 18 

#Wild West
summon minecraft:item 228 92 18 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:red_sandstone",count:1},CustomNameVisible:1b,CustomName:{text:"Wild West",color:"#ff8100",bold:true}}
execute if entity @a[tag=escLock,tag=partyLeader] run summon marker 228 92 18 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 18 {Tags:["mapVote","displayItem","vote17"],UUID:[I;-1319915006,354370572,-1357722897,796909361]} 
scoreboard players set b153b202-151f-440c-af12-caef2f7fdf31 mapVote 17

#Escher
summon minecraft:item 228 92 20 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:smooth_sandstone_stairs",count:1},CustomNameVisible:1b,CustomName:{text:"Escher",color:"yellow",bold:true}}
execute if entity @a[tag=escLock,tag=partyLeader] run summon marker 228 92 20 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 20 {Tags:["mapVote","displayItem","vote16"],UUID:[I;2047621157,-638106822,-2044134759,-482702902]} 
scoreboard players set 7a0c3825-d9f7-433a-8628-fa99e33a89ca mapVote 16

#Jermall
summon minecraft:item 228 92 22 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:skeleton_skull",count:1},CustomNameVisible:1b,CustomName:{text:"Jermall",color:"red",bold:true}}
execute if entity @a[tag=jermLock,tag=partyLeader] run summon marker 228 92 22 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 22 {Tags:["mapVote","displayItem","vote13"],UUID:[I;-481377626,1360807215,-1231668746,-1866816762]} 
scoreboard players set e34ec2a6-511c-452f-b696-39f690baa306 mapVote 13

#Wishing Star
summon minecraft:item 228 92 24 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:nether_star",count:1},CustomNameVisible:1b,CustomName:{text:"Wishing Star",color:"dark_purple",bold:true}}
execute if entity @a[tag=wsLock,tag=partyLeader] run summon marker 228 92 24 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 24 {Tags:["mapVote","displayItem","vote12"],UUID:[I;722563579,-1843835528,-1453013684,267961589]}
scoreboard players set 2b1171fb-9219-4d78-a964-c54c0ff8c4f5 mapVote 12

#Mountain Castle
summon minecraft:item 228 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stone_brick_stairs",count:1},CustomNameVisible:1b,CustomName:{text:"Mountain Castle",color:"gray",bold:true}}
execute if entity @a[tag=mcLock,tag=partyLeader] run summon marker 228 92 26 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 26 {Tags:["mapVote","displayItem","vote1"],UUID:[I;-927512646,-1502460517,-1439794930,1641440511]}
scoreboard players set c8b747ba-a672-459b-aa2e-790e61d664ff mapVote 1 

#The Hive
summon minecraft:item 228 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:honeycomb",count:1},CustomNameVisible:1b,CustomName:{text:"The Hive",color:"gold",bold:true}}
execute if entity @a[tag=hiveLock,tag=partyLeader] run summon marker 228 92 28 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 28 {Tags:["mapVote","displayItem","vote2"],UUID:[I;740570849,-985053000,-1334328049,-1959660061]} 
scoreboard players set 2c2436e1-c549-48b8-b077-c50f8b31f5e3 mapVote 2

#Desert Arena
summon minecraft:item 228 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:dead_bush",count:1},CustomNameVisible:1b,CustomName:{text:"Desert Arena",color:"yellow",bold:true}}
execute if entity @a[tag=daLock,tag=partyLeader] run summon marker 228 92 30 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 30 {Tags:["mapVote","displayItem","vote3"],UUID:[I;-2047481173,220610565,-1481168053,1042943621]} 
scoreboard players set 85f5eaab-0d26-4005-a7b7-2b4b3e2a0e85 mapVote 3

#The Caves
execute unless score #main lobbyTheme matches 1 run summon minecraft:item 228 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:diamond",count:1},CustomNameVisible:1b,CustomName:{text:"The Caves",color:"aqua",bold:true}}
execute if score #main lobbyTheme matches 1 run summon minecraft:item 228 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:amethyst_shard",count:1},CustomNameVisible:1b,CustomName:{text:"Haunted Caves",color:"#a72cc0",bold:true}}
execute if entity @a[tag=cavesLock,tag=partyLeader] run summon marker 228 92 32 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 32 {Tags:["mapVote","displayItem","vote4"],UUID:[I;-1195307283,-448969431,-1541256328,-1598849685]} 
scoreboard players set b8c10eed-e53d-4529-a422-4b78a0b37d6b mapVote 4

#Mustafar
summon minecraft:item 228 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:polished_blackstone_bricks",count:1},CustomNameVisible:1b,CustomName:{text:"Mustafar",color:red,bold:true}}
execute if entity @a[tag=mustafarLock,tag=partyLeader] run summon marker 228 92 34 {Tags:["displayItem","voidLocked"]} 
summon marker 230 91 34 {Tags:["mapVote","displayItem","vote5"],UUID:[I;-1708761875,-354791871,-1813292010,-282381842]} 
scoreboard players set 9a265ced-eada-4e41-93eb-5c16ef2b31ee mapVote 5

##Right Side
#Harvest
summon minecraft:item 236 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:jack_o_lantern",count:1},CustomNameVisible:1b,CustomName:{text:"Harvest",color:"#e06e16",bold:true}}
execute if entity @a[tag=harvestLock,tag=partyLeader] run summon marker 236 92 34 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 34 {Tags:["mapVote","displayItem","vote10"],UUID:[I;-596993721,303188126,-2113129743,1754652778]} 
scoreboard players set dc6a9947-1212-489e-820c-32f16895e06a mapVote 10

#Maze
summon minecraft:item 236 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:spruce_leaves",count:1},CustomNameVisible:1b,CustomName:{text:"Maze",color:"dark_green",bold:true}}
execute if entity @a[tag=mazeLock,tag=partyLeader] run summon marker 236 92 32 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 32 {Tags:["mapVote","displayItem","vote9"],UUID:[I;-863499413,2145536198,-1793359234,-905015544]} 
scoreboard players set cc880b6b-7fe2-48c6-951b-827eca0e8f08 mapVote 9

#Dust 2
summon minecraft:item 236 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:smooth_sandstone",count:1},CustomNameVisible:1b,CustomName:{text:"Dust 2",color:"yellow",bold:true}}
execute if entity @a[tag=d2Lock,tag=partyLeader] run summon marker 236 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 30 {Tags:["mapVote","displayItem","vote8"],UUID:[I;-352472934,501498921,-1894744821,850063575]}
scoreboard players set eafdb09a-1de4-4429-8f10-7d0b32aaf0d7 mapVote 8

#Arena(s)
execute unless score #main lobbyTheme matches 1..4 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:smooth_quartz",count:1},CustomNameVisible:1b,CustomName:{text:"The Arena",color:"gray",bold:true}}

execute if score #main lobbyTheme matches 1 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:deepslate",count:1},CustomNameVisible:1b,CustomName:{text:"Haunted Arena",color:"gray",bold:true}}

execute if score #main lobbyTheme matches 2 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:spruce_log",count:1},CustomNameVisible:1b,CustomName:{text:"Fall Arena",color:"gray",bold:true}}

execute if score #main lobbyTheme matches 3 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:campfire",count:1},CustomNameVisible:1b,CustomName:{text:"Cozy Arena",color:"gray",bold:true}}

execute if score #main lobbyTheme matches 4 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:birch_log",count:1},CustomNameVisible:1b,CustomName:{text:"Easter Arena",color:"gray",bold:true}}
#No Void Lock on Arena
summon marker 234 91 28 {Tags:["mapVote","displayItem","vote7"],UUID:[I;281536688,1953907886,-1537924193,2112671468]} 
scoreboard players set 10c7e8b0-7476-44ae-a455-239f7decceec mapVote 7

#Mt. Ebbot
summon minecraft:item 236 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:grass_block",count:1},CustomNameVisible:1b,CustomName:{text:"Mt. Ebbot",color:"green",bold:true}}
execute if entity @a[tag=ebbotLock,tag=partyLeader] run summon marker 236 92 26 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 26 {Tags:["mapVote","displayItem","vote6"],UUID:[I;-427151536,-947632622,-2091672086,-724927405]} 
scoreboard players set e68a2f50-c784-4612-8353-9dead4ca7c53 mapVote 6

#Mirage
summon minecraft:item 236 92 24 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stripped_warped_stem",count:1},CustomNameVisible:1b,CustomName:{text:"Mirage",color:"blue",bold:true}}
execute if entity @a[tag=mirageLock,tag=partyLeader] run summon marker 236 92 24 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 24 {Tags:["mapVote","displayItem","vote11"],UUID:[I;-869887723,1250511119,-1736069069,1539211464]} 
scoreboard players set cc269115-4a89-490f-9885-b0335bbe80c8 mapVote 11

#Haunted House
summon minecraft:item 236 92 22 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:cobweb",count:1},CustomNameVisible:1b,CustomName:{text:"Haunted House",color:"red",bold:true}}
execute if entity @a[tag=hauntedLock,tag=partyLeader] run summon marker 236 92 22 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 22 {Tags:["mapVote","displayItem","vote14"],UUID:[I;-2049053853,-1839183922,-1274765403,808443949]} 
scoreboard players set 85ddeb63-9260-47ce-b404-9fa5302fe02d mapVote 14

#Saac House
summon minecraft:item 236 92 20 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:other/kickstart2"}},CustomNameVisible:1b,CustomName:{text:"Saac's House",color:"yellow",bold:true}}
execute if entity @a[tag=shLock,tag=partyLeader] run summon marker 236 92 20 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 20 {Tags:["mapVote","displayItem","vote15"],UUID:[I;-74314410,-1181792283,-2014592071,-379972832]} 
scoreboard players set fb920d56-b98f-47e5-87eb-c3b9e95a1320 mapVote 15

#Kiln of the First Flame
summon minecraft:item 236 92 18 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:item_model":"du-in:weapons/coiled_sword"}},CustomNameVisible:1b,CustomName:{text:"First Flame",color:"#e7d8c1",bold:true}}
execute if entity @a[tag=flameLock,tag=partyLeader] run summon marker 236 92 18 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 18 {Tags:["mapVote","displayItem","vote19"],UUID:[I;1250260506,1850097762,-1885242703,-1538601233]} 
scoreboard players set 4a85761a-6e46-4062-8fa1-7ab1a44aceef mapVote 19

#Random
summon minecraft:item 232 92 37 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:lapis_lazuli",count:1,components:{"minecraft:item_model":"du-in:lobby/mystery"}},CustomNameVisible:1b,CustomName:{text:"Random Map",color:"blue",bold:true}}
summon marker 232 91 36 {Tags:["mapVote","displayItem","voteRand"],UUID:[I;-318129313,1463701484,-1914264091,-1764804147]} 
scoreboard players set ed09bb5f-573e-4fec-8de6-a5e596cf39cd mapVote -1
