#Damage
$execute unless entity @s[tag=bulletIFrame] run damage @s 5 du-in:bullet by @p[scores={player=$(current)}]

#$damage @s 5 minecraft:generic by @p[scores={player=$(current)}]

$execute as @a[scores={player=$(current)}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~

scoreboard players set @s bulletIFrames 3
tag @s add bulletIFrame
schedule function du-in:kit/willo/revolver/frame/loop 1t replace