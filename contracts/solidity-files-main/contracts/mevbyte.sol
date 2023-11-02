

def unknown973ecd2b(uint256 _param1) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
  if _param1 >= 256:
      revert with 0, 50
  stor[_param1] = 0

def unknown4e1236f8(): # not payable
  if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
  call tx.origin with:
     value eth.balance(this.address) wei
       gas 2300 * is_zero(value) wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown6e29318d(): # not payable
  idx = 0
  while idx < 256:
      if idx >= 256:
          revert with 0, 50
      mem[(32 * idx) + 128] = stor[idx]
      if not idx + 1:
          revert with 0, 17
      idx = idx + 1
      continue 
  mem[8320] = 32
  mem[8352] = 256
  return memory
    from 8320
     len var11003 - 8320

def unknown602f015b(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
  idx = _param1
  while idx < _param2:
      if idx >= 256:
          revert with 0, 50
      stor[idx] = 1
      if not idx + 1:
          revert with 0, 17
      idx = idx + 1
      continue 

def unknown23a69e75(array _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 <= 18446744073709551615
  require _param1 + 35 <ΓÇ▓ calldata.size
  require _param1.length <= 18446744073709551615
  require _param1 + _param1.length + 36 <= calldata.size
  if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
  call this.address with:
       gas gas_remaining wei
      args _param1[all]
  if not ext_call.success:
      revert with 0, 'cf'

def unknown2c8958f6(array _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 <= 18446744073709551615
  require _param1 + 35 <ΓÇ▓ calldata.size
  require _param1.length <= 18446744073709551615
  require _param1 + _param1.length + 36 <= calldata.size
  if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
  call this.address with:
       gas gas_remaining wei
      args _param1[all]
  if not ext_call.success:
      revert with 0, 'cf'

def unknowna1d48336(array _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 <= 18446744073709551615
  require _param1 + 35 <ΓÇ▓ calldata.size
  require _param1.length <= 18446744073709551615
  require _param1 + _param1.length + 36 <= calldata.size
  if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
  call this.address with:
       gas gas_remaining wei
      args _param1[all]
  if not ext_call.success:
      revert with 0, 'cf'

def unknownfa461e33(array _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 <= 18446744073709551615
  require _param1 + 35 <ΓÇ▓ calldata.size
  require _param1.length <= 18446744073709551615
  require _param1 + _param1.length + 36 <= calldata.size
  if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
  call this.address with:
       gas gas_remaining wei
      args _param1[all]
  if not ext_call.success:
      revert with 0, 'cc'

def unknown301c6cac(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == addr(_param1)
  if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
  call addr(_param1).transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args tx.origin, _param2
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == bool(ext_call.return_data[0])

def unknown9ca712ae(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == addr(_param1)
  if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
  static call addr(_param1).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  if ext_call.return_data > ext_call.return_data[0]:
      revert with 0, 17
  call addr(_param1).transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args tx.origin, ext_call.return_data[0] - 1
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == bool(ext_call.return_data[0])

def _fallback() payable: # default function
  if calldata.size:
      if tx.origin != 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739:
          revert with 0, '!=o'
      require 4 <= calldata.size
      require calldata.size <= calldata.size
      require calldata.size - 4 >=ΓÇ▓ 128
      require _param1 == addr(_param1)
      require _param2 <= 18446744073709551615
      require _param2 + 35 <ΓÇ▓ calldata.size
      if _param2.length > 18446744073709551615:
          revert with 0, 65
      if ceil32(ceil32(_param2.length)) + 97 < 96 or ceil32(ceil32(_param2.length)) + 97 > 18446744073709551615:
          revert with 0, 65
      mem[96] = _param2.length
      require _param2 + _param2.length + 36 <= calldata.size
      mem[128 len _param2.length] = _param2[all]
      mem[_param2.length + 128] = 0
      mem[ceil32(ceil32(_param2.length)) + 97 len ceil32(_param2.length)] = _param2[all], mem[_param2.length + 128 len ceil32(_param2.length) - _param2.length]
      mem[ceil32(ceil32(_param2.length)) + _param2.length + 97] = 0
      call this.address.mem[ceil32(ceil32(_param2.length)) + 97 len 4] with:
           gas gas_remaining wei
          args mem[ceil32(ceil32(_param2.length)) + 101 len _param2.length - 4]
      if not ext_call.success:
          revert with 0, 'ff'

def unknown3aefdfe0(array _param1, array _param2, array _param3, array _param4) payable: 
  require calldata.size - 4 >=ΓÇ▓ 128
  require _param1 <= 18446744073709551615
  require _param1 + 35 <ΓÇ▓ calldata.size
  require _param1.length <= 18446744073709551615
  require _param1 + _param1.length + 36 <= calldata.size
  require _param2 <= 18446744073709551615
  require _param2 + 35 <ΓÇ▓ calldata.size
  require _param2.length <= 18446744073709551615
  require _param2 + (32 * _param2.length) + 36 <= calldata.size
  require _param3 <= 18446744073709551615
  require _param3 + 35 <ΓÇ▓ calldata.size
  require _param3.length <= 18446744073709551615
  require _param3 + (32 * _param3.length) + 36 <= calldata.size
  require _param4 <= 18446744073709551615
  require _param4 + 35 <ΓÇ▓ calldata.size
  require _param4.length <= 18446744073709551615
  require _param4 + (32 * _param4.length) + 36 <= calldata.size
  if 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739 == tx.origin:
      if _param2.length > 18446744073709551615:
          revert with 0, 65
      mem[96] = _param2.length
      mem[64] = (32 * _param2.length) + 128
      if not _param2.length:
          idx = 0
          while idx < _param2.length:
              if _param3.length > 18446744073709551615:
                  revert with 0, 65
              _1493 = mem[64]
              mem[mem[64]] = _param3.length
              mem[64] = mem[64] + (32 * _param3.length) + 32
              if _param3.length:
                  mem[_1493 + 32 len 32 * _param3.length] = call.data[calldata.size len 32 * _param3.length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _1493
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
      else:
          s = 128
          idx = _param2.length
          while idx - 1:
              mem[s + 32] = 96
              s = s + 32
              idx = idx - 1
              continue 
  else:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
      if _param2.length > 18446744073709551615:
          revert with 0, 65
      mem[96] = _param2.length
      mem[64] = (32 * _param2.length) + 128
      if not _param2.length:
          idx = 0
          while idx < _param2.length:
              if _param3.length > 18446744073709551615:
                  revert with 0, 65
              _1494 = mem[64]
              mem[mem[64]] = _param3.length
              mem[64] = mem[64] + (32 * _param3.length) + 32
              if _param3.length:
                  mem[_1494 + 32 len 32 * _param3.length] = call.data[calldata.size len 32 * _param3.length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _1494
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
      else:
          s = 128
          idx = _param2.length
          while idx - 1:
              mem[s + 32] = 96
              s = s + 32
              idx = idx - 1
              continue 
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown0c774f7e() payable: 
  require calldata.size - 4 >=ΓÇ▓ 96
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require cd('cd', 4).length + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require cd * ('cd', 36).length) + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require cd * ('cd', 68).length) + 36 <= calldata.size
  if 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739 == tx.origin:
      if ('cd', 36).length > 18446744073709551615:
          revert with 0, 65
      mem[96] = ('cd', 36).length
      mem[64] = (32 * ('cd', 36).length) + 128
      if ('cd', 36).length:
          s = 128
          idx = ('cd', 36).length
          while idx - 1:
              mem[s + 32] = 96
              s = s + 32
              idx = idx - 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if ('cd', 68).length > 18446744073709551615:
                  revert with 0, 65
              _2746 = mem[64]
              mem[mem[64]] = ('cd', 68).length
              mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
              if ('cd', 68).length:
                  mem[_2746 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _2746
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
      else:
          idx = 0
          while idx < ('cd', 36).length:
              if ('cd', 68).length > 18446744073709551615:
                  revert with 0, 65
              _1365 = mem[64]
              mem[mem[64]] = ('cd', 68).length
              mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
              if ('cd', 68).length:
                  mem[_1365 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _1365
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if 0 >= ('cd', 68).length:
                  if not idx + 1:
                      revert with 0, 17
                  idx = idx + 1
                  continue 
              if idx >= ('cd', 36).length:
                  revert with 0, 50
              require cd[((32 * idx) + cd == addr(cd[((32 * idx) + cd)
              if 0 >= ('cd', 68).length:
                  revert with 0, 50
              require ('cd', 68) == addr(('cd', 68))
              if not -addr(cd[((32 * idx) + cd):
                  if idx < mem[96]:
              else:
                  static call addr(cd[((32 * idx) + cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(('cd', 68))
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 32
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          call this.address with:
             value call.value wei
               gas gas_remaining wei
              args call.data[cd('cd', 4).length]
          if ('cd', 36).length > 18446744073709551615:
              revert with 0, 65
  else:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
      if ('cd', 36).length > 18446744073709551615:
          revert with 0, 65
      mem[96] = ('cd', 36).length
      mem[64] = (32 * ('cd', 36).length) + 128
      if ('cd', 36).length:
          s = 128
          idx = ('cd', 36).length
          while idx - 1:
              mem[s + 32] = 96
              s = s + 32
              idx = idx - 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if ('cd', 68).length > 18446744073709551615:
                  revert with 0, 65
              _2748 = mem[64]
              mem[mem[64]] = ('cd', 68).length
              mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
              if ('cd', 68).length:
                  mem[_2748 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _2748
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
      else:
          idx = 0
          while idx < ('cd', 36).length:
              if ('cd', 68).length > 18446744073709551615:
                  revert with 0, 65
              _1366 = mem[64]
              mem[mem[64]] = ('cd', 68).length
              mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
              if ('cd', 68).length:
                  mem[_1366 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _1366
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if 0 >= ('cd', 68).length:
                  if not idx + 1:
                      revert with 0, 17
                  idx = idx + 1
                  continue 
              if idx >= ('cd', 36).length:
                  revert with 0, 50
              require cd[((32 * idx) + cd == addr(cd[((32 * idx) + cd)
              if 0 >= ('cd', 68).length:
                  revert with 0, 50
              require ('cd', 68) == addr(('cd', 68))
              if not -addr(cd[((32 * idx) + cd):
                  if idx < mem[96]:
              else:
                  static call addr(cd[((32 * idx) + cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(('cd', 68))
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 32
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          call this.address with:
             value call.value wei
               gas gas_remaining wei
              args call.data[cd('cd', 4).length]
          if ('cd', 36).length > 18446744073709551615:
              revert with 0, 65
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown7d454a36(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require cd * ('cd', 4).length) + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require cd * ('cd', 36).length) + 36 <= calldata.size
  if ('cd', 4).length > 18446744073709551615:
      revert with 0, 65
  mem[96] = ('cd', 4).length
  mem[64] = (32 * ('cd', 4).length) + 128
  if not ('cd', 4).length:
      idx = 0
      while idx < ('cd', 4).length:
          if ('cd', 36).length > 18446744073709551615:
              revert with 0, 65
          _20 = mem[64]
          mem[mem[64]] = ('cd', 36).length
          mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
          if ('cd', 36).length:
              mem[_20 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
          if idx >= mem[96]:
              revert with 0, 50
          mem[(32 * idx) + 128] = _20
          if not idx + 1:
              revert with 0, 17
          idx = idx + 1
          continue 
      idx = 0
      while idx < ('cd', 4).length:
          s = 0
          while s < ('cd', 36).length:
              if idx >= ('cd', 4).length:
                  revert with 0, 50
              require cd[((32 * idx) + cd == addr(cd[((32 * idx) + cd)
              if s >= ('cd', 36).length:
                  revert with 0, 50
              require cd[((32 * s) + cd == addr(cd[((32 * s) + cd)
              if not -addr(cd[((32 * idx) + cd):
                  if idx >= mem[96]:
                      revert with 0, 50
                  if s >= mem[mem[(32 * idx) + 128]]:
                      revert with 0, 50
                  mem[(32 * s) + mem[(32 * idx) + 128] + 32] = eth.balance(cd[((32 * s) + cd[36] + 36)])
              else:
                  mem[mem[64] + 4] = addr(cd[((32 * s) + cd)
                  static call addr(cd[((32 * idx) + cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(cd[((32 * s) + cd)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _95 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if idx >= mem[96]:
                      revert with 0, 50
                  if s >= mem[mem[(32 * idx) + 128]]:
                      revert with 0, 50
                  mem[(32 * s) + mem[(32 * idx) + 128] + 32] = mem[_95]
              if not s + 1:
                  revert with 0, 17
              s = s + 1
              continue 
          if not idx + 1:
              revert with 0, 17
          idx = idx + 1
          continue 
      _48 = mem[64]
      mem[mem[64]] = 32
      _50 = mem[96]
      mem[mem[64] + 32] = mem[96]
      idx = 0
      s = 128
      t = mem[64] + 64
      u = mem[64] + (32 * mem[96]) + 64
      while idx < _50:
          mem[t] = u + -_48 - 64
          _83 = mem[s]
          _84 = mem[mem[s]]
          mem[u] = mem[mem[s]]
          v = 0
          w = u + 32
          x = _83 + 32
          while v < _84:
              mem[w] = mem[x]
              v = v + 1
              w = w + 32
              x = x + 32
              continue 
          idx = idx + 1
          s = s + 32
          t = t + 32
          u = u + (32 * _84) + 32
          continue 
  else:
      mem[128] = 96
      s = 128
      idx = ('cd', 4).length
      while idx - 1:
          mem[s + 32] = 96
          s = s + 32
          idx = idx - 1
          continue 
      idx = 0
      while idx < ('cd', 4).length:
          if ('cd', 36).length > 18446744073709551615:
              revert with 0, 65
          _49 = mem[64]
          mem[mem[64]] = ('cd', 36).length
          mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
          if ('cd', 36).length:
              mem[_49 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
          if idx >= mem[96]:
              revert with 0, 50
          mem[(32 * idx) + 128] = _49
          if not idx + 1:
              revert with 0, 17
          idx = idx + 1
          continue 
      idx = 0
      while idx < ('cd', 4).length:
          s = 0
          while s < ('cd', 36).length:
              if idx >= ('cd', 4).length:
                  revert with 0, 50
              require cd[((32 * idx) + cd == addr(cd[((32 * idx) + cd)
              if s >= ('cd', 36).length:
                  revert with 0, 50
              require cd[((32 * s) + cd == addr(cd[((32 * s) + cd)
              if not -addr(cd[((32 * idx) + cd):
                  if idx >= mem[96]:
                      revert with 0, 50
                  if s >= mem[mem[(32 * idx) + 128]]:
                      revert with 0, 50
                  mem[(32 * s) + mem[(32 * idx) + 128] + 32] = eth.balance(cd[((32 * s) + cd[36] + 36)])
              else:
                  mem[mem[64] + 4] = addr(cd[((32 * s) + cd)
                  static call addr(cd[((32 * idx) + cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(cd[((32 * s) + cd)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _120 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if idx >= mem[96]:
                      revert with 0, 50
                  if s >= mem[mem[(32 * idx) + 128]]:
                      revert with 0, 50
                  mem[(32 * s) + mem[(32 * idx) + 128] + 32] = mem[_120]
              if not s + 1:
                  revert with 0, 17
              s = s + 1
              continue 
          if not idx + 1:
              revert with 0, 17
          idx = idx + 1
          continue 
      _86 = mem[64]
      mem[mem[64]] = 32
      _88 = mem[96]
      mem[mem[64] + 32] = mem[96]
      idx = 0
      s = 128
      t = mem[64] + 64
      u = mem[64] + (32 * mem[96]) + 64
      while idx < _88:
          mem[t] = u + -_86 - 64
          _114 = mem[s]
          _115 = mem[mem[s]]
          mem[u] = mem[mem[s]]
          v = 0
          w = u + 32
          x = _114 + 32
          while v < _115:
              mem[w] = mem[x]
              v = v + 1
              w = w + 32
              x = x + 32
              continue 
          idx = idx + 1
          s = s + 32
          t = t + 32
          u = u + (32 * _115) + 32
          continue 
  return memory
    from mem[64]
     len u - mem[64]

def unknown1a1b3eba() payable: 
  require calldata.size - 4 >=ΓÇ▓ 160
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require cd('cd', 4).length + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require cd * ('cd', 36).length) + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require cd * ('cd', 68).length) + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 100).length <= 18446744073709551615
  require cd * ('cd', 100).length) + 36 <= calldata.size
  if 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739 == tx.origin:
      if ('cd', 36).length > 18446744073709551615:
          revert with 0, 65
      mem[96] = ('cd', 36).length
      mem[64] = (32 * ('cd', 36).length) + 128
      if ('cd', 36).length:
          mem[128] = 96
          s = 128
          idx = ('cd', 36).length
          while idx - 1:
              mem[s + 32] = 96
              s = s + 32
              idx = idx - 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if ('cd', 68).length > 18446744073709551615:
                  revert with 0, 65
              _1569 = mem[64]
              mem[mem[64]] = ('cd', 68).length
              mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
              if ('cd', 68).length:
                  mem[_1569 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _1569
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if 0 >= ('cd', 68).length:
                  if not idx + 1:
                      revert with 0, 17
                  idx = idx + 1
                  continue 
              if idx >= ('cd', 36).length:
                  revert with 0, 50
              require cd[((32 * idx) + cd == addr(cd[((32 * idx) + cd)
              if 0 >= ('cd', 68).length:
                  revert with 0, 50
              require ('cd', 68) == addr(('cd', 68))
              if not -addr(cd[((32 * idx) + cd):
                  if idx < mem[96]:
              else:
                  static call addr(cd[((32 * idx) + cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(('cd', 68))
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 32
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      else:
          idx = 0
          while idx < ('cd', 36).length:
              if ('cd', 68).length > 18446744073709551615:
                  revert with 0, 65
              _777 = mem[64]
              mem[mem[64]] = ('cd', 68).length
              mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
              if ('cd', 68).length:
                  mem[_777 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _777
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if var66001 >= ('cd', 68).length:
                  if not idx + 1:
                      revert with 0, 17
                  idx = idx + 1
                  continue 
              if idx >= ('cd', 36).length:
                  revert with 0, 50
              require cd[((32 * idx) + cd == addr(cd[((32 * idx) + cd)
              if var66001 >= ('cd', 68).length:
                  revert with 0, 50
              require cd[((32 * var66001) + cd == addr(cd[((32 * var66001) + cd)
              if -addr(cd[((32 * idx) + cd):
                  static call addr(cd[((32 * idx) + cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(cd[((32 * var66001) + cd)
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 32
              else:
                  if idx >= mem[96]:
                      revert with 0, 50
                  if var66001 >= mem[mem[(32 * idx) + 128]]:
                      revert with 0, 50
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          idx = 0
          while idx < cd:
              mem[mem[64] len ('cd', 4).length] = call.data[cd('cd', 4).length]
              mem[('cd', 4).length + mem[64]] = 0
              call this.address with:
                 value call.value wei
                   gas gas_remaining wei
                  args call.data[cd('cd', 4).length]
              if return_data.size:
                  _2381 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                  mem[_2381] = return_data.size
                  mem[_2381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  revert with 0, 'err1'
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
          if ('cd', 36).length > 18446744073709551615:
              revert with 0, 65
  else:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
      if ('cd', 36).length > 18446744073709551615:
          revert with 0, 65
      mem[96] = ('cd', 36).length
      mem[64] = (32 * ('cd', 36).length) + 128
      if ('cd', 36).length:
          mem[128] = 96
          s = 128
          idx = ('cd', 36).length
          while idx - 1:
              mem[s + 32] = 96
              s = s + 32
              idx = idx - 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if ('cd', 68).length > 18446744073709551615:
                  revert with 0, 65
              _1570 = mem[64]
              mem[mem[64]] = ('cd', 68).length
              mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
              if ('cd', 68).length:
                  mem[_1570 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _1570
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if 0 >= ('cd', 68).length:
                  if not idx + 1:
                      revert with 0, 17
                  idx = idx + 1
                  continue 
              if idx >= ('cd', 36).length:
                  revert with 0, 50
              require cd[((32 * idx) + cd == addr(cd[((32 * idx) + cd)
              if 0 >= ('cd', 68).length:
                  revert with 0, 50
              require ('cd', 68) == addr(('cd', 68))
              if not -addr(cd[((32 * idx) + cd):
                  if idx < mem[96]:
              else:
                  static call addr(cd[((32 * idx) + cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(('cd', 68))
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 32
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      else:
          idx = 0
          while idx < ('cd', 36).length:
              if ('cd', 68).length > 18446744073709551615:
                  revert with 0, 65
              _778 = mem[64]
              mem[mem[64]] = ('cd', 68).length
              mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
              if ('cd', 68).length:
                  mem[_778 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
              if idx >= mem[96]:
                  revert with 0, 50
              mem[(32 * idx) + 128] = _778
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
          idx = 0
          while idx < ('cd', 36).length:
              if var67001 >= ('cd', 68).length:
                  if not idx + 1:
                      revert with 0, 17
                  idx = idx + 1
                  continue 
              if idx >= ('cd', 36).length:
                  revert with 0, 50
              require cd[((32 * idx) + cd == addr(cd[((32 * idx) + cd)
              if var67001 >= ('cd', 68).length:
                  revert with 0, 50
              require cd[((32 * var67001) + cd == addr(cd[((32 * var67001) + cd)
              if -addr(cd[((32 * idx) + cd):
                  static call addr(cd[((32 * idx) + cd).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(cd[((32 * var67001) + cd)
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 32
              else:
                  if idx >= mem[96]:
                      revert with 0, 50
                  if var67001 >= mem[mem[(32 * idx) + 128]]:
                      revert with 0, 50
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          idx = 0
          while idx < cd:
              mem[mem[64] len ('cd', 4).length] = call.data[cd('cd', 4).length]
              mem[('cd', 4).length + mem[64]] = 0
              call this.address with:
                 value call.value wei
                   gas gas_remaining wei
                  args call.data[cd('cd', 4).length]
              if return_data.size:
                  _2383 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                  mem[_2383] = return_data.size
                  mem[_2383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  revert with 0, 'err1'
              if not idx + 1:
                  revert with 0, 17
              idx = idx + 1
              continue 
          if ('cd', 36).length > 18446744073709551615:
              revert with 0, 65
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknowne3c5618b(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  if ('cd', 4).length > 18446744073709551615:
      revert with 0, 65
  if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > 18446744073709551615:
      revert with 0, 65
  mem[64] = ceil32(32 * ('cd', 4).length) + 97
  mem[96] = ('cd', 4).length
  require cd * ('cd', 4).length) + 36 <= calldata.size
  idx = cd[4] + 36
  s = 128
  while idx < cd * ('cd', 4).length) + 36:
      require cd[idx] <= 18446744073709551615
      require calldata.size >ΓÇ▓ cdidx] + 67
      if cd[(cdidx] + 36)] > 18446744073709551615:
          revert with 0, 65
      _85 = mem[64]
      if mem[64] + ceil32(32 * cd[(cdidx] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cdidx] + 36)]) + 1 > 18446744073709551615:
          revert with 0, 65
      mem[64] = mem[64] + ceil32(32 * cd[(cdidx] + 36)]) + 1
      mem[_85] = cd[(cdidx] + 36)]
      require cdidx] + (32 * cd[(cdidx] + 36)]) + 68 <= calldata.size
      t = _85 + 32
      u = cdidx] + 68
      while u < cdidx] + (32 * cd[(cdidx] + 36)]) + 68:
          mem[t] = cd[u]
          t = t + 32
          u = u + 32
          continue 
      mem[s] = _85
      idx = idx + 32
      s = s + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  if ('cd', 36).length > 18446744073709551615:
      revert with 0, 65
  _86 = mem[64]
  if mem[64] + ceil32(32 * ('cd', 36).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 36).length) + 1 > 18446744073709551615:
      revert with 0, 65
  mem[64] = mem[64] + ceil32(32 * ('cd', 36).length) + 1
  mem[_86] = ('cd', 36).length
  require cd * ('cd', 36).length) + 36 <= calldata.size
  idx = cd[36] + 36
  s = _86 + 32
  while idx < cd * ('cd', 36).length) + 36:
      require cd[idx] <= 18446744073709551615
      require calldata.size >ΓÇ▓ cdidx] + 67
      if cd[(cdidx] + 36)] > 18446744073709551615:
          revert with 0, 65
      _171 = mem[64]
      if mem[64] + ceil32(32 * cd[(cdidx] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cdidx] + 36)]) + 1 > 18446744073709551615:
          revert with 0, 65
      mem[64] = mem[64] + ceil32(32 * cd[(cdidx] + 36)]) + 1
      mem[_171] = cd[(cdidx] + 36)]
      require cdidx] + (32 * cd[(cdidx] + 36)]) + 68 <= calldata.size
      t = _171 + 32
      u = cdidx] + 68
      while u < cdidx] + (32 * cd[(cdidx] + 36)]) + 68:
          mem[t] = cd[u]
          t = t + 32
          u = u + 32
          continue 
      mem[s] = _171
      idx = idx + 32
      s = s + 32
      continue 
  _168 = mem[96]
  if mem[96] > 18446744073709551615:
      revert with 0, 65
  _169 = mem[64]
  mem[mem[64]] = mem[96]
  mem[64] = mem[64] + (32 * _168) + 32
  if not _168:
      _249 = mem[96]
      idx = 0
      while idx < _249:
          if 0 >= mem[96]:
              revert with 0, 50
          _253 = mem[mem[128]]
          if mem[mem[128]] > 18446744073709551615:
              revert with 0, 65
          _254 = mem[64]
          mem[mem[64]] = mem[mem[128]]
          mem[64] = mem[64] + (32 * _253) + 32
          if _253:
              mem[_254 + 32 len 32 * _253] = call.data[calldata.size len 32 * _253]
          if idx >= mem[_169]:
              revert with 0, 50
          mem[(32 * idx) + _169 + 32] = _254
          if not idx + 1:
              revert with 0, 17
          idx = idx + 1
          continue 
      idx = 0
      while idx < mem[96]:
          if 0 < mem[96]:
              if var66003 >= mem[mem[128]]:
                  if not idx + 1:
                      revert with 0, 17
                  idx = idx + 1
                  continue 
              if idx < mem[96]:
                  _584 = mem[(32 * idx) + 128]
                  _585 = mem[mem[(32 * idx) + 128]]
                  s = var68001
                  while s < _585:
                      if idx >= mem[_86]:
                          revert with 0, 50
                      if s >= mem[mem[(32 * idx) + _86 + 32]]:
                          revert with 0, 50
                      if mem[(32 * s) + mem[(32 * idx) + _86 + 32] + 32] <= mem[(32 * s) + _584 + 32]:
                          if idx >= mem[_169]:
                              revert with 0, 50
                          if s >= mem[mem[(32 * idx) + _169 + 32]]:
                              revert with 0, 50
                          mem[(32 * s) + mem[(32 * idx) + _169 + 32] + 32] = 0
                      else:
                          if idx >= mem[96]:
                              revert with 0, 50
                          if s >= mem[mem[(32 * idx) + 128]]:
                              revert with 0, 50
                          if idx >= mem[_86]:
                              revert with 0, 50
                          if s >= mem[mem[(32 * idx) + _86 + 32]]:
                              revert with 0, 50
                          if mem[(32 * s) + mem[(32 * idx) + _86 + 32] + 32] - mem[(32 * s) + mem[(32 * idx) + 128] + 32] > mem[(32 * s) + mem[(32 * idx) + _86 + 32] + 32]:
                              revert with 0, 17
                          if idx >= mem[_169]:
                              revert with 0, 50
                          if s >= mem[mem[(32 * idx) + _169 + 32]]:
                              revert with 0, 50
                          mem[(32 * s) + mem[(32 * idx) + _169 + 32] + 32] = mem[(32 * s) + mem[(32 * idx) + _86 + 32] + 32] - mem[(32 * s) + mem[(32 * idx) + 128] + 32]
                      if not s + 1:
                          revert with 0, 17
                      if 0 >= mem[96]:
                          revert with 0, 50
                      if s + 1 >= mem[mem[128]]:
                          if not idx + 1:
                              revert with 0, 17
                          idx = idx + 1
                          continue 
                      if idx >= mem[96]:
                          revert with 0, 50
                      s = s + 1
                      continue 
          revert with 0, 50
      _334 = mem[64]
      mem[mem[64]] = 32
      _338 = mem[_169]
      mem[mem[64] + 32] = mem[_169]
      idx = 0
      s = _169 + 32
      t = mem[64] + 64
      u = mem[64] + (32 * _338) + 64
      while idx < _338:
          mem[t] = u + -_334 - 64
          _400 = mem[s]
          _401 = mem[mem[s]]
          mem[u] = mem[mem[s]]
          v = 0
          w = u + 32
          x = _400 + 32
          while v < _401:
              mem[w] = mem[x]
              v = v + 1
              w = w + 32
              x = x + 32
              continue 
          idx = idx + 1
          s = s + 32
          t = t + 32
          u = u + (32 * _401) + 32
          continue 
  else:
      mem[_169 + 32] = 96
      s = _169 + 32
      idx = _168
      while idx - 1:
          mem[s + 32] = 96
          s = s + 32
          idx = idx - 1
          continue 
      _328 = mem[96]
      idx = 0
      while idx < _328:
          if 0 >= mem[96]:
              revert with 0, 50
          _333 = mem[mem[128]]
          if mem[mem[128]] > 18446744073709551615:
              revert with 0, 65
          _337 = mem[64]
          mem[mem[64]] = mem[mem[128]]
          mem[64] = mem[64] + (32 * _333) + 32
          if _333:
              mem[_337 + 32 len 32 * _333] = call.data[calldata.size len 32 * _333]
          if idx >= mem[_169]:
              revert with 0, 50
          mem[(32 * idx) + _169 + 32] = _337
          if not idx + 1:
              revert with 0, 17
          idx = idx + 1
          continue 
      idx = 0
      while idx < mem[96]:
          if 0 < mem[96]:
              if var70003 >= mem[mem[128]]:
                  if not idx + 1:
                      revert with 0, 17
                  idx = idx + 1
                  continue 
              if idx < mem[96]:
                  _643 = mem[(32 * idx) + 128]
                  _644 = mem[mem[(32 * idx) + 128]]
                  s = var72001
                  while s < _644:
                      if idx >= mem[_86]:
                          revert with 0, 50
                      if s >= mem[mem[(32 * idx) + _86 + 32]]:
                          revert with 0, 50
                      if mem[(32 * s) + mem[(32 * idx) + _86 + 32] + 32] <= mem[(32 * s) + _643 + 32]:
                          if idx >= mem[_169]:
                              revert with 0, 50
                          if s >= mem[mem[(32 * idx) + _169 + 32]]:
                              revert with 0, 50
                          mem[(32 * s) + mem[(32 * idx) + _169 + 32] + 32] = 0
                      else:
                          if idx >= mem[96]:
                              revert with 0, 50
                          if s >= mem[mem[(32 * idx) + 128]]:
                              revert with 0, 50
                          if idx >= mem[_86]:
                              revert with 0, 50
                          if s >= mem[mem[(32 * idx) + _86 + 32]]:
                              revert with 0, 50
                          if mem[(32 * s) + mem[(32 * idx) + _86 + 32] + 32] - mem[(32 * s) + mem[(32 * idx) + 128] + 32] > mem[(32 * s) + mem[(32 * idx) + _86 + 32] + 32]:
                              revert with 0, 17
                          if idx >= mem[_169]:
                              revert with 0, 50
                          if s >= mem[mem[(32 * idx) + _169 + 32]]:
                              revert with 0, 50
                          mem[(32 * s) + mem[(32 * idx) + _169 + 32] + 32] = mem[(32 * s) + mem[(32 * idx) + _86 + 32] + 32] - mem[(32 * s) + mem[(32 * idx) + 128] + 32]
                      if not s + 1:
                          revert with 0, 17
                      if 0 >= mem[96]:
                          revert with 0, 50
                      if s + 1 >= mem[mem[128]]:
                          if not idx + 1:
                              revert with 0, 17
                          idx = idx + 1
                          continue 
                      if idx >= mem[96]:
                          revert with 0, 50
                      s = s + 1
                      continue 
          revert with 0, 50
      _410 = mem[64]
      mem[mem[64]] = 32
      _415 = mem[_169]
      mem[mem[64] + 32] = mem[_169]
      idx = 0
      s = _169 + 32
      t = mem[64] + 64
      u = mem[64] + (32 * _415) + 64
      while idx < _415:
          mem[t] = u + -_410 - 64
          _466 = mem[s]
          _467 = mem[mem[s]]
          mem[u] = mem[mem[s]]
          v = 0
          w = u + 32
          x = _466 + 32
          while v < _467:
              mem[w] = mem[x]
              v = v + 1
              w = w + 32
              x = x + 32
              continue 
          idx = idx + 1
          s = s + 32
          t = t + 32
          u = u + (32 * _467) + 32
          continue 
  return memory
    from mem[64]
     len u - mem[64]

def unknownd5a8022d() payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 64
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require cd * ('cd', 4).length) + 36 <= calldata.size
  require cd <= 18446744073709551615
  require calldata.size + -cd >=ΓÇ▓ 256
  if 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739 == tx.origin:
      require ('cd', 36) == uint64(('cd', 36))
      if block.timestamp <= uint64(('cd', 36)):
          require ('cd', 36) == uint64(('cd', 36))
          if block.timestamp >= uint64(('cd', 36)):
              if block.number >= ('cd', 36):
                  require ('cd', 36) <ΓÇ▓ calldata.size + -cd[36] - 35
                  require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                  require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                  if cd[(cd('cd', 36) + 4)] > 0:
                      require ('cd', 36) <ΓÇ▓ calldata.size + -cd[36] - 35
                      require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                      require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                      idx = var58004
                      while idx < cd[(cd('cd', 36) + 4)]:
                          require ('cd', 36) <ΓÇ▓ calldata.size + -cd[36] - 35
                          require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                          require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                          if idx >= cd[(cd('cd', 36) + 4)]:
                              revert with 0, 50
                          require cd[((32 * idx) + cd('cd', 36) + 36)] == addr(cd[((32 * idx) + cd('cd', 36) + 36)])
                          if block.coinbase - addr(cd[((32 * idx) + cd('cd', 36) + 36)]):
                              if not idx + 1:
                                  revert with 0, 17
                              require ('cd', 36) <ΓÇ▓ calldata.size + -cd[36] - 35
                              require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                              require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                              idx = idx + 1
                              continue 
                          idx = 0
                          while idx < ('cd', 4).length:
                              require cd[(cd * idx) + 36)] <ΓÇ▓ calldata.size + -cd[4] - 163
                              require cd[(cd[(cd * idx) + 36)] + cd == addr(cd[(cd[(cd * idx) + 36)] + cd)
                              if not -addr(cd[(cd[(cd * idx) + 36)] + cd):
                                  require cd[(cd[(cd * idx) + 36)] + cd <ΓÇ▓ calldata.size + -cd[(cd * idx) + 36)] + -cd[4] - 67
                                  require cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <= 18446744073709551615
                                  require cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <=ΓÇ▓ calldata.size - cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                                  _339 = mem[64]
                                  mem[64] = mem[64] + ceil32(cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]) + 32
                                  mem[_339] = cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                                  mem[_339 + 32 len cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                                  mem[_339 + cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = 0
                                  create contract with ('cd', ('add', 100, ('cd', ('add', 36, ('cd', 4), ('mask_shl', 251, 0, 5, ('var', 0)))), ('cd', 4))) wei
                                                  code: call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
                              else:
                                  require cd[(cd[(cd * idx) + 36)] + cd == addr(cd[(cd[(cd * idx) + 36)] + cd)
                                  require cd[(cd[(cd * idx) + 36)] + cd <ΓÇ▓ calldata.size + -cd[(cd * idx) + 36)] + -cd[4] - 67
                                  require cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <= 18446744073709551615
                                  require cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <=ΓÇ▓ calldata.size - cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                                  mem[mem[64] len cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                                  mem[cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cdmem[64]] = 0
                                  call addr(cd[(cd[(cd * idx) + 36)] + cd) with:
                                     value cd[(cd[(cd * idx) + 36)] + cdwei
                                       gas gas_remaining wei
                                      args call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                                  if return_data.size:
                                      _351 = mem[64]
                                      mem[64] = mem[64] + ceil32(return_data.size) + 1
                                      mem[_351] = return_data.size
                                      mem[_351 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                  if not ext_call.success:
                                      require cd[(cd[(cd * idx) + 36)] + cd == bool(cd[(cd[(cd * idx) + 36)] + cd[4] + 132)])
                                      if not cd[(cd[(cd * idx) + 36)] + cd[4] + 132)]:
                                          revert with 0, 'aa'
                              if not idx + 1:
                                  revert with 0, 17
                              require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                              require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                              idx = idx + 1
                              continue 
                          require ('cd', 36) == bool(('cd', 36))
                          if ('cd', 36):
                              mem[mem[64] + 4] = this.address
                              static call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[mem[64]] = ext_call.return_data[0]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              _331 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size)
                              require return_data.size >=ΓÇ▓ 32
                              if mem[_331] > 1:
                                  if mem[_331] - 1 > mem[_331]:
                                      revert with 0, 17
                                  require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                  call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 withdrawCount) with:
                                       gas gas_remaining wei
                                      args (mem[_331] - 1)
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                              if eth.balance(this.address) > 1:
                                  if eth.balance(this.address) - 1 > eth.balance(this.address):
                                      revert with 0, 17
                                  call tx.origin with:
                                     value eth.balance(this.address) - 1 wei
                                       gas 2300 * is_zero(value) wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          require ('cd', 36).length == bool(('cd', 36).length)
                          if ('cd', 36).length:
                              if Mask(252, 0, calldata.size) != calldata.size:
                                  revert with 0, 17
                              if 21000 > gas_remaining + 21000:
                                  revert with 0, 17
                              if 21000 > (16 * calldata.size) + 21000:
                                  revert with 0, 17
                              if 14154 > (16 * calldata.size) + 35154:
                                  revert with 0, 17
                              require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                              call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address from, uint256 value) with:
                                   gas gas_remaining wei
                                  args 0x465187f339ddc72f8dccb78ced3319be3897c1b5, (16 * calldata.size) + 35154 / 41947
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          stop
                  else:
                      idx = 0
                      while idx < ('cd', 4).length:
                          require cd[(cd * idx) + 36)] <ΓÇ▓ calldata.size + -cd[4] - 163
                          require cd[(cd[(cd * idx) + 36)] + cd == addr(cd[(cd[(cd * idx) + 36)] + cd)
                          if not -addr(cd[(cd[(cd * idx) + 36)] + cd):
                              require cd[(cd[(cd * idx) + 36)] + cd <ΓÇ▓ calldata.size + -cd[(cd * idx) + 36)] + -cd[4] - 67
                              require cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <= 18446744073709551615
                              require cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <=ΓÇ▓ calldata.size - cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                              _123 = mem[64]
                              mem[64] = mem[64] + ceil32(cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]) + 32
                              mem[_123] = cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                              mem[_123 + 32 len cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                              mem[_123 + cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = 0
                              create contract with ('cd', ('add', 100, ('cd', ('add', 36, ('cd', 4), ('mask_shl', 251, 0, 5, ('var', 0)))), ('cd', 4))) wei
                                              code: call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
                          else:
                              require cd[(cd[(cd * idx) + 36)] + cd == addr(cd[(cd[(cd * idx) + 36)] + cd)
                              require cd[(cd[(cd * idx) + 36)] + cd <ΓÇ▓ calldata.size + -cd[(cd * idx) + 36)] + -cd[4] - 67
                              require cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <= 18446744073709551615
                              require cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <=ΓÇ▓ calldata.size - cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                              mem[mem[64] len cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                              mem[cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cdmem[64]] = 0
                              call addr(cd[(cd[(cd * idx) + 36)] + cd) with:
                                 value cd[(cd[(cd * idx) + 36)] + cdwei
                                   gas gas_remaining wei
                                  args call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                              if return_data.size:
                                  _135 = mem[64]
                                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                                  mem[_135] = return_data.size
                                  mem[_135 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if not ext_call.success:
                                  require cd[(cd[(cd * idx) + 36)] + cd == bool(cd[(cd[(cd * idx) + 36)] + cd[4] + 132)])
                                  if not cd[(cd[(cd * idx) + 36)] + cd[4] + 132)]:
                                      revert with 0, 'aa'
                          if not idx + 1:
                              revert with 0, 17
                          idx = idx + 1
                          continue 
                      require ('cd', 36) == bool(('cd', 36))
                      if ('cd', 36):
                          mem[mem[64] + 4] = this.address
                          static call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[mem[64]] = ext_call.return_data[0]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          _115 = mem[64]
                          mem[64] = mem[64] + ceil32(return_data.size)
                          require return_data.size >=ΓÇ▓ 32
                          if mem[_115] > 1:
                              if mem[_115] - 1 > mem[_115]:
                                  revert with 0, 17
                              require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                              call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (mem[_115] - 1)
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          if eth.balance(this.address) > 1:
                              if eth.balance(this.address) - 1 > eth.balance(this.address):
                                  revert with 0, 17
                              call tx.origin with:
                                 value eth.balance(this.address) - 1 wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      require ('cd', 36).length == bool(('cd', 36).length)
                      if ('cd', 36).length:
                          if Mask(252, 0, calldata.size) != calldata.size:
                              revert with 0, 17
                          if 21000 > gas_remaining + 21000:
                              revert with 0, 17
                          if 21000 > (16 * calldata.size) + 21000:
                              revert with 0, 17
                          if 14154 > (16 * calldata.size) + 35154:
                              revert with 0, 17
                          require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                          call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address from, uint256 value) with:
                               gas gas_remaining wei
                              args 0x465187f339ddc72f8dccb78ced3319be3897c1b5, (16 * calldata.size) + 35154 / 41947
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
  else:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
      require ('cd', 36) == uint64(('cd', 36))
      if block.timestamp <= uint64(('cd', 36)):
          require ('cd', 36) == uint64(('cd', 36))
          if block.timestamp >= uint64(('cd', 36)):
              if block.number >= ('cd', 36):
                  require ('cd', 36) <ΓÇ▓ calldata.size + -cd[36] - 35
                  require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                  require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                  if cd[(cd('cd', 36) + 4)] > 0:
                      require ('cd', 36) <ΓÇ▓ calldata.size + -cd[36] - 35
                      require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                      require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                      idx = var59004
                      while idx < cd[(cd('cd', 36) + 4)]:
                          require ('cd', 36) <ΓÇ▓ calldata.size + -cd[36] - 35
                          require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                          require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                          if idx >= cd[(cd('cd', 36) + 4)]:
                              revert with 0, 50
                          require cd[((32 * idx) + cd('cd', 36) + 36)] == addr(cd[((32 * idx) + cd('cd', 36) + 36)])
                          if block.coinbase - addr(cd[((32 * idx) + cd('cd', 36) + 36)]):
                              if not idx + 1:
                                  revert with 0, 17
                              require ('cd', 36) <ΓÇ▓ calldata.size + -cd[36] - 35
                              require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                              require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                              idx = idx + 1
                              continue 
                          idx = 0
                          while idx < ('cd', 4).length:
                              require cd[(cd * idx) + 36)] <ΓÇ▓ calldata.size + -cd[4] - 163
                              require cd[(cd[(cd * idx) + 36)] + cd == addr(cd[(cd[(cd * idx) + 36)] + cd)
                              if not -addr(cd[(cd[(cd * idx) + 36)] + cd):
                                  require cd[(cd[(cd * idx) + 36)] + cd <ΓÇ▓ calldata.size + -cd[(cd * idx) + 36)] + -cd[4] - 67
                                  require cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <= 18446744073709551615
                                  require cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <=ΓÇ▓ calldata.size - cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                                  _343 = mem[64]
                                  mem[64] = mem[64] + ceil32(cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]) + 32
                                  mem[_343] = cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                                  mem[_343 + 32 len cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                                  mem[_343 + cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = 0
                                  create contract with ('cd', ('add', 100, ('cd', ('add', 36, ('cd', 4), ('mask_shl', 251, 0, 5, ('var', 0)))), ('cd', 4))) wei
                                                  code: call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
                              else:
                                  require cd[(cd[(cd * idx) + 36)] + cd == addr(cd[(cd[(cd * idx) + 36)] + cd)
                                  require cd[(cd[(cd * idx) + 36)] + cd <ΓÇ▓ calldata.size + -cd[(cd * idx) + 36)] + -cd[4] - 67
                                  require cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <= 18446744073709551615
                                  require cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <=ΓÇ▓ calldata.size - cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                                  _346 = mem[64]
                                  mem[mem[64] len cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                                  mem[cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cdmem[64]] = 0
                                  call addr(cd[(cd[(cd * idx) + 36)] + cd).mem[mem[64] len 4] with:
                                     value cd[(cd[(cd * idx) + 36)] + cdwei
                                       gas gas_remaining wei
                                      args mem[mem[64] + 4 len cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd_346 + -mem[64] - 4]
                                  if return_data.size:
                                      _352 = mem[64]
                                      mem[64] = mem[64] + ceil32(return_data.size) + 1
                                      mem[_352] = return_data.size
                                      mem[_352 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                  if not ext_call.success:
                                      require cd[(cd[(cd * idx) + 36)] + cd == bool(cd[(cd[(cd * idx) + 36)] + cd[4] + 132)])
                                      if not cd[(cd[(cd * idx) + 36)] + cd[4] + 132)]:
                                          revert with 0, 'aa'
                              if not idx + 1:
                                  revert with 0, 17
                              require cd[(cd('cd', 36) + 4)] <= 18446744073709551615
                              require cd('cd', 36) + 36 <=ΓÇ▓ calldata.size - (32 * cd[(cd('cd', 36) + 4)])
                              idx = idx + 1
                              continue 
                          require ('cd', 36) == bool(('cd', 36))
                          if ('cd', 36):
                              mem[mem[64] + 4] = this.address
                              static call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[mem[64]] = ext_call.return_data[0]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              _332 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size)
                              require return_data.size >=ΓÇ▓ 32
                              if mem[_332] > 1:
                                  if mem[_332] - 1 > mem[_332]:
                                      revert with 0, 17
                                  require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                  call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 withdrawCount) with:
                                       gas gas_remaining wei
                                      args (mem[_332] - 1)
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                              if eth.balance(this.address) > 1:
                                  if eth.balance(this.address) - 1 > eth.balance(this.address):
                                      revert with 0, 17
                                  call tx.origin with:
                                     value eth.balance(this.address) - 1 wei
                                       gas 2300 * is_zero(value) wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          require ('cd', 36).length == bool(('cd', 36).length)
                          if ('cd', 36).length:
                              if Mask(252, 0, calldata.size) != calldata.size:
                                  revert with 0, 17
                              if 21000 > gas_remaining + 21000:
                                  revert with 0, 17
                              if 21000 > (16 * calldata.size) + 21000:
                                  revert with 0, 17
                              if 14154 > (16 * calldata.size) + 35154:
                                  revert with 0, 17
                              require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                              call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address from, uint256 value) with:
                                   gas gas_remaining wei
                                  args 0x465187f339ddc72f8dccb78ced3319be3897c1b5, (16 * calldata.size) + 35154 / 41947
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          stop
                  else:
                      idx = 0
                      while idx < ('cd', 4).length:
                          require cd[(cd * idx) + 36)] <ΓÇ▓ calldata.size + -cd[4] - 163
                          require cd[(cd[(cd * idx) + 36)] + cd == addr(cd[(cd[(cd * idx) + 36)] + cd)
                          if not -addr(cd[(cd[(cd * idx) + 36)] + cd):
                              require cd[(cd[(cd * idx) + 36)] + cd <ΓÇ▓ calldata.size + -cd[(cd * idx) + 36)] + -cd[4] - 67
                              require cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <= 18446744073709551615
                              require cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <=ΓÇ▓ calldata.size - cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                              _127 = mem[64]
                              mem[64] = mem[64] + ceil32(cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]) + 32
                              mem[_127] = cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                              mem[_127 + 32 len cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                              mem[_127 + cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = 0
                              create contract with ('cd', ('add', 100, ('cd', ('add', 36, ('cd', 4), ('mask_shl', 251, 0, 5, ('var', 0)))), ('cd', 4))) wei
                                              code: call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
                          else:
                              require cd[(cd[(cd * idx) + 36)] + cd == addr(cd[(cd[(cd * idx) + 36)] + cd)
                              require cd[(cd[(cd * idx) + 36)] + cd <ΓÇ▓ calldata.size + -cd[(cd * idx) + 36)] + -cd[4] - 67
                              require cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <= 18446744073709551615
                              require cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd <=ΓÇ▓ calldata.size - cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]
                              mem[mem[64] len cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd] = call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                              mem[cd[(cd[(cd * idx) + 36)] + cd * idx) + 36)] + cdmem[64]] = 0
                              call addr(cd[(cd[(cd * idx) + 36)] + cd) with:
                                 value cd[(cd[(cd * idx) + 36)] + cdwei
                                   gas gas_remaining wei
                                  args call.data[cd[(cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd * idx) + 36)] + cd[4] + 68)] + 36)]]
                              if return_data.size:
                                  _136 = mem[64]
                                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                                  mem[_136] = return_data.size
                                  mem[_136 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if not ext_call.success:
                                  require cd[(cd[(cd * idx) + 36)] + cd == bool(cd[(cd[(cd * idx) + 36)] + cd[4] + 132)])
                                  if not cd[(cd[(cd * idx) + 36)] + cd[4] + 132)]:
                                      revert with 0, 'aa'
                          if not idx + 1:
                              revert with 0, 17
                          idx = idx + 1
                          continue 
                      require ('cd', 36) == bool(('cd', 36))
                      if ('cd', 36):
                          mem[mem[64] + 4] = this.address
                          static call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[mem[64]] = ext_call.return_data[0]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          _116 = mem[64]
                          mem[64] = mem[64] + ceil32(return_data.size)
                          require return_data.size >=ΓÇ▓ 32
                          if mem[_116] > 1:
                              if mem[_116] - 1 > mem[_116]:
                                  revert with 0, 17
                              require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                              call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (mem[_116] - 1)
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          if eth.balance(this.address) > 1:
                              if eth.balance(this.address) - 1 > eth.balance(this.address):
                                  revert with 0, 17
                              call tx.origin with:
                                 value eth.balance(this.address) - 1 wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      require ('cd', 36).length == bool(('cd', 36).length)
                      if ('cd', 36).length:
                          if Mask(252, 0, calldata.size) != calldata.size:
                              revert with 0, 17
                          if 21000 > gas_remaining + 21000:
                              revert with 0, 17
                          if 21000 > (16 * calldata.size) + 21000:
                              revert with 0, 17
                          if 14154 > (16 * calldata.size) + 35154:
                              revert with 0, 17
                          require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                          call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address from, uint256 value) with:
                               gas gas_remaining wei
                              args 0x465187f339ddc72f8dccb78ced3319be3897c1b5, (16 * calldata.size) + 35154 / 41947
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]

def unknown3babff82(array _param1, uint256 _param2, uint256 _param3, uint256 _param4, uint256 _param5) payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 160
  require _param1 <= 18446744073709551615
  require _param1 + 35 <ΓÇ▓ calldata.size
  require _param1.length <= 18446744073709551615
  require _param1 + _param1.length + 36 <= calldata.size
  require _param2 == addr(_param2)
  require _param3 == addr(_param3)
  if 0xf576c7f17bc5a834f8bfe6f810a09eb44818c739 == tx.origin:
      if not -addr(_param2):
          idx = 0
          while idx < _param5:
              if not -addr(_param2):
                  mem[mem[64] len _param1.length] = _param1[all]
                  mem[_param1.length + mem[64]] = 0
                  call this.address with:
                     value call.value wei
                       gas gas_remaining wei
                      args _param1[all]
                  if not return_data.size:
                      if not -addr(_param2):
                          if not ext_call.success:
                              if eth.balance(_param3) >= eth.balance(_param3):
                                  if 0 > eth.balance(_param3):
                                      revert with 0, 17
                          else:
                              if eth.balance(_param3) >= eth.balance(_param3):
                                  if 0 > eth.balance(_param3):
                                      revert with 0, 17
                                  if 0 >= _param4:
                                      if not idx + 1:
                                          revert with 0, 17
                                      idx = idx + 1
                                      continue 
                                  if eth.balance(_param3) >= eth.balance(_param3):
                                      if 0 > eth.balance(_param3):
                                          revert with 0, 17
                          return idx, 0
                      mem[mem[64] + 4] = addr(_param3)
                      static call addr(_param2).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_param3)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _571 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if mem[_571] < eth.balance(_param3):
                          return idx, 0
                      if mem[_571] - eth.balance(_param3) > mem[_571]:
                          revert with 0, 17
                      if ext_call.success:
                          if mem[_571] - eth.balance(_param3) >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              idx = idx + 1
                              continue 
                      return idx, mem[_571] - eth.balance(_param3)
                  _538 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                  mem[_538] = return_data.size
                  mem[_538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if not -addr(_param2):
                      if not ext_call.success:
                          if eth.balance(_param3) >= eth.balance(_param3):
                              if 0 > eth.balance(_param3):
                                  revert with 0, 17
                      else:
                          if eth.balance(_param3) >= eth.balance(_param3):
                              if 0 > eth.balance(_param3):
                                  revert with 0, 17
                              if 0 >= _param4:
                                  if not idx + 1:
                                      revert with 0, 17
                                  idx = idx + 1
                                  continue 
                              if eth.balance(_param3) >= eth.balance(_param3):
                                  if 0 > eth.balance(_param3):
                                      revert with 0, 17
                      return idx, 0
                  mem[mem[64] + 4] = addr(_param3)
                  static call addr(_param2).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_param3)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _572 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if mem[_572] < eth.balance(_param3):
                      return idx, 0
                  if mem[_572] - eth.balance(_param3) > mem[_572]:
                      revert with 0, 17
                  if ext_call.success:
                      if mem[_572] - eth.balance(_param3) >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          idx = idx + 1
                          continue 
                  return idx, mem[_572] - eth.balance(_param3)
              mem[mem[64] + 4] = addr(_param3)
              static call addr(_param2).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(_param3)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _510 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _524 = mem[_510]
              mem[mem[64] len _param1.length] = _param1[all]
              mem[_param1.length + mem[64]] = 0
              call this.address with:
                 value call.value wei
                   gas gas_remaining wei
                  args _param1[all]
              if not return_data.size:
                  if not -addr(_param2):
                      if ext_call.success:
                          if eth.balance(_param3) >= _524:
                              if eth.balance(_param3) - _524 > eth.balance(_param3):
                                  revert with 0, 17
                              if eth.balance(_param3) - _524 >= _param4:
                                  if not idx + 1:
                                      revert with 0, 17
                                  idx = idx + 1
                                  continue 
                      if eth.balance(_param3) >= eth.balance(_param3):
                          if 0 > eth.balance(_param3):
                              revert with 0, 17
                      return idx, 0
                  mem[mem[64] + 4] = addr(_param3)
                  static call addr(_param2).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_param3)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _605 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.success:
                      if mem[_605] >= _524:
                          if mem[_605] - _524 > mem[_605]:
                              revert with 0, 17
                          if mem[_605] - _524 >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              idx = idx + 1
                              continue 
                  if mem[_605] < eth.balance(_param3):
                      return idx, 0
                  if mem[_605] - eth.balance(_param3) > mem[_605]:
                      revert with 0, 17
                  return idx, mem[_605] - eth.balance(_param3)
              _570 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_570] = return_data.size
              mem[_570 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not -addr(_param2):
                  if ext_call.success:
                      if eth.balance(_param3) >= _524:
                          if eth.balance(_param3) - _524 > eth.balance(_param3):
                              revert with 0, 17
                          if eth.balance(_param3) - _524 >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              idx = idx + 1
                              continue 
                  if eth.balance(_param3) >= eth.balance(_param3):
                      if 0 > eth.balance(_param3):
                          revert with 0, 17
                  return idx, 0
              mem[mem[64] + 4] = addr(_param3)
              static call addr(_param2).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(_param3)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _606 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if ext_call.success:
                  if mem[_606] >= _524:
                      if mem[_606] - _524 > mem[_606]:
                          revert with 0, 17
                      if mem[_606] - _524 >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          idx = idx + 1
                          continue 
              if mem[_606] < eth.balance(_param3):
                  return idx, 0
              if mem[_606] - eth.balance(_param3) > mem[_606]:
                  revert with 0, 17
              return idx, mem[_606] - eth.balance(_param3)
          if eth.balance(_param3) >= eth.balance(_param3):
              if 0 > eth.balance(_param3):
                  revert with 0, 17
          return idx, 0
      mem[100] = addr(_param3)
      static call addr(_param2).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args addr(_param3)
      mem[96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      mem[64] = ceil32(return_data.size) + 96
      require return_data.size >=ΓÇ▓ 32
      s = mem[96]
      idx = 0
      while idx < _param5:
          if not -addr(_param2):
              mem[mem[64] len _param1.length] = _param1[all]
              mem[_param1.length + mem[64]] = 0
              call this.address with:
                 value call.value wei
                   gas gas_remaining wei
                  args _param1[all]
              if not return_data.size:
                  if not -addr(_param2):
                      if ext_call.success:
                          if eth.balance(_param3) >= eth.balance(_param3):
                              if 0 > eth.balance(_param3):
                                  revert with 0, 17
                              if 0 >= _param4:
                                  if not idx + 1:
                                      revert with 0, 17
                                  s = eth.balance(_param3)
                                  idx = idx + 1
                                  continue 
                      if eth.balance(_param3) < ext_call.return_data[0]:
                          return idx, 0
                      if eth.balance(_param3) - ext_call.return_data > eth.balance(_param3):
                          revert with 0, 17
                      return idx, eth.balance(_param3) - ext_call.return_data[0]
                  mem[mem[64] + 4] = addr(_param3)
                  static call addr(_param2).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_param3)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _568 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.success:
                      if mem[_568] >= eth.balance(_param3):
                          if mem[_568] - eth.balance(_param3) > mem[_568]:
                              revert with 0, 17
                          if mem[_568] - eth.balance(_param3) >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              s = mem[_568]
                              idx = idx + 1
                              continue 
                  if mem[_568] < ext_call.return_data[0]:
                      return idx, 0
                  if mem[_568] - ext_call.return_data > mem[_568]:
                      revert with 0, 17
                  return idx, mem[_568] - ext_call.return_data[0]
              _536 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_536] = return_data.size
              mem[_536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not -addr(_param2):
                  if ext_call.success:
                      if eth.balance(_param3) >= eth.balance(_param3):
                          if 0 > eth.balance(_param3):
                              revert with 0, 17
                          if 0 >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              s = eth.balance(_param3)
                              idx = idx + 1
                              continue 
                  if eth.balance(_param3) < ext_call.return_data[0]:
                      return idx, 0
                  if eth.balance(_param3) - ext_call.return_data > eth.balance(_param3):
                      revert with 0, 17
                  return idx, eth.balance(_param3) - ext_call.return_data[0]
              mem[mem[64] + 4] = addr(_param3)
              static call addr(_param2).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(_param3)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _569 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if ext_call.success:
                  if mem[_569] >= eth.balance(_param3):
                      if mem[_569] - eth.balance(_param3) > mem[_569]:
                          revert with 0, 17
                      if mem[_569] - eth.balance(_param3) >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          s = mem[_569]
                          idx = idx + 1
                          continue 
              if mem[_569] < ext_call.return_data[0]:
                  return idx, 0
              if mem[_569] - ext_call.return_data > mem[_569]:
                  revert with 0, 17
              return idx, mem[_569] - ext_call.return_data[0]
          mem[mem[64] + 4] = addr(_param3)
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param3)
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _508 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _523 = mem[_508]
          mem[mem[64] len _param1.length] = _param1[all]
          mem[_param1.length + mem[64]] = 0
          call this.address with:
             value call.value wei
               gas gas_remaining wei
              args _param1[all]
          if not return_data.size:
              if not -addr(_param2):
                  if ext_call.success:
                      if eth.balance(_param3) >= _523:
                          if eth.balance(_param3) - _523 > eth.balance(_param3):
                              revert with 0, 17
                          if eth.balance(_param3) - _523 >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              s = eth.balance(_param3)
                              idx = idx + 1
                              continue 
                  if eth.balance(_param3) < ext_call.return_data[0]:
                      return idx, 0
                  if eth.balance(_param3) - ext_call.return_data > eth.balance(_param3):
                      revert with 0, 17
                  return idx, eth.balance(_param3) - ext_call.return_data[0]
              mem[mem[64] + 4] = addr(_param3)
              static call addr(_param2).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(_param3)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _603 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if ext_call.success:
                  if mem[_603] >= _523:
                      if mem[_603] - _523 > mem[_603]:
                          revert with 0, 17
                      if mem[_603] - _523 >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          s = mem[_603]
                          idx = idx + 1
                          continue 
              if mem[_603] < ext_call.return_data[0]:
                  return idx, 0
              if mem[_603] - ext_call.return_data > mem[_603]:
                  revert with 0, 17
              return idx, mem[_603] - ext_call.return_data[0]
          _567 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size) + 1
          mem[_567] = return_data.size
          mem[_567 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if not -addr(_param2):
              if ext_call.success:
                  if eth.balance(_param3) >= _523:
                      if eth.balance(_param3) - _523 > eth.balance(_param3):
                          revert with 0, 17
                      if eth.balance(_param3) - _523 >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          s = eth.balance(_param3)
                          idx = idx + 1
                          continue 
              if eth.balance(_param3) < ext_call.return_data[0]:
                  return idx, 0
              if eth.balance(_param3) - ext_call.return_data > eth.balance(_param3):
                  revert with 0, 17
              return idx, eth.balance(_param3) - ext_call.return_data[0]
          mem[mem[64] + 4] = addr(_param3)
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param3)
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _604 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          if ext_call.success:
              if mem[_604] >= _523:
                  if mem[_604] - _523 > mem[_604]:
                      revert with 0, 17
                  if mem[_604] - _523 >= _param4:
                      if not idx + 1:
                          revert with 0, 17
                      s = mem[_604]
                      idx = idx + 1
                      continue 
          if mem[_604] < ext_call.return_data[0]:
              return idx, 0
          if mem[_604] - ext_call.return_data > mem[_604]:
              revert with 0, 17
          return idx, mem[_604] - ext_call.return_data[0]
  else:
      if tx.origin != 0x465187f339ddc72f8dccb78ced3319be3897c1b5:
          revert with 0, '!=os'
      if not -addr(_param2):
          idx = 0
          while idx < _param5:
              if not -addr(_param2):
                  mem[mem[64] len _param1.length] = _param1[all]
                  mem[_param1.length + mem[64]] = 0
                  call this.address with:
                     value call.value wei
                       gas gas_remaining wei
                      args _param1[all]
                  if not return_data.size:
                      if not -addr(_param2):
                          if not ext_call.success:
                              if eth.balance(_param3) >= eth.balance(_param3):
                                  if 0 > eth.balance(_param3):
                                      revert with 0, 17
                          else:
                              if eth.balance(_param3) >= eth.balance(_param3):
                                  if 0 > eth.balance(_param3):
                                      revert with 0, 17
                                  if 0 >= _param4:
                                      if not idx + 1:
                                          revert with 0, 17
                                      idx = idx + 1
                                      continue 
                                  if eth.balance(_param3) >= eth.balance(_param3):
                                      if 0 > eth.balance(_param3):
                                          revert with 0, 17
                          return idx, 0
                      mem[mem[64] + 4] = addr(_param3)
                      static call addr(_param2).balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args addr(_param3)
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _577 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      if mem[_577] < eth.balance(_param3):
                          return idx, 0
                      if mem[_577] - eth.balance(_param3) > mem[_577]:
                          revert with 0, 17
                      if ext_call.success:
                          if mem[_577] - eth.balance(_param3) >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              idx = idx + 1
                              continue 
                      return idx, mem[_577] - eth.balance(_param3)
                  _542 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                  mem[_542] = return_data.size
                  mem[_542 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if not -addr(_param2):
                      if not ext_call.success:
                          if eth.balance(_param3) >= eth.balance(_param3):
                              if 0 > eth.balance(_param3):
                                  revert with 0, 17
                      else:
                          if eth.balance(_param3) >= eth.balance(_param3):
                              if 0 > eth.balance(_param3):
                                  revert with 0, 17
                              if 0 >= _param4:
                                  if not idx + 1:
                                      revert with 0, 17
                                  idx = idx + 1
                                  continue 
                              if eth.balance(_param3) >= eth.balance(_param3):
                                  if 0 > eth.balance(_param3):
                                      revert with 0, 17
                      return idx, 0
                  mem[mem[64] + 4] = addr(_param3)
                  static call addr(_param2).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_param3)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _578 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if mem[_578] < eth.balance(_param3):
                      return idx, 0
                  if mem[_578] - eth.balance(_param3) > mem[_578]:
                      revert with 0, 17
                  if ext_call.success:
                      if mem[_578] - eth.balance(_param3) >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          idx = idx + 1
                          continue 
                  return idx, mem[_578] - eth.balance(_param3)
              mem[mem[64] + 4] = addr(_param3)
              static call addr(_param2).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(_param3)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _514 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _526 = mem[_514]
              mem[mem[64] len _param1.length] = _param1[all]
              mem[_param1.length + mem[64]] = 0
              call this.address with:
                 value call.value wei
                   gas gas_remaining wei
                  args _param1[all]
              if not return_data.size:
                  if not -addr(_param2):
                      if ext_call.success:
                          if eth.balance(_param3) >= _526:
                              if eth.balance(_param3) - _526 > eth.balance(_param3):
                                  revert with 0, 17
                              if eth.balance(_param3) - _526 >= _param4:
                                  if not idx + 1:
                                      revert with 0, 17
                                  idx = idx + 1
                                  continue 
                      if eth.balance(_param3) >= eth.balance(_param3):
                          if 0 > eth.balance(_param3):
                              revert with 0, 17
                      return idx, 0
                  mem[mem[64] + 4] = addr(_param3)
                  static call addr(_param2).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_param3)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _609 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.success:
                      if mem[_609] >= _526:
                          if mem[_609] - _526 > mem[_609]:
                              revert with 0, 17
                          if mem[_609] - _526 >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              idx = idx + 1
                              continue 
                  if mem[_609] < eth.balance(_param3):
                      return idx, 0
                  if mem[_609] - eth.balance(_param3) > mem[_609]:
                      revert with 0, 17
                  return idx, mem[_609] - eth.balance(_param3)
              _576 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_576] = return_data.size
              mem[_576 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not -addr(_param2):
                  if ext_call.success:
                      if eth.balance(_param3) >= _526:
                          if eth.balance(_param3) - _526 > eth.balance(_param3):
                              revert with 0, 17
                          if eth.balance(_param3) - _526 >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              idx = idx + 1
                              continue 
                  if eth.balance(_param3) >= eth.balance(_param3):
                      if 0 > eth.balance(_param3):
                          revert with 0, 17
                  return idx, 0
              mem[mem[64] + 4] = addr(_param3)
              static call addr(_param2).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(_param3)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _610 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if ext_call.success:
                  if mem[_610] >= _526:
                      if mem[_610] - _526 > mem[_610]:
                          revert with 0, 17
                      if mem[_610] - _526 >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          idx = idx + 1
                          continue 
              if mem[_610] < eth.balance(_param3):
                  return idx, 0
              if mem[_610] - eth.balance(_param3) > mem[_610]:
                  revert with 0, 17
              return idx, mem[_610] - eth.balance(_param3)
          if eth.balance(_param3) >= eth.balance(_param3):
              if 0 > eth.balance(_param3):
                  revert with 0, 17
          return idx, 0
      mem[100] = addr(_param3)
      static call addr(_param2).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args addr(_param3)
      mem[96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      mem[64] = ceil32(return_data.size) + 96
      require return_data.size >=ΓÇ▓ 32
      s = mem[96]
      idx = 0
      while idx < _param5:
          if not -addr(_param2):
              mem[mem[64] len _param1.length] = _param1[all]
              mem[_param1.length + mem[64]] = 0
              call this.address with:
                 value call.value wei
                   gas gas_remaining wei
                  args _param1[all]
              if not return_data.size:
                  if not -addr(_param2):
                      if ext_call.success:
                          if eth.balance(_param3) >= eth.balance(_param3):
                              if 0 > eth.balance(_param3):
                                  revert with 0, 17
                              if 0 >= _param4:
                                  if not idx + 1:
                                      revert with 0, 17
                                  s = eth.balance(_param3)
                                  idx = idx + 1
                                  continue 
                      if eth.balance(_param3) < ext_call.return_data[0]:
                          return idx, 0
                      if eth.balance(_param3) - ext_call.return_data > eth.balance(_param3):
                          revert with 0, 17
                      return idx, eth.balance(_param3) - ext_call.return_data[0]
                  mem[mem[64] + 4] = addr(_param3)
                  static call addr(_param2).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_param3)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _574 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.success:
                      if mem[_574] >= eth.balance(_param3):
                          if mem[_574] - eth.balance(_param3) > mem[_574]:
                              revert with 0, 17
                          if mem[_574] - eth.balance(_param3) >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              s = mem[_574]
                              idx = idx + 1
                              continue 
                  if mem[_574] < ext_call.return_data[0]:
                      return idx, 0
                  if mem[_574] - ext_call.return_data > mem[_574]:
                      revert with 0, 17
                  return idx, mem[_574] - ext_call.return_data[0]
              _540 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_540] = return_data.size
              mem[_540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not -addr(_param2):
                  if ext_call.success:
                      if eth.balance(_param3) >= eth.balance(_param3):
                          if 0 > eth.balance(_param3):
                              revert with 0, 17
                          if 0 >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              s = eth.balance(_param3)
                              idx = idx + 1
                              continue 
                  if eth.balance(_param3) < ext_call.return_data[0]:
                      return idx, 0
                  if eth.balance(_param3) - ext_call.return_data > eth.balance(_param3):
                      revert with 0, 17
                  return idx, eth.balance(_param3) - ext_call.return_data[0]
              mem[mem[64] + 4] = addr(_param3)
              static call addr(_param2).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(_param3)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _575 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if ext_call.success:
                  if mem[_575] >= eth.balance(_param3):
                      if mem[_575] - eth.balance(_param3) > mem[_575]:
                          revert with 0, 17
                      if mem[_575] - eth.balance(_param3) >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          s = mem[_575]
                          idx = idx + 1
                          continue 
              if mem[_575] < ext_call.return_data[0]:
                  return idx, 0
              if mem[_575] - ext_call.return_data > mem[_575]:
                  revert with 0, 17
              return idx, mem[_575] - ext_call.return_data[0]
          mem[mem[64] + 4] = addr(_param3)
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param3)
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _512 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _525 = mem[_512]
          mem[mem[64] len _param1.length] = _param1[all]
          mem[_param1.length + mem[64]] = 0
          call this.address with:
             value call.value wei
               gas gas_remaining wei
              args _param1[all]
          if not return_data.size:
              if not -addr(_param2):
                  if ext_call.success:
                      if eth.balance(_param3) >= _525:
                          if eth.balance(_param3) - _525 > eth.balance(_param3):
                              revert with 0, 17
                          if eth.balance(_param3) - _525 >= _param4:
                              if not idx + 1:
                                  revert with 0, 17
                              s = eth.balance(_param3)
                              idx = idx + 1
                              continue 
                  if eth.balance(_param3) < ext_call.return_data[0]:
                      return idx, 0
                  if eth.balance(_param3) - ext_call.return_data > eth.balance(_param3):
                      revert with 0, 17
                  return idx, eth.balance(_param3) - ext_call.return_data[0]
              mem[mem[64] + 4] = addr(_param3)
              static call addr(_param2).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(_param3)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _607 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              if ext_call.success:
                  if mem[_607] >= _525:
                      if mem[_607] - _525 > mem[_607]:
                          revert with 0, 17
                      if mem[_607] - _525 >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          s = mem[_607]
                          idx = idx + 1
                          continue 
              if mem[_607] < ext_call.return_data[0]:
                  return idx, 0
              if mem[_607] - ext_call.return_data > mem[_607]:
                  revert with 0, 17
              return idx, mem[_607] - ext_call.return_data[0]
          _573 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size) + 1
          mem[_573] = return_data.size
          mem[_573 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if not -addr(_param2):
              if ext_call.success:
                  if eth.balance(_param3) >= _525:
                      if eth.balance(_param3) - _525 > eth.balance(_param3):
                          revert with 0, 17
                      if eth.balance(_param3) - _525 >= _param4:
                          if not idx + 1:
                              revert with 0, 17
                          s = eth.balance(_param3)
                          idx = idx + 1
                          continue 
              if eth.balance(_param3) < ext_call.return_data[0]:
                  return idx, 0
              if eth.balance(_param3) - ext_call.return_data > eth.balance(_param3):
                  revert with 0, 17
              return idx, eth.balance(_param3) - ext_call.return_data[0]
          mem[mem[64] + 4] = addr(_param3)
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param3)
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _608 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          if ext_call.success:
              if mem[_608] >= _525:
                  if mem[_608] - _525 > mem[_608]:
                      revert with 0, 17
                  if mem[_608] - _525 >= _param4:
                      if not idx + 1:
                          revert with 0, 17
                      s = mem[_608]
                      idx = idx + 1
                      continue 
          if mem[_608] < ext_call.return_data[0]:
              return idx, 0
          if mem[_608] - ext_call.return_data > mem[_608]:
              revert with 0, 17
          return idx, mem[_608] - ext_call.return_data[0]
  if s < ext_call.return_data[0]:
      return idx, 0
  if s - ext_call.return_data > s:
      revert with 0, 17
  return idx, s - ext_call.return_data[0]


