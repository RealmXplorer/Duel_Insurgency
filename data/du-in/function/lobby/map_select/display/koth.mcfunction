kill @e[tag=displayItem]

##Left Side
#Moraband
summon minecraft:item 228 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:chiseled_red_sandstone",count:1},CustomNameVisible:1b,CustomName:{text:"Moraband",color:"gold",bold:true}}
execute if entity @a[tag=moraLock,tag=partyLeader] run summon marker 228 92 34 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 34 {Tags:["mapVote","displayItem","vote5"],UUID:[I;-1708761875,-354791871,-1813292010,-282381842]} 
scoreboard players set 9a265ced-eada-4e41-93eb-5c16ef2b31ee mapVote 5

#The Bowl
summon minecraft:item 228 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:bowl",count:1},CustomNameVisible:1b,CustomName:{text:"The Bowl",color:"green",bold:true}}
execute if entity @a[tag=bowlLock,tag=partyLeader] run summon marker 228 92 32 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 32 {Tags:["mapVote","displayItem","vote4"],UUID:[I;-1195307283,-448969431,-1541256328,-1598849685]} 
scoreboard players set b8c10eed-e53d-4529-a422-4b78a0b37d6b mapVote 4
#End
summon minecraft:item 228 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:end_stone",count:1},CustomNameVisible:1b,CustomName:{text:"End",color:"dark_purple",bold:true}}
execute if entity @a[tag=endLock,tag=partyLeader] run summon marker 228 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 30 {Tags:["mapVote","displayItem","vote3"],UUID:[I;-2047481173,220610565,-1481168053,1042943621]} 
scoreboard players set 85f5eaab-0d26-4005-a7b7-2b4b3e2a0e85 mapVote 3

#Nether
summon minecraft:item 228 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:netherrack",count:1},CustomNameVisible:1b,CustomName:{text:"Nether",color:"red",bold:true}}
execute if entity @a[tag=nethLock,tag=partyLeader] run summon marker 228 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 28 {Tags:["mapVote","displayItem","vote2"],UUID:[I;740570849,-985053000,-1334328049,-1959660061]} 
scoreboard players set 2c2436e1-c549-48b8-b077-c50f8b31f5e3 mapVote 2

#Ziggurat
summon minecraft:item 228 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stone_brick_stairs",count:1},CustomNameVisible:1b,CustomName:{text:"Ziggurat",color:"white",bold:true}}
execute if entity @a[tag=zigLock,tag=partyLeader] run summon marker 228 92 26 {Tags:["displayItem","voidLocked"]}
summon marker 230 91 26 {Tags:["mapVote","displayItem","vote1"],UUID:[I;-927512646,-1502460517,-1439794930,1641440511]}
scoreboard players set c8b747ba-a672-459b-aa2e-790e61d664ff mapVote 1 

##Right Side
#Chancel
summon minecraft:item 236 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stone_brick_wall",count:1},CustomNameVisible:1b,CustomName:{text:"Chancel",color:"white",bold:true}}
execute if entity @a[tag=chancelLock,tag=partyLeader] run summon marker 236 92 30 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 30 {Tags:["mapVote","displayItem","vote8"],UUID:[I;-352472934,501498921,-1894744821,850063575]}
scoreboard players set eafdb09a-1de4-4429-8f10-7d0b32aaf0d7 mapVote 8

#Paz Pool Party
summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:water_bucket",count:1},CustomNameVisible:1b,CustomName:{text:"Paz Pool Party",color:"aqua",bold:true}}
execute if entity @a[tag=pazLock,tag=partyLeader] run summon marker 236 92 28 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 28 {Tags:["mapVote","displayItem","vote7"],UUID:[I;281536688,1953907886,-1537924193,2112671468]} 
scoreboard players set 10c7e8b0-7476-44ae-a455-239f7decceec mapVote 7

#Dunesday
summon minecraft:item 236 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:sand",count:1},CustomNameVisible:1b,CustomName:{text:"Dunesday",color:"yellow",bold:true}}
execute if entity @a[tag=duneLock,tag=partyLeader] run summon marker 236 92 26 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 26 {Tags:["mapVote","displayItem","vote6"],UUID:[I;-427151536,-947632622,-2091672086,-724927405]} 
scoreboard players set e68a2f50-c784-4612-8353-9dead4ca7c53 mapVote 6

#Lao Gai
summon minecraft:item 236 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:tuff_bricks",count:1},CustomNameVisible:1b,CustomName:{text:"Lao Gai",color:"dark_green",bold:true}}
execute if entity @a[tag=lgLock,tag=partyLeader] run summon marker 236 92 32 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 32 {Tags:["mapVote","displayItem","vote9"],UUID:[I;-863499413,2145536198,-1793359234,-905015544]} 
scoreboard players set cc880b6b-7fe2-48c6-951b-827eca0e8f08 mapVote 9

#City of Tears
summon minecraft:item 236 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:reinforced_deepslate",count:1},CustomNameVisible:1b,CustomName:{text:"City of Tears",color:"dark_blue",bold:true}}
execute if entity @a[tag=ctLock,tag=partyLeader] run summon marker 236 92 34 {Tags:["displayItem","voidLocked"]}
summon marker 234 91 34 {Tags:["mapVote","displayItem","vote10"],UUID:[I;-596993721,303188126,-2113129743,1754652778]} 
scoreboard players set dc6a9947-1212-489e-820c-32f16895e06a mapVote 10

#Random
summon minecraft:item 232 92 37 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:lapis_lazuli",count:1,components:{"minecraft:item_model":"du-in:lobby/mystery"}},CustomNameVisible:1b,CustomName:{text:"Random Map",color:"blue",bold:true}}
summon marker 232 91 36 {Tags:["mapVote","displayItem","voteRand"],UUID:[I;-318129313,1463701484,-1914264091,-1764804147]} 
scoreboard players set ed09bb5f-573e-4fec-8de6-a5e596cf39cd mapVote -1