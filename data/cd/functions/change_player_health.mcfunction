## calculates the armor if the damage is not penetrating
execute if score @s cd_dmg matches 1.. if score @s cd_armor matches 1.. run function cd:calc_armor
execute if score @s cd_dmg2 matches 1.. run scoreboard players operation @s cd_dmg = @s cd_dmg2
scoreboard players reset @s cd_dmg2

execute at @s run playsound entity.generic.hurt master @a ~ ~ ~ 1

execute store result score @s cd_hp_max run attribute @s minecraft:generic.max_health get
execute store result score @s cd_hp_e run scoreboard players get @s cd_hp
execute store result score @s cd_abs run data get entity @s AbsorptionAmount
#execute if score @s cd_dmg > @s cd_abs run scoreboard players operation @s cd_hp_max += @s cd_abs
#execute if score @s cd_dmg > @s cd_abs run scoreboard players operation @s cd_dmg -= @s cd_abs
scoreboard players operation @s cd_hp_max += @s cd_abs
scoreboard players operation @s cd_hp_e -= @s cd_dmg
scoreboard players operation @s cd_hp_max -= @s cd_hp_e
scoreboard players operation @s cd_hp_e -= @s cd_abs
execute if score @s cd_hp_e matches ..0 run kill @s



#execute if score @s cd_abs > @s cd_dmg if score @s cd_dmg matches 1.. run tag @s add cd.takeAbsorptionDamage

execute if score @s cd_hp_max matches 0.. run tag @s add cd.takeDamage
#execute if score @s cd_hp_max matches 0.. run effect clear @s absorption
execute if score @s cd_hp_max matches 1 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -1 add
execute if score @s cd_hp_max matches 2 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -2 add
execute if score @s cd_hp_max matches 3 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -3 add
execute if score @s cd_hp_max matches 4 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -4 add
execute if score @s cd_hp_max matches 5 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -5 add
execute if score @s cd_hp_max matches 6 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -6 add
execute if score @s cd_hp_max matches 7 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -7 add
execute if score @s cd_hp_max matches 8 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -8 add
execute if score @s cd_hp_max matches 9 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -9 add
execute if score @s cd_hp_max matches 10 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -10 add
execute if score @s cd_hp_max matches 11 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -11 add
execute if score @s cd_hp_max matches 12 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -12 add
execute if score @s cd_hp_max matches 13 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -13 add
execute if score @s cd_hp_max matches 14 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -14 add
execute if score @s cd_hp_max matches 15 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -15 add
execute if score @s cd_hp_max matches 16 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -16 add
execute if score @s cd_hp_max matches 17 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -17 add
execute if score @s cd_hp_max matches 18 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -18 add
execute if score @s cd_hp_max matches 19 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -19 add
execute if score @s cd_hp_max matches 20 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -20 add
execute if score @s cd_hp_max matches 21 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -21 add
execute if score @s cd_hp_max matches 22 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -22 add
execute if score @s cd_hp_max matches 23 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -23 add
execute if score @s cd_hp_max matches 24 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -24 add
execute if score @s cd_hp_max matches 25 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -25 add
execute if score @s cd_hp_max matches 26 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -26 add
execute if score @s cd_hp_max matches 27 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -27 add
execute if score @s cd_hp_max matches 28 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -28 add
execute if score @s cd_hp_max matches 29 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -29 add
execute if score @s cd_hp_max matches 30 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -30 add
execute if score @s cd_hp_max matches 31 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -31 add
execute if score @s cd_hp_max matches 32 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -32 add
execute if score @s cd_hp_max matches 33 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -33 add
execute if score @s cd_hp_max matches 34 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -34 add
execute if score @s cd_hp_max matches 35 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -35 add
execute if score @s cd_hp_max matches 36 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -36 add
execute if score @s cd_hp_max matches 37 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -37 add
execute if score @s cd_hp_max matches 38 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -38 add
execute if score @s cd_hp_max matches 39 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -39 add
execute if score @s cd_hp_max matches 40 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -40 add
execute if score @s cd_hp_max matches 41 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -41 add
execute if score @s cd_hp_max matches 42 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -42 add
execute if score @s cd_hp_max matches 43 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -43 add
execute if score @s cd_hp_max matches 44 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -44 add
execute if score @s cd_hp_max matches 45 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -45 add
execute if score @s cd_hp_max matches 46 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -46 add
execute if score @s cd_hp_max matches 47 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -47 add
execute if score @s cd_hp_max matches 48 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -48 add
execute if score @s cd_hp_max matches 49 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -49 add
execute if score @s cd_hp_max matches 50 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -50 add
execute if score @s cd_hp_max matches 51 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -51 add
execute if score @s cd_hp_max matches 52 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -52 add
execute if score @s cd_hp_max matches 53 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -53 add
execute if score @s cd_hp_max matches 54 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -54 add
execute if score @s cd_hp_max matches 55 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -55 add
execute if score @s cd_hp_max matches 56 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -56 add
execute if score @s cd_hp_max matches 57 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -57 add
execute if score @s cd_hp_max matches 58 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -58 add
execute if score @s cd_hp_max matches 59 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -59 add
execute if score @s cd_hp_max matches 60 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -60 add
scoreboard players reset @s cd_dmg

#execute if score @s cd_hp_max matches ..0 if score @s cd_abs matches ..0 run effect give @s instant_health 1 5 true
#execute if score @s cd_hp_max matches 0.. run effect give @s instant_health 1 5 true
effect give @s instant_health 1 7 true

execute if score @s cd_hp_max matches 0.. run schedule function cd:change_player_health_reset 1t