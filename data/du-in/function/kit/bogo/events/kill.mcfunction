#Runs when this kit kills a player
execute if entity @s[tag=killMsg] run tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" eliminated ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:dark_red,bold:false}]}
