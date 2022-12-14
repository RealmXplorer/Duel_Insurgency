stopsound @a voice
#execute if entity @s[scores={kit=1..4}] run playsound minecraft:villain.pick record @a ~ ~ ~ 100 1
#execute if entity @s[scores={kit=5..8}] run playsound minecraft:hero.pick record @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=9}] run playsound minecraft:chara.pick record @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=10}] run playsound minecraft:gaster.pick record @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=11}] run playsound minecraft:asriel.pick record @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=12}] run playsound minecraft:flowey.pick record @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=13}] run playsound minecraft:papyrus.pick record @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=14}] run playsound minecraft:asgore.pick record @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=15}] run playsound minecraft:frisk.pick record @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=16}] run playsound minecraft:sans.pick record @a ~ ~ ~ 100 1 1

execute if entity @s[scores={kit=17}] run playsound minecraft:kylo.line.win voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=18}] run playsound minecraft:vader.line.win voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=19}] run playsound minecraft:palps.line.win voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=20}] run playsound minecraft:yharim.win voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=21}] run playsound minecraft:cuphead.knockout voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=22}] run playsound minecraft:gumball.win voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=23}] run playsound minecraft:nick.line.win voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=25}] run playsound minecraft:clairen.victory voice @a ~ ~ ~ 100 1

execute if entity @s[scores={kit=5}] run playsound minecraft:springtrap.win voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=5}] run playsound minecraft:springtrap.line voice @a ~ ~ ~ 100 1

execute if entity @s[scores={kit=31}] run playsound minecraft:judy.line.win voice @a ~ ~ ~ 100 1

#execute if entity @s[scores={kit=1001}] run playsound minecraft:krampus.win voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/sounds/win

execute if entity @s[scores={kit=1002}] run playsound minecraft:jerma.win voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=1003}] run playsound minecraft:sus.victory voice @a ~ ~ ~ 100 1
execute if entity @s[scores={kit=42069}] run playsound minecraft:chungus.line.win voice @a ~ ~ ~ 100 1


#SAAC WIN LINES
execute if score #main online matches 3.. if entity @s[scores={kit=1000}] run playsound minecraft:saac.line.win voice @a ~ ~ ~ 100 1

execute unless score #main online matches 3.. if entity @s[scores={kit=1000}] unless entity @a[scores={kit=1001..1005}] run playsound minecraft:saac.line.win voice @a ~ ~ ~ 100 1
#execute unless score #main online matches 3.. if entity @s[scores={kit=1000}] if entity @a[scores={kit=1001}] run playsound minecraft:saac.krampus voice @a ~ ~ ~ 100 1
execute unless score #main online matches 3.. if entity @s[scores={kit=1000}] if entity @a[scores={kit=1003}] run playsound minecraft:saac.sus voice @a ~ ~ ~ 100 1
execute unless score #main online matches 3.. if entity @s[scores={kit=1000}] if entity @a[scores={kit=1005}] run playsound minecraft:saac.runza voice @a ~ ~ ~ 100 1
