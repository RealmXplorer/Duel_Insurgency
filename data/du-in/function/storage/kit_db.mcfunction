#Building Storage Info:
#name: name of folder to be used for kit
#num: unique kit number
#gender: what kind of underwear the kit will get if hit by Darwin's ability
    #1 = male, 2 = female, 3 = armless male, 4 = armless female
#group: which category in kit menu they belong to.
#rank: where this kit lists in the kit menu's listed category (currently unused)
#slot: the actual slot the kit's head will appear in kit menu's listed category (currently unused)

#Empty "kit.list" so it doesn't duplicate.
data remove storage du-in:kit list
data remove storage du-in:random pool
data remove storage du-in:random unlock_pool
data modify storage du-in:groups group set value {}
data modify storage du-in:main themes set value []

##CREATE CHARACTERS DATABASE
#Minecraft
data modify storage du-in:kit list append value {"name":"villager","id":8,"gender":1,"group":"minecraft",rank:1,slot:1}
data modify storage du-in:kit list append value {"name":"player","id":7,"gender":1,"group":"minecraft",rank:2,slot:2}
data modify storage du-in:kit list append value {"name":"golem","id":6,"gender":1,"group":"minecraft",rank:3,slot:3}
data modify storage du-in:kit list append value {"name":"creeper","id":4,"gender":1,"group":"minecraft",rank:4,slot:4}
data modify storage du-in:kit list append value {"name":"slime","id":3,"gender":1,"group":"minecraft",rank:5,slot:5}
data modify storage du-in:kit list append value {"name":"zombie","id":2,"gender":1,"group":"minecraft",rank:6,slot:6}
data modify storage du-in:kit list append value {"name":"spider","id":1,"gender":1,"group":"minecraft",rank:7,slot:7}
data modify storage du-in:kit list append value {"name":"skeleton","id":30,"gender":1,"group":"minecraft",rank:8,slot:8}

#Undertale
data modify storage du-in:kit list append value {"name":"sans","id":16,"gender":1,"group":"undertale",rank:1,slot:1}
data modify storage du-in:kit list append value {"name":"frisk","id":15,"gender":1,"group":"undertale",rank:2,slot:2}
data modify storage du-in:kit list append value {"name":"asgore","id":14,"gender":1,"group":"undertale",rank:3,slot:3}
data modify storage du-in:kit list append value {"name":"papyrus","id":13,"gender":1,"group":"undertale",rank:4,slot:4}
data modify storage du-in:kit list append value {"name":"flowey","id":12,"gender":1,"group":"undertale",rank:5,slot:5}
data modify storage du-in:kit list append value {"name":"asriel","id":11,"gender":1,"group":"undertale",rank:6,slot:6}
data modify storage du-in:kit list append value {"name":"gaster","id":10,"gender":1,"group":"undertale",rank:7,slot:7}
data modify storage du-in:kit list append value {"name":"chara","id":9,"gender":2,"group":"undertale",rank:8,slot:8}
data modify storage du-in:kit list append value {"name":"ralsei","id":24,"gender":1,"group":"undertale",rank:9,slot:10}
data modify storage du-in:kit list append value {"name":"susie","id":36,"gender":2,"group":"undertale",rank:10,slot:11}
data modify storage du-in:kit list append value {"name":"jevil","id":18,"gender":1,"group":"undertale",rank:11,slot:12}
data modify storage du-in:kit list append value {"name":"rory","id":42,"gender":1,"group":"undertale",rank:12,slot:13}

#Star Wars
data modify storage du-in:kit list append value {"name":"kylo","id":17,"gender":1,"group":"starwars",rank:1,slot:1}
data modify storage du-in:kit list append value {"name":"vader","id":18,"gender":1,"group":"starwars",rank:2,slot:2}
data modify storage du-in:kit list append value {"name":"palps","id":19,"gender":1,"group":"starwars",rank:3,slot:3}
data modify storage du-in:kit list append value {"name":"yoda","id":29,"gender":1,"group":"starwars",rank:4,slot:4}

#Zootopia
data modify storage du-in:kit list append value {"name":"nick","id":23,"gender":1,"group":"zootopia",rank:1,slot:1}
data modify storage du-in:kit list append value {"name":"judy","id":35,"gender":2,"group":"zootopia",rank:2,slot:2}
data modify storage du-in:kit list append value {"name":"bogo","id":38,"gender":1,"group":"zootopia",rank:3,slot:3}
data modify storage du-in:kit list append value {"name":"pawbert","id":40,"gender":1,"group":"zootopia",rank:4,slot:4}

#Last Wish
data modify storage du-in:kit list append value {"name":"puss","id":27,"gender":1,"group":"last_wish",rank:1,slot:1}
data modify storage du-in:kit list append value {"name":"jack_horner","id":26,"gender":1,"group":"last_wish",rank:2,slot:2}
data modify storage du-in:kit list append value {"name":"death","id":28,"gender":1,"group":"last_wish",rank:3,slot:3}

#Five Nights at Freddy's
data modify storage du-in:kit list append value {"name":"springtrap","id":5,"gender":1,"group":"fnaf",rank:1,slot:1}
data modify storage du-in:kit list append value {"name":"freddy","id":43,"gender":1,"group":"fnaf",rank:2,slot:2}

#Grab Bag
data modify storage du-in:kit list append value {"name":"yharim","id":20,"gender":1,"group":"grab_bag",rank:1,slot:1}
data modify storage du-in:kit list append value {"name":"clairen","id":25,"gender":2,"group":"grab_bag",rank:2,slot:2}
data modify storage du-in:kit list append value {"name":"cuphead","id":21,"gender":1,"group":"grab_bag",rank:3,slot:3}
data modify storage du-in:kit list append value {"name":"gumball","id":22,"gender":1,"group":"grab_bag",rank:4,slot:4}
data modify storage du-in:kit list append value {"name":"cinder","id":34,"gender":1,"group":"grab_bag",rank:5,slot:5}
data modify storage du-in:kit list append value {"name":"sauron","id":31,"gender":1,"group":"grab_bag",rank:6,slot:6}
data modify storage du-in:kit list append value {"name":"avatar","id":32,"gender":1,"group":"grab_bag",rank:7,slot:7}
data modify storage du-in:kit list append value {"name":"kratos","id":33,"gender":1,"group":"grab_bag",rank:8,slot:8}
data modify storage du-in:kit list append value {"name":"knight","id":37,"gender":1,"group":"grab_bag",rank:9,slot:10}
data modify storage du-in:kit list append value {"name":"willo","id":31,"gender":4,"group":"grab_bag",rank:10,slot:11}

#Legendary
data modify storage du-in:kit list append value {"name":"saac","id":1000,"gender":1,"group":"unlock",rank:1,slot:1}
data modify storage du-in:kit list append value {"name":"impostor","id":1002,"gender":1,"group":"unlock",rank:2,slot:2}
data modify storage du-in:kit list append value {"name":"runza","id":1004,"gender":1,"group":"unlock",rank:3,slot:3}
data modify storage du-in:kit list append value {"name":"jerma","id":1003,"gender":1,"group":"unlock",rank:4,slot:4}
data modify storage du-in:kit list append value {"name":"paz","id":1001,"gender":2,"group":"unlock",rank:5,slot:5}
data modify storage du-in:kit list append value {"name":"jack_black","id":1005,"gender":1,"group":"unlock",rank:6,slot:6}
data modify storage du-in:kit list append value {"name":"beetlejuice","id":1006,"gender":1,"group":"unlock",rank:7,slot:7}

#Easter Eggs
data modify storage du-in:kit list append value {"name":"chungus","id":42069,"gender":1,"group":"",rank:0,slot:0}
data modify storage du-in:kit list append value {"name":"saul","id":2015,"gender":1,"group":"",rank:0,slot:0}



execute store result score #main listLength run data get storage du-in:kit list

scoreboard players remove #main listLength 1

execute store result storage du-in:main list.index int 1 run scoreboard players get #main listLength
function du-in:storage/kit/create_list with storage du-in:main list

data modify storage du-in:main themes set value ["unlock", "minecraft", "undertale", "starwars", "zootopia", "last_wish", "fnaf", "grab_bag"]