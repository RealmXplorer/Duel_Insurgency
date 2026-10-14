#Themes
execute if score #main lobbyTheme matches 1 run return run tellraw @a {selector:"@s",color:dark_purple,bold:false,extra:[{text:" zerked ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:"#fc8803",bold:false}]}
execute if score #main lobbyTheme matches 2 run return run tellraw @a {selector:"@s",color:gold,bold:false,extra:[{text:" zerked ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:yellow,bold:false}]}
execute if score #main lobbyTheme matches 3 run return run tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" zerked ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:green,bold:false}]}
execute if score #main lobbyTheme matches 4 run tellraw @a {selector:"@s",color:light_purple,bold:false,extra:[{text:" zerked ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:aqua,bold:false}]}


#Default
tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" zerked ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:dark_red,bold:false}]}