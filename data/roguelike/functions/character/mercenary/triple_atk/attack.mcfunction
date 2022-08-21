
# execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^4 0.6 0.6 0.6 0 40 force
# execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^5 0.6 0.6 0.6 0 40 force
# execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^6 0.6 0.6 0.6 0 40 force
# execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^7 0.5 0.5 0.5 0 40 force
# execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^8 0.4 0.4 0.4 0 40 force
# execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^9 0.3 0.3 0.3 0 40 force
# execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^10 0.2 0.2 0.2 0 40 force
# execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^11 0.1 0.1 0.1 0 40 force

tag @s add tattacker
scoreboard players set @s mc_tattack_ray 8
execute as @s at @s anchored eyes positioned ^ ^ ^4 run function roguelike:character/mercenary/triple_atk/ray

execute at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 2 0
execute at @s run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1 1.6
tag @s remove tattacker