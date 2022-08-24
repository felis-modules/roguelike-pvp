effect give @s health_boost 1 0 true
effect give @s slowness 1 2 true
effect give @s resistance 1 3 true

execute at @s run particle end_rod ~ ~ ~ 0.4 0.4 0.4 1 100 force
execute at @s run playsound block.beacon.activate master @a ~ ~ ~ 1 2 0

execute store result score @s RP_COOL3 run data get storage roguelike:rp rp_mc_cool3
scoreboard players set @s cd_dmg -4
scoreboard players set @s mc_bide 20