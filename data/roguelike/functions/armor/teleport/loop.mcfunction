execute store result score @s am_tp_select run data get entity @s SelectedItem.tag.tp
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{tp:1b}}]}] run scoreboard players set @s am_tp_lefthand 3 

execute as @a[scores={am_tp_select=1,RP_ITEM_COOL1=0}] at @s run function roguelike:armor/teleport/do_tp

scoreboard players remove @s[scores={am_tp_lefthand=1..}] am_tp_lefthand 1