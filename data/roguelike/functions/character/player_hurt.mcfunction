
function roguelike:character/slayer/player_hurt

function roguelike:character/mercenary/player_hurt
function roguelike:character/assassin/player_hurt

## 평타 데미지 파싱 구간.

# execute if entity @s[scores={SHIELD_BLOCKED=0}] run function roguelike:character/atktype/player_hurt
# execute if entity @s[type=!player] run function roguelike:character/atktype/player_hurt

# ## 변수 초기화

# scoreboard players set @a RP_DMG_PARSE 0
# scoreboard players reset .stat RP_DMG_PARSE
## .stat 이 1인 경우 : 때린 사람이 슬레이어검으로 때린 경우다.