kill @e[tag=displayItem]

summon area_effect_cloud 228 92 34 {Tags:["displayItem"],Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"Mustafar","color":"red","bold":true}'}
summon minecraft:item 228 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:polished_blackstone_bricks",Count:1b}}

summon area_effect_cloud 228 92 32 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"The Caves\",\"color\":\"aqua\",\"bold\":true}"}
summon minecraft:item 228 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:diamond",Count:1b}}

summon area_effect_cloud 228 92 30 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Desert Arena\",\"color\":\"yellow\",\"bold\":true}"}
summon minecraft:item 228 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:dead_bush",Count:1b}}

summon area_effect_cloud 228 92 26 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Mountain Castle\",\"color\":\"gray\",\"bold\":true}"}
summon minecraft:item 228 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stone_brick_stairs",Count:1b}}

summon area_effect_cloud 228 92 28 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"The Hive\",\"color\":\"gold\",\"bold\":true}"}
summon minecraft:item 228 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:honey_block",Count:1b}}

summon area_effect_cloud 228 92 24 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Better End\",\"color\":\"dark_purple\",\"bold\":true}"}
summon minecraft:item 228 92 24 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:end_stone",Count:1b}}

summon area_effect_cloud 228 92 22 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Saac's House\",\"color\":\"yellow\",\"bold\":true}"}
summon minecraft:item 228 92 22 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:smooth_quartz",Count:1b}}

summon area_effect_cloud 236 92 34 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Cliffside Asylum\",\"color\":\"red\",\"bold\":true}"}
summon minecraft:item 236 92 34 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:iron_block",Count:1b}}

summon area_effect_cloud 236 92 32 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Maze\",\"color\":\"dark_green\",\"bold\":true}"}
summon minecraft:item 236 92 32 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:spruce_leaves",Count:1b}}

summon area_effect_cloud 236 92 30 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Dust 2\",\"color\":\"yellow\",\"bold\":true}"}
summon minecraft:item 236 92 30 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:smooth_sandstone",Count:1b}}

execute unless score #main lobbyTheme matches 1..4 run summon area_effect_cloud 236 92 28 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"The Arena\",\"color\":\"gray\",\"bold\":true}"}
execute unless score #main lobbyTheme matches 1..4 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:smooth_quartz",Count:1b}}

execute if score #main lobbyTheme matches 1 run summon area_effect_cloud 236 92 28 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Haunted Arena\",\"color\":\"gray\",\"bold\":true}"}
execute if score #main lobbyTheme matches 1 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:deepslate",Count:1b}}

execute if score #main lobbyTheme matches 2 run summon area_effect_cloud 236 92 28 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Fall Arena\",\"color\":\"gray\",\"bold\":true}"}
execute if score #main lobbyTheme matches 2 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:spruce_log",Count:1b}}

execute if score #main lobbyTheme matches 3 run summon area_effect_cloud 236 92 28 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Cozy Arena\",\"color\":\"gray\",\"bold\":true}"}
execute if score #main lobbyTheme matches 3 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:campfire",Count:1b}}

execute if score #main lobbyTheme matches 4 run summon area_effect_cloud 236 92 28 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Easter Arena\",\"color\":\"gray\",\"bold\":true}"}
execute if score #main lobbyTheme matches 4 run summon minecraft:item 236 92 28 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:birch_log",Count:1b}}

summon area_effect_cloud 236 92 26 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Mt. Ebbot\",\"color\":\"green\",\"bold\":true}"}
summon minecraft:item 236 92 26 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:grass_block",Count:1b}}

summon area_effect_cloud 236 92 24 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Mirage\",\"color\":\"red\",\"bold\":true}"}
summon minecraft:item 236 92 24 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:stripped_warped_stem",Count:1b}}

summon area_effect_cloud 236 92 22 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Chess\",\"color\":\"red\",\"bold\":true}"}
summon minecraft:item 236 92 22 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:red_nether_bricks",Count:1b}}

#Harvest
summon area_effect_cloud 236 92 20 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Harvest\",\"color\":\"#e06e16\",\"bold\":true}"}
summon minecraft:item 236 92 20 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:jack_o_lantern",Count:1b}}

#Ring
#summon area_effect_cloud 228 92 20 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"The Ring\",\"color\":\"red\",\"bold\":true}"}
#summon minecraft:item 228 92 20 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:red_wool",Count:1b}}

summon area_effect_cloud 232 92 37 {Duration:2147483647,Tags:["displayItem"],CustomNameVisible:1b,CustomName:"{\"text\":\"Random Map\",\"color\":\"blue\",\"bold\":true}"}
summon minecraft:item 232 92 37 {NoGravity:1b,Age:-32768,Health:99999,PickupDelay:32767,Tags:["mapLabel","displayItem"],Item:{id:"minecraft:lapis_block",Count:1b}}

#228 92 20