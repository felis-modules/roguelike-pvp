execute store result score .switch invparse run data get entity @s SelectedItemSlot

# switch case 1 to 9
execute if score .switch invparse matches 0 run data modify storage invparse:parsed Right set from entity @s Inventory[{Slot:0b}]
execute if score .switch invparse matches 1 run data modify storage invparse:parsed Right set from entity @s Inventory[{Slot:1b}]
execute if score .switch invparse matches 2 run data modify storage invparse:parsed Right set from entity @s Inventory[{Slot:2b}]
execute if score .switch invparse matches 3 run data modify storage invparse:parsed Right set from entity @s Inventory[{Slot:3b}]
execute if score .switch invparse matches 4 run data modify storage invparse:parsed Right set from entity @s Inventory[{Slot:4b}]
execute if score .switch invparse matches 5 run data modify storage invparse:parsed Right set from entity @s Inventory[{Slot:5b}]
execute if score .switch invparse matches 6 run data modify storage invparse:parsed Right set from entity @s Inventory[{Slot:6b}]
execute if score .switch invparse matches 7 run data modify storage invparse:parsed Right set from entity @s Inventory[{Slot:7b}]
execute if score .switch invparse matches 8 run data modify storage invparse:parsed Right set from entity @s Inventory[{Slot:8b}]

data modify storage invparse:parsed Left set from entity @s Inventory[{Slot:-106b}]

data modify storage invparse:parsed Right.Slot set value 0b

# switch case 0 to 8
data modify storage invparse:parsed Left.Slot set value 1b
# execute if score .switch invparse matches 1 run data modify storage invparse:parsed Left.Slot set value 1b
# execute if score .switch invparse matches 2 run data modify storage invparse:parsed Left.Slot set value 2b
# execute if score .switch invparse matches 3 run data modify storage invparse:parsed Left.Slot set value 3b
# execute if score .switch invparse matches 4 run data modify storage invparse:parsed Left.Slot set value 4b
# execute if score .switch invparse matches 5 run data modify storage invparse:parsed Left.Slot set value 5b
# execute if score .switch invparse matches 6 run data modify storage invparse:parsed Left.Slot set value 6b
# execute if score .switch invparse matches 7 run data modify storage invparse:parsed Left.Slot set value 7b
# execute if score .switch invparse matches 8 run data modify storage invparse:parsed Left.Slot set value 8b

data modify block -30000000 -64 1602 Items set value [] 
data modify block -30000000 -64 1602 Items append from storage invparse:parsed Left
data modify block -30000000 -64 1602 Items append from storage invparse:parsed Right

item replace entity @s weapon.offhand from block -30000000 -64 1602 container.0

execute if score .switch invparse matches 0 run item replace entity @s container.0 from block -30000000 -64 1602 container.1
execute if score .switch invparse matches 1 run item replace entity @s container.1 from block -30000000 -64 1602 container.1
execute if score .switch invparse matches 2 run item replace entity @s container.2 from block -30000000 -64 1602 container.1
execute if score .switch invparse matches 3 run item replace entity @s container.3 from block -30000000 -64 1602 container.1
execute if score .switch invparse matches 4 run item replace entity @s container.4 from block -30000000 -64 1602 container.1
execute if score .switch invparse matches 5 run item replace entity @s container.5 from block -30000000 -64 1602 container.1
execute if score .switch invparse matches 6 run item replace entity @s container.6 from block -30000000 -64 1602 container.1
execute if score .switch invparse matches 7 run item replace entity @s container.7 from block -30000000 -64 1602 container.1
execute if score .switch invparse matches 8 run item replace entity @s container.8 from block -30000000 -64 1602 container.1

data modify storage invparse:parsed Right set value {}
data modify storage invparse:parsed Left set value {}