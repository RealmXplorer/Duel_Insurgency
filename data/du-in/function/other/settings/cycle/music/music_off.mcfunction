function du-in:other/settings/reset_music
tag @s add musicOff
tellraw @s ["",{text:"Music Type: ",bold:true,color:gold},{text:"Disabled",color:red,bold:true}]