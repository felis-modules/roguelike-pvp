execute store result score @s am_tp_select run data get entity @s Inventory[{Slot:100b}].tag.tp_item

execute if score @s am_tp_select matches 1 run function roguelike:armor/teleport/user_loop