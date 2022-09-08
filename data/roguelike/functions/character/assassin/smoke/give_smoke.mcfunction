
execute store result score @s temp run data get entity @s Inventory[{tag:{smoke:1b}}].Slot

execute as @s[scores={as_smoke=0}] run function roguelike:character/assassin/smoke/replace_bottle

scoreboard players add @s[scores={as_smoke=0..2}] as_smoke 1

execute if score @s temp matches 0 run item modify entity @s hotbar.0 roguelike:character/assassin/yangsim
execute if score @s temp matches 1 run item modify entity @s hotbar.1 roguelike:character/assassin/yangsim
execute if score @s temp matches 2 run item modify entity @s hotbar.2 roguelike:character/assassin/yangsim
execute if score @s temp matches 3 run item modify entity @s hotbar.3 roguelike:character/assassin/yangsim
execute if score @s temp matches 4 run item modify entity @s hotbar.4 roguelike:character/assassin/yangsim
execute if score @s temp matches 5 run item modify entity @s hotbar.5 roguelike:character/assassin/yangsim
execute if score @s temp matches 6 run item modify entity @s hotbar.6 roguelike:character/assassin/yangsim
execute if score @s temp matches 7 run item modify entity @s hotbar.7 roguelike:character/assassin/yangsim
execute if score @s temp matches 8 run item modify entity @s hotbar.8 roguelike:character/assassin/yangsim

execute store result score @s RP_COOL2 run data get storage roguelike:rp rp_as_cool2

scoreboard players reset @s temp