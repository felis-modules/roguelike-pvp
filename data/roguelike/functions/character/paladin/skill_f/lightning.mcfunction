tag @s add pl_skill_user
execute store result score @s RP_COOL1 run data get storage roguelike:rp rp_pl_cool1
execute at @s run particle dust 0.827 0.812 0 1 ~ ~ ~ 3 3 3 10 400 force
execute at @s as @e[tag=!pl_skill_user,distance=..6] run scoreboard players set @s pl_skill_taken 10
execute at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.1 0
tag @s remove pl_skill_user