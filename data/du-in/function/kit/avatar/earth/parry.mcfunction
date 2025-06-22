title @s title {text:""}
title @s subtitle {text:"🛡 Parry! 🛡",color:dark_green}

execute on attacker run function du-in:kit/avatar/earth/parried

playsound minecraft:kratos.rock master @a ~ ~ ~ 1 1

particle minecraft:block{block_state:"minecraft:packed_mud"} ~ ~ ~ 3 0 3 0 500 force

playsound minecraft:block.basalt.break master @a ~ ~ ~ 1 1
playsound minecraft:block.basalt.break master @a ~ ~ ~ 1 .5
playsound minecraft:block.basalt.break master @a ~ ~ ~ 1 2