advancement revoke @s only du-in:shop/interact_vent

execute unless score #main pylonsDestroyed matches 3 run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Vents can be used only by Impostor and Jerma. They will teleport to a random vent (including the one they use!)"]
execute unless score #main pylonsDestroyed matches 3 run playsound minecraft:entity.villager.no voice @s ~ ~ ~ 1 1
