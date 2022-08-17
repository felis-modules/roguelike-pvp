execute at @s run summon lightning_bolt
execute at @s run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.4 800
effect give @s slowness 3 99 false
effect give @s jump_boost 3 128 true
execute at @s run playsound item.totem.use master @a ~ ~ ~ 1 1 0