playsound du-in:goner.eye.death voice @a ~ ~ ~ 1 1
#tellraw @a {selector:"@s",color:light_purple,bold:false,extra:[{text:" banished ",color:white,bold:false},{text:"Goner Eye ",color:gray,bold:false}]}
effect give @a darkness 3 0 true

advancement revoke @s only du-in:void/eye_kill