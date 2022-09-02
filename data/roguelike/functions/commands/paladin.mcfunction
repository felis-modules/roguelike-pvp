
function roguelike:character/paladin/init
function roguelike:commands/apply_armor
function roguelike:commands/apply_potion
execute if score .state cmd_state_givebook matches 1 run function roguelike:items/master_cmd_book
scoreboard players set @s paladin 0
scoreboard players enable @s paladin