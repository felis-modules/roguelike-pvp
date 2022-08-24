scoreboard players add @s RP_HURT_COOL 0

scoreboard players operation .rawdmg cd_dmg *= 120 const
scoreboard players operation .rawdmg cd_dmg /= 100 const

# tellraw @a {"score":{"name":".rawdmg","objective":"cd_dmg"}}

scoreboard players set @s[type=!player,scores={RP_HURT_COOL=0}] cd_dmg2 15
scoreboard players operation @s[type=player,scores={RP_HURT_COOL=0}] cd_dmg = .rawdmg cd_dmg

scoreboard players set @s RP_HURT_COOL 2
scoreboard players reset .rawdmg cd_dmg
effect give @s glowing 2 1