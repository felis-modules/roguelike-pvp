execute store result score @s pl_used_f run data get entity @s SelectedItem.tag.tanker_shield

execute as @s[scores={pl_used_f=1,RP_COOL1=0}] run function roguelike:character/paladin/skill_f/lightning
execute as @s[scores={pl_used_f=1}] run function invparse:switch
