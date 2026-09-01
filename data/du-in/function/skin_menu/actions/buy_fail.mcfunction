#tellraw @s [{text:"Insufficient funds!",color:red,bold:"true"}]
tellraw @s [{text:"Not enough diamonds! ",bold:true,color:red},{text:"(You have ",color:gray},{"score":{"name":"@s","objective":"Diamonds"},color:aqua},{text:" diamonds)",color:gray}]
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 .5