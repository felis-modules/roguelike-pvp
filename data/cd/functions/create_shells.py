from asyncio.windows_events import NULL
import os

sh_name = 'shell'
os.mkdir('shell')

_path = 'cd:'
template = [
  '''execute if score @s cd_hp_max matches {}..{} run function {}:{}''',
  '''execute if score @s cd_hp_max matches {}..{} run '''
]

os.mkdir(sh_name)
os.chdir(sh_name)

for i in range(1, 6):
  # 100의 자리
  mode = 'a'
  f = None
  if i == 1:  
    f = open(sh_name+'.mcfunction', 'w')
  else:
    f = open(sh_name+'.mcfunction', 'a')

  f.write(template[0].format(i, i*100-1, _path, ))
  f.close();

  for j in range(0, 10):
    # 10의 자리
    sh_name += '_' + j
    os.mkdir(sh_name)
    os.chdir(sh_name)
    for k in range(0, 10):
      # 1의 자리 야호
      sh_name += '_' + k
      f = open(sh_name+'.mcfunction', 'w')
      f.write(template.format().format(i, j, k))
    sh_name = sh_name[:-2]
