#Start magic ability
scoreboard players add @s bugHit 1

execute if entity @s[scores={bugHit=3..},tag=ethicalBug] run function du-in:kit/jack_horner/ability/bug/flick
advancement revoke @s only du-in:kit/bug