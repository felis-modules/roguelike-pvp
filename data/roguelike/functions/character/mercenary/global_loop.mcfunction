execute as @e[scores={mc_mark2=1..}] at @s run particle dust 0.38 0.392 1 1 ~ ~2.3 ~ 0 0 0 0 5 normal
execute as @e[scores={mc_mark1=1..}] at @s run particle dust 0.729 0 0 1 ~ ~2.3 ~ 0 0 0 0 5 normal
scoreboard players set .givetoken mc_token 0
execute as @a[tag=!mercenary] run scoreboard players set @s mc_used_f 0
execute as @a[tag=!mercenary] run scoreboard players set @s mc_used_rc 0