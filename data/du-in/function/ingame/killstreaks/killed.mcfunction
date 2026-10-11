execute store result storage du-in:main killsteak.streak int 1 run scoreboard players get @a[tag=lostStreak,limit=1] killStreak

function du-in:ingame/killstreaks/end_msg with storage du-in:main killstreak
#execute if entity @a[scores={justdied=1,killStreak=3..4}] run tellraw @a {selector:"@s",bold:false,color:gold,extra:[{text:" has ended ",bold:false,color:gray},{selector:"@a[scores={justdied=1,killStreak=3..4}]",bold:false,color:dark_red},{text:"'s 3 player killstreak!",bold:true,color:gray}]}
#execute if entity @a[scores={justdied=1,killStreak=5..}] run tellraw @a {selector:"@s",bold:false,color:gold,extra:[{text:" has ended ",bold:false,color:gray},{selector:"@a[scores={justdied=1,killStreak=5..}]",bold:false,color:dark_red},{text:"'s 5 player killstreak!",bold:true,color:gray}]}
