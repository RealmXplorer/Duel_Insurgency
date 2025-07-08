#KILL MESSAGE#
execute unless entity @s[scores={kit=1000..1004}] unless entity @s[scores={kit=42069}] run tellraw @a {selector:"@s",color:dark_purple,bold:false,extra:[{text:" spooked ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:"#fc8803",bold:false}]}

execute if entity @s[scores={kit=1000}] run tellraw @a {selector:"@s",color:dark_purple,bold:false,extra:[{text:" ruined ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:"#fc8803",bold:false}]}
execute if entity @s[scores={kit=1001}] run tellraw @a {selector:"@s",color:dark_purple,bold:false,extra:[{text:" goofed ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:"#fc8803",bold:false}]}
execute if entity @s[scores={kit=1002}] run tellraw @a {selector:"@s",color:dark_purple,bold:false,extra:[{text:" ejected ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:"#fc8803",bold:false}]}
execute if entity @s[scores={kit=1003}] run tellraw @a {selector:"@s",color:dark_purple,bold:false,extra:[{text:" zerked ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:"#fc8803",bold:false}]}
execute if entity @s[scores={kit=1004}] run tellraw @a {selector:"@s",color:dark_purple,bold:false,extra:[{text:" tackled ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:"#fc8803",bold:false}]}
