#Gaster Win Music
playsound minecraft:gaster.pick record @a[tag=!musicOff,tag=!lobby] ~ ~ ~ 100 1

execute if entity @s[scores={gastSkin=3}] run playsound minecraft:goner.mouth.spawn master @a ~ ~ ~ 100000 1
execute if entity @s[scores={gastSkin=3}] run playsound minecraft:goner.mouth.spawn master @a ~ ~ ~ 100000 1.25
execute if entity @s[scores={gastSkin=3}] run playsound minecraft:goner.mouth.spawn master @a ~ ~ ~ 100000 0.75