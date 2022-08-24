

execute at @e[type=area_effect_cloud,tag=aftersmoke] as @a[tag=!assassin,distance=..3] run effect give @s blindness 3
execute at @e[type=area_effect_cloud,tag=aftersmoke] as @a[tag=assassin,tag=!sneak,distance=..3] run item replace entity @s armor.head with air
execute at @e[type=area_effect_cloud,tag=aftersmoke] as @a[tag=assassin,tag=!sneak,distance=..3] run item replace entity @s armor.chest with air
execute at @e[type=area_effect_cloud,tag=aftersmoke] as @a[tag=assassin,tag=!sneak,distance=..3] run item replace entity @s armor.legs with air
execute at @e[type=area_effect_cloud,tag=aftersmoke] as @a[tag=!sneak,tag=assassin,distance=..3] run tag @s add sneak

