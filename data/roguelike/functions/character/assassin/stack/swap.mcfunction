effect give @s[tag=ready] speed 2 1
tag @s remove ready
execute as @s run schedule function roguelike:character/assassin/stack/stack_down 2s