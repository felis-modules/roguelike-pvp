execute store result score .arrdmg RP_COOL1 run data get entity @s damage
scoreboard players remove .arrdmg RP_COOL1 3
execute store result entity @s damage int 1 run scoreboard players get .arrdmg RP_COOL1
scoreboard players reset .arrdmg