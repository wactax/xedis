#!/usr/bin/env coffee

> ./R
  os > hostname

stream = 'task'
HOSTNAME = hostname()
console.log await R.xnext(
  'R'
  HOSTNAME
  10 # limit
  6e5 # block
  false # noack
  stream
)

# key = new Uint8Array [2]
#
# console.log await I.zrevrangebyscoreWithscore key
# map = '字典'
# key = 'xedis键'
# val = 'test测试'

# await I.hset(map, key,val)
#
# console.log '>>', await I.hget(map,key)
#
# await I.hset(map,key)
#
# console.log '>>', await I.hget(map,key)

# await I.hset(map, {'测试':key})

# console.log '>>', await I.hget(map,key)
# console.log '>>', await I.hget(map,'测试')