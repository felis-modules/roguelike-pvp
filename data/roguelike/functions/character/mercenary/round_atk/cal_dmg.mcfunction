scoreboard players set @s cd_attacker 1
execute store result score .rawdmg cd_dmg run attribute @s generic.attack_damage get 6
scoreboard players operation .rawdmg cd_dmg *= 90 const
scoreboard players operation .rawdmg cd_dmg /= 100 const