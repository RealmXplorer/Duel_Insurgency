#clear tags
execute as @a[tag=inField] run function du-in:kit/clairen/ability/remove_field
tag @a remove sabotagedField
tag @a remove empoweredField
tag @a remove empoweredSabotageField

#Kill marker
kill @s