
scoreboard players set @s[type=!player] cd_dmg 200
say hi
scoreboard players operation @s[type=player] cd_dmg = .rawdmg cd_dmg
effect give @s slowness 2 1
scoreboard players set @s RP_HURT_COOL 4
scoreboard players reset .rawdmg cd_dmg