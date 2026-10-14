#Themes
execute if score #main lobbyTheme matches 1.. run return run function du-in:kit/all/kill/msg/select_type


#Default
tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" reaped ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:dark_red,bold:false},{text:"'s soul",color:white,bold:false}]}

