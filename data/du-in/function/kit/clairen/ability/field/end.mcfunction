#clear tags
execute as @a[tag=inField] run function du-in:kit/clairen/ability/remove_infield
tag @a remove sabotagedField
tag @a remove empoweredField

#Kill marker
kill @s