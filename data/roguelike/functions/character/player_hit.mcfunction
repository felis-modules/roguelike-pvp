execute as @s[tag=slayer] run function roguelike:character/slayer/player_hit
# execute as @s[tag=paladin] run function roguelike:character/paladin/player_hit
execute as @s[tag=mercenary] run function roguelike:character/mercenary/player_hit
execute as @s[tag=assassin] run function roguelike:character/assassin/player_hit


## 평타 데미지 구현
## 크리 미리 깐 데미지 ! 손도 깔끔한 !

execute store result score .stat RP_DMG_PARSE run data get entity @s SelectedItem.tag.atktype
scoreboard players set @s RP_DMG_PARSE 1

## 공격 속도 적용
execute if score .stat RP_DMG_PARSE matches 1 store result score @s RP_WEAPON_COOL run data get storage roguelike:rp rp_sl_atkspeed
execute if score .stat RP_DMG_PARSE matches 2 store result score @s RP_WEAPON_COOL run data get storage roguelike:rp rp_pl_atkspeed
execute if score .stat RP_DMG_PARSE matches 3 store result score @s RP_WEAPON_COOL run data get storage roguelike:rp rp_mc_atkspeed
execute if score .stat RP_DMG_PARSE matches 4 store result score @s RP_WEAPON_COOL run data get storage roguelike:rp rp_as_atkspeed1
execute if score .stat RP_DMG_PARSE matches 5 store result score @s RP_WEAPON_COOL run data get storage roguelike:rp rp_as_atkspeed2
## 슬레이어 궁 시 평타 쿨타임 감소
scoreboard players remove @s[scores={sl_dark_rune=1..}] RP_WEAPON_COOL 15

# say hi