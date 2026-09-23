#KILL MESSAGE#
execute if entity @s[scores={kit=1000}] run return run tellraw @a {selector:"@s",color:gold,bold:false,extra:[{text:" ruined ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:yellow,bold:false}]}
execute if entity @s[scores={kit=1001}] run return run tellraw @a {selector:"@s",color:gold,bold:false,extra:[{text:" goofed ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:yellow,bold:false}]}
execute if entity @s[scores={kit=1002}] run return run tellraw @a {selector:"@s",color:gold,bold:false,extra:[{text:" ejected ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:yellow,bold:false}]}
execute if entity @s[scores={kit=1003}] run return run tellraw @a {selector:"@s",color:gold,bold:false,extra:[{text:" zerked ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:yellow,bold:false}]}
execute if entity @s[scores={kit=1004}] run return run tellraw @a {selector:"@s",color:gold,bold:false,extra:[{text:" tackled ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:yellow,bold:false}]}

execute if entity @s[scores={kit=42069}] run return run tellraw @a {selector:"@s",color:gold,bold:false,extra:[{text:" had sex with ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:yellow,bold:false}]}

#Default
tellraw @a {selector:"@s",color:gold,bold:false,extra:[{text:" stuffed ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:yellow,bold:false}]}