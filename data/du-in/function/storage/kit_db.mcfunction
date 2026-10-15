#Building Storage Info:
#name: name of folder to be used for kit
#num: unique kit number
#gender: what kind of underwear the kit will get if hit by Darwin's ability
    #1 = male, 2 = female, 3 = armless male, 4 = armless female
#group: which category in kit menu they belong to.
#pack: Which datapack this kit belongs to.

#Slots are dynamically created

#Empty "kit.list" so it doesn't duplicate.
data remove storage du-in:kit list
data remove storage du-in:random pool
data remove storage du-in:random unlock_pool
data modify storage du-in:groups group set value {}
data modify storage du-in:main themes set value []

#Create Group icon definitions
# Legendary (unlock)
data modify storage du-in:group_icons unlock set value {name:'{"text":"Legendary Characters","color":"gold","bold":true}',model:'"du-in:lobby/crown"'}
data modify storage du-in:group_icons minecraft set value {name:'{"text":"Minecraft","color":"green","bold":true}',model:'"oak_log"'}
data modify storage du-in:group_icons undertale set value {name:'{"text":"Undertale / Deltarune","color":"red","bold":true}',model:'"du-in:abilities/chara"'}
data modify storage du-in:group_icons starwars set value {name:'{"text":"Star Wars","color":"white","bold":true}',model:'"du-in:abilities/yoda"'}
data modify storage du-in:group_icons zootopia set value {name:'{"text":"Zootopia","color":"light_purple","bold":true}',model:'"du-in:abilities/badge"'}
data modify storage du-in:group_icons last_wish set value {name:'{"text":"The Last Wish","color":"dark_blue","bold":true}',model:'"du-in:abilities/asriel"'}
data modify storage du-in:group_icons fnaf set value {name:'{"text":"Five Nights at Freddy\'s","color":"#824308","bold":true}',model:'"lantern"'}
data modify storage du-in:group_icons grab_bag set value {name:'{"text":"Grab Bag","color":"dark_green","bold":true}',model:'"bundle"'}

##CREATE CHARACTERS DATABASE
#Legendary
data modify storage du-in:kit list append value {"name":"saac","id":1000,"gender":1,"group":"unlock","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"impostor","id":1002,"gender":1,"group":"unlock","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"runza","id":1004,"gender":1,"group":"unlock","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"jerma","id":1003,"gender":1,"group":"unlock","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"paz","id":1001,"gender":2,"group":"unlock","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"jack_black","id":1005,"gender":1,"group":"unlock","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"beetlejuice","id":1006,"gender":1,"group":"unlock","pack":"du-in"}

#Minecraft
data modify storage du-in:kit list append value {"name":"villager","id":8,"gender":1,"group":"minecraft","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"player","id":7,"gender":1,"group":"minecraft","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"golem","id":6,"gender":1,"group":"minecraft","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"creeper","id":4,"gender":1,"group":"minecraft","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"slime","id":3,"gender":1,"group":"minecraft","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"zombie","id":2,"gender":1,"group":"minecraft","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"spider","id":1,"gender":1,"group":"minecraft","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"skeleton","id":30,"gender":1,"group":"minecraft","pack":"du-in"}

#Undertale
data modify storage du-in:kit list append value {"name":"sans","id":16,"gender":1,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"frisk","id":15,"gender":1,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"asgore","id":14,"gender":1,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"papyrus","id":13,"gender":1,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"flowey","id":12,"gender":1,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"asriel","id":11,"gender":1,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"gaster","id":10,"gender":1,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"chara","id":9,"gender":2,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"ralsei","id":24,"gender":1,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"susie","id":36,"gender":2,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"jevil","id":38,"gender":1,"group":"undertale","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"rory","id":42,"gender":1,"group":"undertale","pack":"du-in"}

#Star Wars
data modify storage du-in:kit list append value {"name":"kylo","id":17,"gender":1,"group":"starwars","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"vader","id":18,"gender":1,"group":"starwars","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"palps","id":19,"gender":1,"group":"starwars","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"yoda","id":29,"gender":1,"group":"starwars","pack":"du-in"}

#Zootopia
data modify storage du-in:kit list append value {"name":"nick","id":23,"gender":1,"group":"zootopia","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"judy","id":35,"gender":2,"group":"zootopia","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"bogo","id":38,"gender":1,"group":"zootopia","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"pawbert","id":40,"gender":1,"group":"zootopia","pack":"du-in"}

#Last Wish
data modify storage du-in:kit list append value {"name":"puss","id":27,"gender":1,"group":"last_wish","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"jack_horner","id":26,"gender":1,"group":"last_wish","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"death","id":28,"gender":1,"group":"last_wish","pack":"du-in"}

#Five Nights at Freddy's
data modify storage du-in:kit list append value {"name":"springtrap","id":5,"gender":1,"group":"fnaf","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"freddy","id":43,"gender":1,"group":"fnaf","pack":"du-in"}

#Grab Bag
data modify storage du-in:kit list append value {"name":"yharim","id":20,"gender":1,"group":"grab_bag","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"clairen","id":25,"gender":2,"group":"grab_bag","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"cuphead","id":21,"gender":1,"group":"grab_bag","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"gumball","id":22,"gender":1,"group":"grab_bag","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"cinder","id":34,"gender":1,"group":"grab_bag","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"sauron","id":31,"gender":1,"group":"grab_bag","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"avatar","id":32,"gender":1,"group":"grab_bag","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"kratos","id":33,"gender":1,"group":"grab_bag","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"knight","id":37,"gender":1,"group":"grab_bag","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"willo","id":41,"gender":4,"group":"grab_bag","pack":"du-in"}

#Easter Eggs
data modify storage du-in:kit list append value {"name":"chungus","id":42069,"gender":1,"group":"easter_egg","pack":"du-in"}
data modify storage du-in:kit list append value {"name":"saul","id":2015,"gender":1,"group":"easter_egg","pack":"du-in"}

#data modify storage du-in:kit list append value {"name":"m_frisk","id":82,"gender":1,"group":"undertale","pack":"mod"}

##NEW TEST
#Set up forward iteration indices
execute store result score #main maxIndex run data get storage du-in:kit list
scoreboard players remove #main maxIndex 1
scoreboard players set #main currentIndex 0

#Recreate Lists
execute if score #main maxIndex matches 0.. store result storage du-in:main list.index int 1 run scoreboard players get #main currentIndex
execute if score #main maxIndex matches 0.. run function du-in:storage/kit/create_list with storage du-in:main list

#Assign Slot values
scoreboard players set #menu themeIndex 0
execute store result storage du-in:temp theme_index int 1 run scoreboard players get #menu themeIndex

function du-in:storage/kit/slots/assign_theme with storage du-in:temp

#Set Max theme list
execute store result score #main maxThemes run data get storage du-in:main themes
scoreboard players remove #main maxThemes 1
