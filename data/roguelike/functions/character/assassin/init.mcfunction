function roguelike:character/reset_player
function roguelike:character/reset_tag

tag @s add assassin
tag @s add RP_spause1
tag @s add RP_spause2

scoreboard players set @s as_smoke 3
scoreboard players set @s as_pearl 2
scoreboard players reset @s temp
scoreboard players reset @s RP_USED_PEARL

item replace entity @s hotbar.0 with stone_hoe
item modify entity @s hotbar.0 roguelike:character/assassin/jinwoldo
item replace entity @s weapon.offhand with stone_hoe
item modify entity @s weapon.offhand roguelike:character/assassin/jinwolgyom
item replace entity @s hotbar.1 with ender_pearl 2
item replace entity @s hotbar.2 with lingering_potion{smoke:1b}
function roguelike:character/assassin/give_smoke

