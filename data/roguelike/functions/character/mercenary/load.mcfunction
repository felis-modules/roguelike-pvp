# 버클러를 꼈는지(F 키를 눌렀는지) 확인하는 변수
scoreboard objectives add mc_used_f dummy

# 할버드 우클릭 확인 
scoreboard objectives add mc_used_rc dummy

# 평타/돌진 표식인가?
scoreboard objectives add mc_mark1 dummy
scoreboard objectives add mc_mark2 dummy

# 검투사의 의지 토큰 갯수
scoreboard objectives add mc_token dummy

# 검투사의 창 활성화 여부 확인
scoreboard objectives add mc_mode dummy

# 1이상일 경우 해당 틱만큼 차지 실행
scoreboard objectives add mc_charge dummy

# 참기 상태인가
scoreboard objectives add mc_bide dummy

# 차지 시 적중 성공하여 토큰 반환 여부 확인
scoreboard objectives add mc_charge_success dummy
scoreboard objectives add mc_ratk_success dummy

# 1, 4, 7 일 경우 삼격 실행, 1이상일 경우 1틱당 1씩 감소
scoreboard objectives add mc_tattack dummy
scoreboard objectives add mc_tattack_ray dummy
scoreboard objectives add mc_tatk_success dummy

# 1 일 경우 원형 공격 실행
scoreboard objectives add mc_rattack dummy

data merge storage roguelike:rp {rp_mc_cool1:17}
data merge storage roguelike:rp {rp_mc_cool2:5}
data merge storage roguelike:rp {rp_mc_cool3:16}
data merge storage roguelike:rp {rp_mc_cool4:16}
data merge storage roguelike:rp {rp_mc_token:12}