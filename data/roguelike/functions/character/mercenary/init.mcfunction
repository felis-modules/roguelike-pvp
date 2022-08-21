function roguelike:character/reset_player
function roguelike:character/mercenary/base
scoreboard players set @s mc_token 4
scoreboard players set @a mc_mode 0
scoreboard players set @a mc_charge 0
scoreboard players set @a mc_rattack 0
scoreboard players set @a mc_tattack 0
scoreboard players set @a mc_bide 0

item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick
item modify entity @s hotbar.0 roguelike:character/mercenary/halburd_off

item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick
item modify entity @s weapon.offhand roguelike:character/mercenary/charge_shield

function roguelike:character/mercenary/give_token
function roguelike:character/mercenary/update_token

function roguelike:character/reset_tag
tag @s add mercenary