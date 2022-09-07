# scoreboard players set .tanker_ulti pl_skill 0

execute as @e[scores={pl_skill_taken=1}] run function roguelike:character/paladin/skill_f/lightning_on_hurt
execute as @e[scores={pl_skill_taken=1..}] run scoreboard players remove @s pl_skill_taken 1