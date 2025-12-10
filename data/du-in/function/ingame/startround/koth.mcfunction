tag @a add kothIngame

execute if score #main kothCap matches 1000 run scoreboard objectives modify kothTimer displayname [{text:"KOTH Points ",bold:true,color:red},{text:"(of 1000)",color:gray}]
execute if score #main kothCap matches 2000 run scoreboard objectives modify kothTimer displayname [{text:"KOTH Points ",bold:true,color:red},{text:"(of 2000)",color:gray}]
execute if score #main kothCap matches 3000 run scoreboard objectives modify kothTimer displayname [{text:"KOTH Points ",bold:true,color:red},{text:"(of 3000)",color:gray}]
execute if score #main kothCap matches 4000 run scoreboard objectives modify kothTimer displayname [{text:"KOTH Points ",bold:true,color:red},{text:"(of 4000)",color:gray}]
execute if score #main kothCap matches 5000 run scoreboard objectives modify kothTimer displayname [{text:"KOTH Points ",bold:true,color:red},{text:"(of 5000)",color:gray}]

scoreboard objectives setdisplay sidebar kothTimer

execute unless score #main pylonsDestroyed matches 3 run schedule function du-in:music/ingame/koth 4s

#Set KOTH Mode
scoreboard players set #KOTH gamemode 0

team join Classic @a[tag=!spectating]
scoreboard players set @a[tag=!spectating] kothTimer 0
tag @a remove kothl