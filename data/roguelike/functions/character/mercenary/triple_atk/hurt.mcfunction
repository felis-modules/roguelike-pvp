scoreboard players add @s RP_HURT_COOL 0

# tellraw @a {"score":{"name":".rawdmg","objective":"cd_dmg"}}

scoreboard players operation @s[scores={RP_HURT_COOL=0}] cd_dmg = .rawdmg cd_dmg

scoreboard players set @s RP_HURT_COOL 2
scoreboard players reset .rawdmg cd_dmg
effect give @s glowing 2 1