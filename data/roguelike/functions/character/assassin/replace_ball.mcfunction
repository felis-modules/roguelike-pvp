execute store result score @s[tag=assassin] temp run data get entity @s Inventory[{id:"minecraft:slime_ball"}].Slot
execute if score @s temp matches 0 run item replace entity @s hotbar.0 with ender_pearl
execute if score @s temp matches 1 run item replace entity @s hotbar.1 with ender_pearl
execute if score @s temp matches 2 run item replace entity @s hotbar.2 with ender_pearl
execute if score @s temp matches 3 run item replace entity @s hotbar.3 with ender_pearl
execute if score @s temp matches 4 run item replace entity @s hotbar.4 with ender_pearl
execute if score @s temp matches 5 run item replace entity @s hotbar.5 with ender_pearl
execute if score @s temp matches 6 run item replace entity @s hotbar.6 with ender_pearl
execute if score @s temp matches 7 run item replace entity @s hotbar.7 with ender_pearl
execute if score @s temp matches 8 run item replace entity @s hotbar.8 with ender_pearl

