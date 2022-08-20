# charge 1 tick
execute at @s rotated ~ 0 if block ^ ^ ^1 air run tp @s ^ ^ ^0.8
execute at @s as @e[distance=..0.5] run function roguelike:character/gladiator/charge_hurt
execute at @s as @e[distance=..0.5] run function roguelike:character/gladiator/charge_success
execute at @s run particle soul_fire_flame ~ ~0.7 ~ 0.4 0.4 0.4 0 30 force
execute at @s run particle dust 0.388 0.549 0.961 1 ~ ~0.7 ~ 0.4 0.4 0.4 0 60 force


execute if score @s gl_charge matches 1 at @s run particle soul_fire_flame ~ ~0.7 ~ 0.4 0.4 0.4 0.7 30 force
execute if score @s gl_charge matches 1 at @s run playsound minecraft:entity.guardian.death master @a ~ ~ ~ 2 2 0
execute if score @s gl_charge matches 1 at @s run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.6 1.1 0

execute if score @s gl_charge matches 1 run function roguelike:character/gladiator/weapon/turn_on
scoreboard players remove @s gl_charge 1