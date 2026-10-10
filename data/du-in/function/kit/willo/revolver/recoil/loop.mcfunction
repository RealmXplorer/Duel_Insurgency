scoreboard players set #recoil running 1
#Rage functions for all enraged players
execute as @a[scores={willoRecoilTimer=0..}] at @s run function du-in:kit/willo/revolver/recoil/timer

#Continue timer if another player has rage
execute if entity @a[scores={willoRecoilTimer=0..}] run return run schedule function du-in:kit/willo/revolver/recoil/loop 1t replace
scoreboard players set #recoil running 0