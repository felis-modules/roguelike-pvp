execute as @a store result score @s pl_used_curse run data get entity @s SelectedItem.tag.move_curse
execute at @a[scores={pl_used_curse=1}] run effect give @a[distance=..10,scores={pl_used_curse=0}] slowness 4 0
execute at @a[scores={pl_used_curse=1}] as @e[type=!item,distance=..10] run effect give @s[type=!player] slowness 5 1