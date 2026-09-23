
$tellraw @a {selector:"@s",bold:false,color:gold,extra:[{text:" has ended ",bold:false,color:gray},{selector:"@a[tag=lostStreak]",bold:false,color:dark_red},{text:"'s $(streak) player killstreak!",bold:true,color:gray}]}
#execute if entity @a[scores={justdied=1,killStreak=5..}] run tellraw @a {selector:"@s",bold:false,color:gold,extra:[{text:" has ended ",bold:false,color:gray},{selector:"@a[scores={justdied=1,killStreak=5..}]",bold:false,color:dark_red},{text:"'s 5 player killstreak!",bold:true,color:gray}]}

tag @a remove lostStreak