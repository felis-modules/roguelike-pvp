scoreboard players set @a[scores={get_red=1..}] cmd_armor_state 1
scoreboard players set @a[scores={get_blue=1..}] cmd_armor_state 2

function roguelike:commands/apply_armor

scoreboard players set @s get_blue 0
scoreboard players set @s get_red 0
scoreboard players enable @s get_blue
scoreboard players enable @s get_red