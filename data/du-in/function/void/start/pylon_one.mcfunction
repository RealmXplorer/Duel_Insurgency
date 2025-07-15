summon marker 10029 41 10030 {Tags:["pylon","mapSpecific"]}
function du-in:void/pylon_reset
tellraw @a [{text:"The First Pylon ",bold:true,color:dark_purple},{text:"beckons...",color:light_purple}]

scoreboard players set #gonerMax gonerCount 2