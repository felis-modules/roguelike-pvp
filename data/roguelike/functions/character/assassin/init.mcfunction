function roguelike:character/reset_player

item replace entity @s hotbar.0 with stone_hoe
item modify entity @s hotbar.0 roguelike:character/assassin/jinwoldo
item replace entity @s weapon.offhand with stone_hoe
item modify entity @s weapon.offhand roguelike:character/assassin/jinwolgyom


function roguelike:character/reset_tag
tag @s add assassin