scoreboard players set @s am_tp 6
execute if entity @s[tag=!do_not_tp_switch] run function invparse:switch
particle minecraft:dust 1 0.851 0 1 ~ ~1 ~ 0.6 0.6 0.6 2 300 force
execute at @s run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0.3
execute positioned ^ ^ ^7 run function roguelike:armor/teleport/ray

execute store result score @s RP_ITEM_COOL1 run data get storage roguelike:rp rp_am_tpcool
clear @s iron_ingot{tp:1b} 255
