effect give @s[tag=ready] speed 3 1
tag @s remove ready
execute store result score @s as_stack_down run data get storage roguelike:rp rp_stack_down