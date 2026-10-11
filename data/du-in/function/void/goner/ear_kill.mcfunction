playsound du-in:goner.ear.death voice @a ~ ~ ~ 1 1
#tellraw @a {selector:"@s",color:light_purple,bold:false,extra:[{text:" banished ",color:white,bold:false},{text:"Goner Ear ",color:gray,bold:false}]}
effect give @s instant_health 1 1 true

advancement revoke @s only du-in:void/ear_kill