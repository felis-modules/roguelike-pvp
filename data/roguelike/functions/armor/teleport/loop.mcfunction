execute store result score @s am_tp_select run data get entity @s SelectedItem.tag.tp

execute as @a[scores={am_tp_select=1,RP_ITEM_COOL1=0}] at @s run function roguelike:armor/teleport/do_tp