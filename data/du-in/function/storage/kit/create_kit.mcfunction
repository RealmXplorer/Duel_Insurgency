#Build new kit
$data modify storage du-in:$(group)$(rank) kit set value {"name":$(name),"num":$(num),"group":"$(group)","rank":$(rank),"slot":$(slot)}

#data modify storage du-in:new_kit kit set value {"name":"","num":0,"group":""}

#Possibly need to change the storage names to "group" + "rank". 