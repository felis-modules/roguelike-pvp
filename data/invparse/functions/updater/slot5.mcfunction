scoreboard players set .slot invparse 5 
data modify storage invparse:parsed Item.Slot set value 0b 
execute in overworld run data modify block -30000000 -64 1602 Items set value [] 
execute in overworld run data modify block -30000000 -64 1602 Items append from storage invparse:parsed Item 
execute in overworld run loot replace entity @s container.5 1 mine -30000000 -64 1602 minecraft:air{drop_contents:1b} 
