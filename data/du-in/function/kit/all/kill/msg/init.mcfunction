#KILL MESSAGE#
execute unless entity @a[scores={justdied=1,kit=28}] run function du-in:kit/all/kill/msg/default
execute if entity @a[scores={justdied=1,kit=28}] run tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" escaped ",color:white,bold:false},{selector:"@a[scores={justdied=1,kit=28}]",color:dark_red,bold:false}]}