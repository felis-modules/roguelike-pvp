function roguelike:character/reset_player
function roguelike:character/gladiator/base
scoreboard players set @s gl_token 4

item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick
item modify entity @s hotbar.0 roguelike:character/gladiator/halburd_off

item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick
item modify entity @s weapon.offhand roguelike:character/gladiator/charge_shield

function roguelike:character/reset_tag
tag @s add gladiator