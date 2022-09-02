####### 엔더진주
execute as @a[tag=assassin,scores={RP_USED_PEARL=1},nbt=!{SelectedItem:{id:"minecraft:ender_pearl"}}] run item replace entity @s weapon.mainhand with minecraft:slime_ball
execute as @a[tag=assassin,scores={RP_USED_PEARL=1}] run effect give @s speed 3 1
execute as @a[tag=assassin,scores={RP_USED_PEARL=1}] run function roguelike:character/assassin/stack/stack_up
execute as @a[tag=assassin,scores={RP_USED_PEARL=1}] run scoreboard players remove @s as_pearl 1




################################################################

######## 연막 ###########
execute as @a[tag=assassin,scores={RP_USED_LPOTION = 1,as_smoke=1..3}] run scoreboard players remove @s as_smoke 1 
execute as @a[tag=assassin,scores={RP_USED_LPOTION = 1,as_smoke=0},nbt=!{SelectedItem:{id:"minecraft:lingering_potion"}}] run item replace entity @s weapon.mainhand with glass_bottle{smoke:1b} 1
execute at @a[tag=assassin,scores={RP_USED_LPOTION = 1}] run tag @e[type=potion] add init
execute at @a[tag=assassin,scores={RP_USED_LPOTION = 1}] as @e[type=potion,limit=1,sort=nearest,tag=init] at @s run summon potion ~ ~ ~ {NoGravity:0b,Tags:["smoke"],Passengers:[{id:"minecraft:area_effect_cloud",Motion:[0.0,0.1,0.0],Particle:"cloud",Radius:1f,Duration:100,Color:16767975,Tags:["smoke"],Potion:"minecraft:empty"}],Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}
data modify entity @e[type=potion,tag=smoke,limit=1] Motion set from entity @e[type=potion,tag=init,limit=1] Motion
kill @e[type=potion,tag=init]
execute as @e[type=minecraft:area_effect_cloud,tag=smoke,nbt={Motion:[0.0,0.0,0.0]}] at @s unless entity @e[type=potion,tag=smoke,distance=..1] run function roguelike:character/assassin/summon_smoke
execute if entity @e[type=minecraft:area_effect_cloud,tag=aftersmoke] run function roguelike:character/assassin/sneak
## 연막에서 나온직후에 실행가능한 임시코드x`
#execute as @a[tag=assassin,tag=sneak] at @s unless entity @e[type=area_effect_cloud,tag=aftersmoke,distance=..3] run
execute as @a[tag=assassin,tag=sneak] at @s unless entity @e[type=area_effect_cloud,tag=aftersmoke,distance=..3] run function roguelike:character/assassin/unsneak
#####################################################################

## 스택관련
## 이건 왼손에든거 nbt임@a[nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:-106b}]

execute as @a[tag=assassin,nbt={Inventory:[{tag:{main_wp:1b},Slot:-106b}]}] run function roguelike:character/assassin/stack/guage_up
execute as @a[tag=assassin,tag=ready,nbt={SelectedItem:{tag:{main_wp:1b}}},nbt={Inventory:[{tag:{sub_wp:1b},Slot:-106b}]}] run function roguelike:character/assassin/stack/swap
scoreboard players remove @a[tag=assassin,scores={as_stack_down=2..}] as_stack_down 1
execute as @a[tag=assassin,scores={as_stack_down=1, as_stack=2..}] run function roguelike:character/assassin/stack/stack_down


############################################################

tag @a[tag=assassin,scores={RP_USED_PEARL = 1,as_pearl=..1}] remove RP_spause1
tag @a[tag=assassin,scores={RP_USED_LPOTION = 1}] remove RP_spause2

scoreboard players set @a[tag=assassin] temp 0

