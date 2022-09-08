execute store result score .state as_smoke run data get entity @s SelectedItem.tag.assword

execute if score .state as_smoke matches 1.. if score @s RP_USED_FSTICK matches 1.. as @s[scores={as_smoke=1..}] run function roguelike:character/assassin/skill_rc/summon_here

scoreboard players reset .state as_smoke