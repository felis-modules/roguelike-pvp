clear @s iron_ingot{tp:1b} 255
say hi 
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run tag @s add tp.offhand
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with iron_ingot{tp:1b}
execute if entity @s[tag=!tp.offhand,nbt={Inventory:[{Slot:-106b}]}] run give @s iron_ingot{tp:1b}
tag @s remove tp.offhand