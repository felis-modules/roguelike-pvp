function roguelike:character/reset_player

item replace entity @s hotbar.0 with iron_axe
execute if entity @s[name=!"less2541"] run function roguelike:character/slayer/greatsword
execute if entity @s[name="lees2541"] run function roguelike:character/slayer/tsumi_sword

function roguelike:character/slayer/dark_rune
function roguelike:character/slayer/blood_potion

function roguelike:character/reset_tag
tag @s add slayer