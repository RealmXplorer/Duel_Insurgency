
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1000 1.5
playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1000 2
particle minecraft:explosion ~ ~ ~ 1 1 1 1 6 force
summon minecraft:armor_stand ~ ~ ~ {Tags:["missile","projectile","mapSpecific"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1334183890,-1567273773,-1112322971,1020489134],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDA0MjY5ZDk1NWJmMDgxNjk3ODJmMTk1ZDUzYTg4NDUxM2EzZmJlNmM1ODc4MDdkMjEyNzIzNzk1OWM2M2JjZCJ9fX0="}]}}}}]}
execute as @e[type=armor_stand,tag=missile,tag=!primed] run function du-in:ingame/void/spawn/missile_primed

schedule function du-in:ingame/void/goner/missile_sound 1s