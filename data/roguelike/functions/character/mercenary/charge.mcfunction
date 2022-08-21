# charge 1 tick

# charge
execute at @s rotated ~ 0 if block ^ ^0.8 ^0.8 air run tp @s ^ ^0.25 ^0.8
tag @s add charger
# damages & check success

execute at @s positioned ^ ^0.25 ^0.8 as @e[tag=!charger,distance=..1.4] run scoreboard players add @s RP_HURT_COOL 0

# execute at @s positioned ^ ^0.25 ^0.8 if entity @e[tag=!charger,distance=..1.4,scores={RP_HURT_COOL=0}] run scoreboard players set @s mc_charge_success 1

execute at @s positioned ^ ^0.25 ^0.8 as @e[tag=!charger,distance=..1.4,scores={RP_HURT_COOL=0}] run function roguelike:character/mercenary/charge_hurt

execute if score .charge_givetoken mc_mark2 matches 1 run scoreboard players set @s mc_charge_success 1

scoreboard players set .charge_givetoken mc_mark2 0

# check success
tag @s remove charger

# effect
execute at @s run particle soul_fire_flame ~ ~0.7 ~ 0.4 0.4 0.4 0 30 force
execute at @s run particle dust 0.388 0.549 0.961 1 ~ ~0.7 ~ 0.4 0.4 0.4 0 60 force

# final effects
execute if score @s mc_charge matches 1 at @s run particle soul_fire_flame ~ ~0.7 ~ 0.4 0.4 0.4 0.7 30 force
execute if score @s mc_charge matches 1 at @s run playsound minecraft:entity.guardian.death master @a ~ ~ ~ 2 2 0
execute if score @s mc_charge matches 1 at @s run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.6 1.1 0

# upgrade weapon
execute if score @s mc_charge matches 1 run function roguelike:character/mercenary/weapon/turn_on


# when success

# give token
execute if score @s mc_charge matches 1 if score @s mc_charge_success matches 1 run function roguelike:character/mercenary/give_token_score
# reset token cooltime
# execute if score @s mc_charge matches 1 if score @s mc_charge_success matches 1 run execute store result score @s mc_token_cool run data get storage roguelike:rp rp_mc_token
# reset success state
execute if score @s mc_charge matches 1 if score @s mc_charge_success matches 1 run scoreboard players set @s mc_charge_success 0

execute store result score @s RP_COOL2 run data get storage roguelike:rp rp_mc_cool2
scoreboard players remove @s mc_charge 1