execute at @a[tag=assassin,scores={RP_USED_LPOTION = 1}] run tag @e[type=potion] add init
data merge entity @e[type=potion,limit=1] {Passengers:[{id:"minecraft:area_effect_cloud",Motion:[0.0,0.1,0.0],Particle:"cloud",Radius:1f,Duration:100,Color:16767975,Tags:["smoke"],Potion:"minecraft:empty"}],Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}
tag @e[type=potion,tag=init] remove init
#execute at @a[tag=assassin,scores={RP_USED_LPOTION = 1}] as @e[type=potion,limit=1,sort=nearest,tag=init] at @s run summon potion ~ ~ ~ {Tags:["smoke"],Passengers:[{id:"minecraft:area_effect_cloud",Motion:[0.0,0.1,0.0],Particle:"cloud",Radius:1f,Duration:100,Color:16767975,Tags:["smoke"],Potion:"minecraft:empty"}],Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#data modify entity @e[type=potion,tag=smoke,limit=1] Motion set from entity @e[type=potion,tag=init,limit=1] Motion
#execute as @e[type=minecraft:area_effect_cloud,tag=smoke,nbt={Motion:[0.0,0.0,0.0]}] at @s unless entity @e[type=potion,tag=smoke,distance=..1] run function roguelike:character/assassin/summon_smoke
#kill @e[type=potion,tag=init]


#execute if entity @e[type=minecraft:area_effect_cloud,tag=aftersmoke] run function roguelike:character/assasin/sneak

#execute as @a[nbt={SelectedItem:{id:"minecraft:lingering_potion",tag:{smoke:1b}}},tag=nuker] run scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:lingering_potion",tag:{smoke:1b}}},tag=nuker] smoker 5
#scoreboard players add @a[scores={linger_used=1..,smoker=1..},tag=nuker] nu_potion 1
#execute as @a[nbt={SelectedItem:{id:"minecraft:ender_pearl",tag:{pearl:1b}}},tag=nuker] run scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:ender_pearl",tag:{pearl:1b}}},tag=nuker] pearl_user 5
#scoreboard players add @a[scores={pearl_used=1..,pearl_user=1..},tag=nuker] pearl_count 1
#effect clear @a[tag=nuker] minecraft:blindness
#scoreboard players set @a pearl_used 0
#scoreboard players remove @a[scores={smoker=1..}] smoker 1
#scoreboard players remove @a[scores={pearl_user=1..}] pearl_user 1
