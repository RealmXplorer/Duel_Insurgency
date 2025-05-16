#Announce which team is halfway to victory
execute if score Blue capturePoints >= #main cqHalf run title @a[tag=cqIngame,tag=!cqHalf] actionbar [{text:'Blue team ', bold:true, color:blue},{text:'is halfway to victory!', color:red}]
execute if score Red capturePoints >= #main cqHalf run title @a[tag=cqIngame,tag=!cqHalf] actionbar [{text:'Red team ', bold:true, color:dark_red},{text:"is halfway to victory!", color:red}]

#Play sound
#execute at @a run playsound minecraft:block.anvil.use master @p ~ ~ ~ 1 1.15
execute as @a at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 1
execute as @a at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 2

#End function
tag @a add cqHalf