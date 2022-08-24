
execute if entity @s[nbt={Inventory:[{tag:{tp:1b}}]}] run scoreboard players set @s RP_ITEM_COOL1 0
execute as @s[scores={RP_ITEM_COOL1=..1},nbt=!{Inventory:[{tag:{tp:1b}}]}] run function roguelike:armor/teleport/give_item