function roguelike:character/reset_player

item replace entity @s hotbar.0 with iron_sword
# execute if entity @s[name=!"Runky_Wanderer"] run item modify entity @s hotbar.0 roguelike:character/paladin/sword
item modify entity @s hotbar.0 roguelike:character/paladin/hidden_sword

item replace entity @s weapon.offhand with shield
execute if entity @s[name=!"Runky_Wanderer"] run item modify entity @s weapon.offhand roguelike:character/paladin/shield
execute if entity @s[name="Runky_Wanderer"] run item modify entity @s weapon.offhand roguelike:character/paladin/hidden_shield

# item replace entity @s hotbar.0 with wooden_sword
# item modify entity @s hotbar.0 roguelike:character/paladin/black_axe

item replace entity @s hotbar.1 with wooden_sword
item modify entity @s hotbar.1 roguelike:character/paladin/curse

function roguelike:character/reset_tag
tag @s add paladin