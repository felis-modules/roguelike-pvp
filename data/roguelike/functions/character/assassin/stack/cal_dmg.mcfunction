## 앞으로 multiplayer friendly 로 접근할때는 @p 태그 절대 쓰지마라
## 다시 한번 이렇게 하면 원본맵 시계탑 폭파하겠습니다~

## 스택당 기초데미지 계산
execute store result score @s cd_dmg run data get storage roguelike:rp rp_as_stack_basedmg
say hi
## 스택에 따른 데미지 증가연산
execute at @s if entity @e[type=minecraft:area_effect_cloud,tag=aftersmoke,distance=..3] run scoreboard players add .state as_stack 1
scoreboard players operation @s cd_dmg *= .state as_stack
tellraw @a {"score":{"name":"@s","objective":"cd_dmg"}}