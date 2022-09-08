scoreboard players set $hit entityid 0
execute if entity @s[advancements={entity_hit_matching:player_killed={bit0=true}}] run scoreboard players add $hit entityid 1
execute if entity @s[advancements={entity_hit_matching:player_killed={bit1=true}}] run scoreboard players add $hit entityid 2
execute if entity @s[advancements={entity_hit_matching:player_killed={bit2=true}}] run scoreboard players add $hit entityid 4
execute if entity @s[advancements={entity_hit_matching:player_killed={bit3=true}}] run scoreboard players add $hit entityid 8
execute if entity @s[advancements={entity_hit_matching:player_killed={bit4=true}}] run scoreboard players add $hit entityid 16
execute if entity @s[advancements={entity_hit_matching:player_killed={bit5=true}}] run scoreboard players add $hit entityid 32
execute if entity @s[advancements={entity_hit_matching:player_killed={bit6=true}}] run scoreboard players add $hit entityid 64
execute if entity @s[advancements={entity_hit_matching:player_killed={bit7=true}}] run scoreboard players add $hit entityid 128
execute if entity @s[advancements={entity_hit_matching:player_killed={bit8=true}}] run scoreboard players add $hit entityid 256
execute if entity @s[advancements={entity_hit_matching:player_killed={bit9=true}}] run scoreboard players add $hit entityid 512
execute if entity @s[advancements={entity_hit_matching:player_killed={bit10=true}}] run scoreboard players add $hit entityid 1024
execute if entity @s[advancements={entity_hit_matching:player_killed={bit11=true}}] run scoreboard players add $hit entityid 2048
execute if entity @s[advancements={entity_hit_matching:player_killed={bit12=true}}] run scoreboard players add $hit entityid 4096
execute if entity @s[advancements={entity_hit_matching:player_killed={bit13=true}}] run scoreboard players add $hit entityid 8192
execute if entity @s[advancements={entity_hit_matching:player_killed={bit14=true}}] run scoreboard players add $hit entityid 16384
execute if entity @s[advancements={entity_hit_matching:player_killed={bit15=true}}] run scoreboard players add $hit entityid 32768
execute if entity @s[advancements={entity_hit_matching:player_killed={bit16=true}}] run scoreboard players add $hit entityid 65536
execute if entity @s[advancements={entity_hit_matching:player_killed={bit17=true}}] run scoreboard players add $hit entityid 131072
execute if entity @s[advancements={entity_hit_matching:player_killed={bit18=true}}] run scoreboard players add $hit entityid 262144
execute if entity @s[advancements={entity_hit_matching:player_killed={bit19=true}}] run scoreboard players add $hit entityid 524288
execute if entity @s[advancements={entity_hit_matching:player_killed={bit20=true}}] run scoreboard players add $hit entityid 1048576
execute if entity @s[advancements={entity_hit_matching:player_killed={bit21=true}}] run scoreboard players add $hit entityid 2097152
execute if entity @s[advancements={entity_hit_matching:player_killed={bit22=true}}] run scoreboard players add $hit entityid 4194304
execute if entity @s[advancements={entity_hit_matching:player_killed={bit23=true}}] run scoreboard players add $hit entityid 8388608
execute if entity @s[advancements={entity_hit_matching:player_killed={bit24=true}}] run scoreboard players add $hit entityid 16777216
execute if entity @s[advancements={entity_hit_matching:player_killed={bit25=true}}] run scoreboard players add $hit entityid 33554432
execute if entity @s[advancements={entity_hit_matching:player_killed={bit26=true}}] run scoreboard players add $hit entityid 67108864
execute if entity @s[advancements={entity_hit_matching:player_killed={bit27=true}}] run scoreboard players add $hit entityid 134217728
execute if entity @s[advancements={entity_hit_matching:player_killed={bit28=true}}] run scoreboard players add $hit entityid 268435456
execute if entity @s[advancements={entity_hit_matching:player_killed={bit29=true}}] run scoreboard players add $hit entityid 536870912
execute if entity @s[advancements={entity_hit_matching:player_killed={bit30=true}}] run scoreboard players add $hit entityid 1073741824
execute if entity @s[advancements={entity_hit_matching:player_killed={bit31=true}}] run scoreboard players operation $hit entityid *= -1 const
# execute as @e if score @s entityid = $hit entityid run say hifunction entity_hit_matching:on_death
# execute if entity @a[scores={RP_ON_DEATH=1..}] run say hi
execute as @a[scores={RP_ON_DEATH=1..}] run function entity_hit_matching:on_death
scoreboard players set @s entity.playerDeath 0