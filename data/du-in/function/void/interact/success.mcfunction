execute if entity @s[tag=!voidReady] run function du-in:void/interact/void_ready

scoreboard players add #main voidReadyOnline 1
tellraw @a [{text:"The Void shakes loose ",color:red,bold:true},{text:"(",color:white,bold:true},{"score":{"name":"#main","objective":"voidReadyOnline"},color:white,bold:true},{text:"/",color:white,bold:true},{"score":{"name":"#main","objective":"online"},color:white,bold:true},{text:")",color:white,bold:true}]

execute if entity @a[tag=devMode,tag=partyLeader] run function du-in:void/interact/begin_timer
execute if score #main voidReadyOnline = #main online run function du-in:void/interact/begin_timer