execute store result score @s[tag=assassin] temp run data get entity @s Inventory[{id:"minecraft:lingering_potion",tag:{smoke:1b}}].Slot
execute if score @s temp matches 0 run item modify entity @s hotbar.0 roguelike:character/assassin/yangsim
execute if score @s temp matches 1 run item modify entity @s hotbar.1 roguelike:character/assassin/yangsim
execute if score @s temp matches 2 run item modify entity @s hotbar.2 roguelike:character/assassin/yangsim
execute if score @s temp matches 3 run item modify entity @s hotbar.3 roguelike:character/assassin/yangsim
execute if score @s temp matches 4 run item modify entity @s hotbar.4 roguelike:character/assassin/yangsim
execute if score @s temp matches 5 run item modify entity @s hotbar.5 roguelike:character/assassin/yangsim
execute if score @s temp matches 6 run item modify entity @s hotbar.6 roguelike:character/assassin/yangsim
execute if score @s temp matches 7 run item modify entity @s hotbar.7 roguelike:character/assassin/yangsim
execute if score @s temp matches 8 run item modify entity @s hotbar.8 roguelike:character/assassin/yangsim
