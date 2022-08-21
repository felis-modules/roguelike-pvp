execute at @s run particle minecraft:dust 0.761 0.345 0.796 1 ~ ~0.2 ~ 1.3 0 1.3 1 2000 force
execute at @s run particle minecraft:sweep_attack ~ ~0.3 ~ 1.3 0 1.3 1 30 force
execute at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.6 0

tag @s add rattacker

execute at @s as @e[tag=!rattacker,distance=..3] run scoreboard players add @s RP_HURT_COOL 0

execute at @s if entity @e[tag=!rattacker,distance=..3,scores={RP_HURT_COOL=0}] run scoreboard players set @s mc_ratk_success 1

execute at @s as @e[tag=!rattacker,distance=..3,scores={RP_HURT_COOL=0}] run function roguelike:character/mercenary/round_atk/hurt
tag @s remove rattacker