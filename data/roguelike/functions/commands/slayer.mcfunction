
function roguelike:character/slayer/init
function roguelike:commands/apply_armor
function roguelike:commands/apply_potion
execute if score .state cmd_state_givebook matches 1 run function roguelike:items/master_cmd_book
scoreboard players set @s slayer 0
scoreboard players enable @s slayer