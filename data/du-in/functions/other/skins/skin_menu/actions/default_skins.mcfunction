clear @s barrier{CustomModelData:104}

tag @s add defaultSelect
tellraw @s ["",{"text":"All skins set to default!","bold":true,"color":"green"}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

scoreboard players set @s charaSkin -1
scoreboard players set @s clairenSkin -1
scoreboard players set @s creepSkin -1
scoreboard players set @s flowSkin -1
scoreboard players set @s cupSkin -1
scoreboard players set @s friskSkin -1
scoreboard players set @s gastSkin -1
scoreboard players set @s golemSkin -1
scoreboard players set @s wildeSkin -1
scoreboard players set @s steveSkin -1
scoreboard players set @s pussSkin -1
scoreboard players set @s ralSkin -1
scoreboard players set @s sansSkin -1
scoreboard players set @s springSkin -1
scoreboard players set @s villSkin -1
scoreboard players set @s zombSkin -1

function du-in:other/skins/skin_menu/villager
function du-in:other/skins/skin_menu/frisk
function du-in:other/skins/skin_menu/flowey
function du-in:other/skins/skin_menu/golem
function du-in:other/skins/skin_menu/ralsei
function du-in:other/skins/skin_menu/sans
function du-in:other/skins/skin_menu/puss
function du-in:other/skins/skin_menu/chara
function du-in:other/skins/skin_menu/springtrap
function du-in:other/skins/skin_menu/zombie
function du-in:other/skins/skin_menu/creeper
function du-in:other/skins/skin_menu/player
function du-in:other/skins/skin_menu/gaster
function du-in:other/skins/skin_menu/clairen
function du-in:other/skins/skin_menu/nick
function du-in:other/skins/skin_menu/cuphead

tag @s remove defaultSelect
execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items
