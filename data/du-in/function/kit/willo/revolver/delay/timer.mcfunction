scoreboard players remove @s willoShotDelay 1

#execute if entity @s[scores={willoShotDelay=15}] run playsound du-in:kit.willo.click master @s ~ ~ ~ 100 1

execute if entity @s[scores={willoShotDelay=..0}] run function du-in:kit/willo/revolver/delay/clear