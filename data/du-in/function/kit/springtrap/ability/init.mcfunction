#kitActions tag is necessary for ability to work properly
execute if entity @s[tag=kitActions,tag=!springLock] run function du-in:kit/springtrap/ability/enable
execute if entity @s[tag=springLock,tag=kitActions] run function du-in:kit/springtrap/ability/disable
