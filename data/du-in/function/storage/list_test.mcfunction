#Create List
data merge storage test:list {kit_list:["clairen","willo","pawbert","gumball"]}

#Get number of entries
execute store result score @s listLength run data get storage test:list kit_list

#Add entry
data modify storage test:list kit_list append value "cuphead"

#Insert entry (Lists start at 0)
data modify storage test:list kit_list insert 3 value "creeper"

#Save a character's compounded list into player storage.
data modify storage du-in:player13 kittest set from storage du-in:zootopia kit_list[0]

#Call a macro using the saved values
function du-in:storage/kit_test with storage du-in:player13 kittest