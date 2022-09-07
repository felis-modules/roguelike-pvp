
execute as @s[tag=mercenary] run function roguelike:character/mercenary/bide/bide_hurt
function roguelike:character/slayer/player_hurt

function roguelike:character/mercenary/player_hurt
function roguelike:character/assassin/player_hurt

## 평타 데미지 파싱 구간.

## .stat 이 1인 경우 : 때린 사람이 슬레이어검으로 때린 경우다.

execute if score .stat RP_DMG_PARSE matches 1 run execute store result score @s cd_dmg run data get storage roguelike:rp rp_sl_atkdmg 10
execute if score .stat RP_DMG_PARSE matches 2 run execute store result score @s cd_dmg run data get storage roguelike:rp rp_pl_atkdmg 10
execute if score .stat RP_DMG_PARSE matches 3 run execute store result score @s cd_dmg run data get storage roguelike:rp rp_mc_atkdmg 10

## .stat 이 1이상인 경우는 어쨌건 무기로 때린 경우이므로 킬로그에 기록을 한다.
execute if score .stat RP_DMG_PARSE matches 1.. run scoreboard players set @a[scores={RP_DMG_PARSE=1}] cd_attacker 1
execute if entity @a[scores={cd_attacker=1,sl_dark_rune=1..}] run scoreboard players remove @s cd_dmg 60

## 변수 초기화

scoreboard players set @a RP_DMG_PARSE 0
scoreboard players reset .stat RP_DMG_PARSE

# say hi in player_hurt