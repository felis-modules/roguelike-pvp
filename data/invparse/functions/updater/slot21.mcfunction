scoreboard players set .slot invparse 21 
data modify storage invparse:parsed Item.Slot set value 0b 
data modify block -30000000 -64 1602 Items set value [] 
data modify block -30000000 -64 1602 Items append from storage invparse:parsed Item 
loot replace entity @s container.21 1 mine -30000000 -64 1602 minecraft:air{drop_contents:1b} 
