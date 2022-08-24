
execute as @a run function roguelike:armor/teleport/schedule


scoreboard players remove @a[scores={RP_ITEM_COOL1=1..}] RP_ITEM_COOL1 1
scoreboard players remove @a[scores={RP_ITEM_COOL2=1..}] RP_ITEM_COOL2 1