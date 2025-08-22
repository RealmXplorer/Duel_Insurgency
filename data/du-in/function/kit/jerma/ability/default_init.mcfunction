execute if entity @s[tag=!sabotaged] as @r[tag=playing,gamemode=!spectator,tag=!peepedHorror] run tag @s add peepedHorror
execute if entity @s[tag=sabotaged] run tag @s add peepedHorror

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

tag @a[tag=playing,gamemode=!spectator] add horrorStart
scoreboard players set @a[tag=peepedHorror,tag=horrorStart] jermaTimer 80
tag @a[tag=peepedHorror,tag=horrorStart] add jermaDuration

execute as @a[tag=peepedHorror] run tellraw @s {text:"You peeped the horror, it was the funniest thing you've ever seen...",bold:true,color:red}

execute as @a[tag=horrorStart] at @s run function du-in:kit/jerma/particle

execute as @a[tag=playing,gamemode=!spectator] unless score @a[scores={kit=1003},tag=kitActions,limit=1] team = @s team run tag @a remove horrorStart

clear @s #du-in:ability
xp set @s[tag=!stolen] 600 levels
effect give @s minecraft:speed 3 1 true
tag @s remove kitActions
