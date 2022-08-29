function roguelike:character/reset_player
function roguelike:character/reset_tag

tag @s add assassin
scoreboard players set @s as_smoke 3
scoreboard players reset @s temp

item replace entity @s hotbar.0 with stone_hoe
item modify entity @s hotbar.0 roguelike:character/assassin/jinwoldo
item replace entity @s weapon.offhand with stone_hoe
item modify entity @s weapon.offhand roguelike:character/assassin/jinwolgyom

item replace entity @s hotbar.2 with lingering_potion{smoke:1b}
function roguelike:character/assassin/give_smoke

