
######## 연막 ###########

## 추가: 연막에 들어간 암살자가 투명해지는 기능
execute as @s[tag=sneak] run effect give @s invisibility 1 0 true

execute as @a[tag=assassin,scores={RP_USED_LPOTION = 1,as_smoke=1..3}] run scoreboard players remove @s as_smoke 1 

## 없는 경우 유리병으로 교체
execute as @a[tag=assassin,scores={RP_USED_LPOTION = 1,as_smoke=0},nbt=!{SelectedItem:{id:"minecraft:lingering_potion"}}] run item replace entity @s weapon.mainhand with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1

execute as @e[type=minecraft:area_effect_cloud,nbt={Color:3881787}] run function roguelike:character/assassin/smoke/swap_smoke
# execute at @a[tag=assassin,scores={RP_USED_LPOTION = 1}] run tag @e[type=potion,sort=nearest,limit=1] add init
# execute at @a[tag=assassin,scores={RP_USED_LPOTION = 1}] as @e[tag=init] at @s run summon potion ~ ~ ~ {NoGravity:0b,Tags:["smoke"],Passengers:[{id:"minecraft:area_effect_cloud",Motion:[0.0,0.1,0.0],Particle:"cloud",Radius:1f,Duration:100,Color:16767975,Tags:["smoke"],Potion:"minecraft:empty"}],Item:{id:"minecraft:egg",Count:1b,tag:{Potion:"minecraft:water"}}}

# data modify entity @e[tag=smoke,limit=1] Motion set from entity @e[type=potion,tag=init,limit=1] Motion

# kill @e[tag=init]

# execute as @e[tag=smoke_cloud] at @s unless entity @e[type=potion,tag=smoke,distance=..1] run function roguelike:character/assassin/summon_smoke
execute as @e[type=minecraft:area_effect_cloud,tag=aftersmoke] run function roguelike:character/assassin/sneak
# ## 연막에서 나온직후에 실행가능한 임시코드x`
# #execute as @a[tag=assassin,tag=sneak] at @s unless entity @e[type=area_effect_cloud,tag=aftersmoke,distance=..3] run
execute as @a[tag=assassin,tag=sneak] at @s unless entity @e[type=area_effect_cloud,tag=aftersmoke,distance=..3] run function roguelike:character/assassin/unsneak