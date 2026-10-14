# Modded / Custom Characters Entry File
data modify storage du-in:new_kit list append value {"name":"rory","gender":1,"group":"minecraft","pack":"du-in"}
data modify storage du-in:new_kit list append value {"name":"frisk","gender":1,"group":"unlock","pack":"du-in"}
data modify storage du-in:new_kit list append value {"name":"player","id":84,"gender":1,"group":"modded","pack":"du-in"}

#data modify storage du-in:group_icons modded append value {id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{du-in:"displayHead"},"minecraft:custom_name":'{"text":"Modded Characters","color":"dark_green","bold":true}',"minecraft:item_model":"du-in:lobby/shop"}}
data modify storage du-in:group_icons modded set value {name:'{"text":"Modded Characters","color":"gold","bold":true}',model:'"du-in:lobby/shop"'}

# Trigger auto-ID assignment & menu slot registration
function du-in:storage/kit/custom/register