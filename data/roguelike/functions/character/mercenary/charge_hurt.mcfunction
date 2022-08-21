
scoreboard players set @s[type=!player] cd_dmg2 6
scoreboard players set @s[type=player] cd_dmg2 4
scoreboard players add @s mc_mark1 0
scoreboard players set @s[scores={mc_mark1=0}] mc_mark2 5

# execute token give
execute if score @s[scores={mc_mark1=1..}] mc_mark1 matches 1.. run scoreboard players set .charge_givetoken mc_mark2 1
scoreboard players set @s[scores={mc_mark1=1..}] mc_mark1 0

scoreboard players set @s RP_HURT_COOL 10