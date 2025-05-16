function du-in:other/settings/reset_music
tag @s add oldPack
stopsound @s record
scoreboard players set @s music 0
tellraw @s ["",{text:"Music Type: ",bold:true,color:gold},{text:"Beta",color:aqua}]