execute store result score .tanker_ulti pl_skill run data get entity @s SelectedItem.tag.tanker_ulti
execute if score .tanker_ulti pl_skill matches 1 if entity @s[scores={RP_COOL1=..1}] run scoreboard players set .tanker_ulti pl_skill 2

execute if score .tanker_ulti pl_skill matches 2 run function roguelike:character/paladin/lightning_on_hit