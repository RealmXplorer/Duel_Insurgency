scoreboard players set @s unicornTimer 40
tag @s add unicornDuration
execute unless score #unicorn running matches 1 run function du-in:kit/jack_horner/ability/unicorn_bow/unicorn_loop

playsound du-in:sfx.funny.squeak master @a ~ ~ ~
advancement revoke @s only du-in:utility/arrow