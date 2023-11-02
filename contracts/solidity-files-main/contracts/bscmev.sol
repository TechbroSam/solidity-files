# Palkeoramix decompiler. 

const unknown3564a07c = addr(sha3(0, addr(this.address), eth.balance(this.address), 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6))

def storage:
  owner is addr at storage 0
  totalMinted is uint256 at storage 1
  stor2 is mapping of uint8 at storage 2

def admin(address _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == _param1
  return bool(stor2[_param1])

def owner(): # not payable
  return owner

def totalMinted(): # not payable
  return totalMinted

#
#  Regular functions
#

def _fallback() payable: # default function
  revert

def renounceOwnership(): # not payable
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  owner = 0
  log OwnershipTransferred(
        address previousOwner=owner,
        address newOwner=0)

def unknowne0a1fcf6(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == addr(_param1)
  return (Mask(64, 96, _param1 << 96 xor 0x52f656151e1ee5d39006d4090dd446f5422d5c7f000000000000000000000000) >> 96)

def unknowna04e9b18(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == _param1
  if not stor2[caller]:
      revert with 0, 'not admin'
  call caller with:
     value _param1 wei
       gas gas_remaining wei
  if not ext_call.success:
      revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'

def setAdmin(address _admin, bool _isAdmin): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _admin == _admin
  require _isAdmin == _isAdmin
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  stor2[addr(_admin)] = uint8(_isAdmin)

def unknownd0b6b6db() payable: 
  if not stor2[caller]:
      revert with 0, 'not admin'
  idx = call.value
  s = totalMinted
  while idx:
      create2 contract with 1 wei
                      salt: s
                      code: 0x6f3360701c65a08aa383a21b18585733ff60005260106010f3
      idx = idx - 1
      s = s + 1
      continue 
  totalMinted = s

def transferOwnership(address _newOwner): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _newOwner == _newOwner
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if not _newOwner:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
  owner = _newOwner
  log OwnershipTransferred(
        address previousOwner=owner,
        address newOwner=_newOwner)

def unknownf83a97c5(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == addr(_param1)
  require _param2 == _param2
  if not stor2[caller]:
      revert with 0, 'not admin'
  call addr(_param1).transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args caller, _param2
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == bool(ext_call.return_data[0])

def unknown11b1fad5(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == addr(_param1)
  require _param2 == _param2
  if not stor2[caller]:
      revert with 0, 'not admin'
  call addr(_param1).approve(address spender, uint256 tokens) with:
       gas gas_remaining wei
      args caller, _param2
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == bool(ext_call.return_data[0])

def unknownd4ff73f7(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == addr(_param1)
  static call addr(_param1).0xdfe1681 with:
          gas gas_remaining wei
  mem[224] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[12 len 20]
  mem[96] = ext_call.return_data[12 len 20]
  static call addr(_param1).token1() with:
          gas gas_remaining wei
  mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[12 len 20]
  mem[128] = ext_call.return_data[12 len 20]
  static call addr(_param1).getReserves() with:
          gas gas_remaining wei
  mem[(2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 96
  require ext_call.return_data == ext_call.return_data[18 len 14]
  require ext_call.return_data == ext_call.return_data[50 len 14]
  require ext_call.return_data == ext_call.return_data[92 len 4]
  mem[(4 * ceil32(return_data.size)) + 224] = mem[108 len 20]
  mem[(4 * ceil32(return_data.size)) + 256] = mem[140 len 20]
  mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[18 len 14]
  return mem[(4 * ceil32(return_data.size)) + 224 len 96], ext_call.return_data << 144

def unknown73811f65(uint256 _param1, uint256 _param2, uint256 _param3): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 == _param1
  require _param2 == addr(_param2)
  require _param3 == addr(_param3)
  if not stor2[caller]:
      revert with 0, 'not admin'
  static call addr(_param2).0xdfe1681 with:
          gas gas_remaining wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[12 len 20]
  if addr(_param3) == ext_call.return_data[12 len 20]:
      static call addr(_param2).token1() with:
              gas gas_remaining wei
  else:
      static call addr(_param2).0xdfe1681 with:
              gas gas_remaining wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[12 len 20]
  static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[0]
  static call addr(_param2).getReserves() with:
          gas gas_remaining wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 96
  require ext_call.return_data == ext_call.return_data[18 len 14]
  require ext_call.return_data == ext_call.return_data[50 len 14]
  require ext_call.return_data == ext_call.return_data[92 len 4]
  static call addr(_param2).0xdfe1681 with:
          gas gas_remaining wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[12 len 20]
  call addr(_param3).transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(_param2), _param1
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == bool(ext_call.return_data[0])
  if 0 > gas_remaining:
      revert with 'NH{q', 17
  if addr(_param3) == ext_call.return_data[12 len 20]:
      if var356001 <= 9500:
          if _param1 and 0 / _param1:
              revert with 'NH{q', 17
          if 0 and Mask(112, 0, ext_call.return_data / 0:
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > 10^6 * Mask(112, 0, ext_call.return_data[0]):
              revert with 'NH{q', 17
          if not 10^6 * Mask(112, 0, ext_call.return_data[0]):
              revert with 'NH{q', 18
          static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if 0 > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if 0 / 10^6 * Mask(112, 0, ext_call.return_data > 0 / 10^6 * Mask(112, 0, ext_call.return_data[0]):
              revert with 'NH{q', 17
      else:
          if var356001 and 100 * var356001 / var356001 != 100:
              revert with 'NH{q', 17
          static call addr(_param2).getReserves() with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 96
          require ext_call.return_data == ext_call.return_data[18 len 14]
          require ext_call.return_data == ext_call.return_data[50 len 14]
          require ext_call.return_data == ext_call.return_data[92 len 4]
          static call addr(_param2).0xdfe1681 with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          static call addr(_param3).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param2)
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param3) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
  else:
      if var356001 <= 9500:
          if _param1 and 0 / _param1:
              revert with 'NH{q', 17
          if 0 and Mask(112, 0, ext_call.return_data / 0:
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > 10^6 * Mask(112, 0, ext_call.return_data[32]):
              revert with 'NH{q', 17
          if not 10^6 * Mask(112, 0, ext_call.return_data[32]):
              revert with 'NH{q', 18
          static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if 0 > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if 0 / 10^6 * Mask(112, 0, ext_call.return_data > 0 / 10^6 * Mask(112, 0, ext_call.return_data[32]):
              revert with 'NH{q', 17
      else:
          if var356001 and 100 * var356001 / var356001 != 100:
              revert with 'NH{q', 17
          static call addr(_param2).getReserves() with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 96
          require ext_call.return_data == ext_call.return_data[18 len 14]
          require ext_call.return_data == ext_call.return_data[50 len 14]
          require ext_call.return_data == ext_call.return_data[92 len 4]
          static call addr(_param2).0xdfe1681 with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          static call addr(_param3).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param2)
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param3) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown1a0875a1(uint256 _param1, uint256 _param2, uint256 _param3, uint256 _param4, uint256 _param5, uint256 _param6): # not payable
  require calldata.size - 4 >=ΓÇ▓ 192
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  require _param3 == _param3
  require _param4 == Mask(112, 0, _param4)
  require _param5 == _param5
  require _param6 == _param6
  if caller == 0xb0a8cfe907ad6c5678679aa7572f772d674b9330:
      mem[100] = addr(_param1)
      static call addr(_param2).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args addr(_param1)
      mem[96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      mem[64] = ceil32(return_data.size) + 96
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[0]
      if Mask(112, 0, _param4) - ext_call.return_data[0]:
          idx = 0
          while idx < 1:
              _104 = mem[64]
              mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
              mem[mem[64] + 33] = addr(this.address)
              mem[mem[64] + 53] = eth.balance(this.address)
              mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
              _112 = mem[64]
              mem[mem[64]] = 85
              mem[64] = mem[64] + 117
              call addr(sha3(mem[_112 + 32 len mem[_112]])) with:
                   gas gas_remaining wei
              if return_data.size:
                  mem[64] = _104 + ceil32(return_data.size) + 118
                  mem[_104 + 117] = return_data.size
                  mem[_104 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                  revert with 'NH{q', 17
              idx = idx + 1
              continue 
      else:
          mem[ceil32(return_data.size) + 100] = addr(_param1)
          mem[ceil32(return_data.size) + 132] = _param3
          call addr(_param2).transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args addr(_param1), _param3
          mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == bool(ext_call.return_data[0])
          mem[(2 * ceil32(return_data.size)) + 96] = 0
          mem[64] = (2 * ceil32(return_data.size)) + 128
          mem[(2 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
          mem[(2 * ceil32(return_data.size)) + 132] = _param5
          mem[(2 * ceil32(return_data.size)) + 164] = _param6
          mem[(2 * ceil32(return_data.size)) + 196] = this.address
          mem[(2 * ceil32(return_data.size)) + 228] = 128
          mem[(2 * ceil32(return_data.size)) + 260] = 0
          mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
          mem[(2 * ceil32(return_data.size)) + 292] = 0
          require ext_code.size(addr(_param1))
          call addr(_param1).0x22c0d9f with:
               gas gas_remaining wei
              args _param5, _param6, addr(this.address), 128, 0
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          if 0 > gas_remaining:
              revert with 'NH{q', 17
          idx = 0
          while idx < 1:
              _164 = mem[64]
              mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
              mem[mem[64] + 33] = addr(this.address)
              mem[mem[64] + 53] = eth.balance(this.address)
              mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
              _168 = mem[64]
              mem[mem[64]] = 85
              mem[64] = mem[64] + 117
              call addr(sha3(mem[_168 + 32 len mem[_168]])) with:
                   gas gas_remaining wei
              if return_data.size:
                  mem[64] = _164 + ceil32(return_data.size) + 118
                  mem[_164 + 117] = return_data.size
                  mem[_164 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                  revert with 'NH{q', 17
              idx = idx + 1
              continue 
  else:
      if caller == 0x9f2a1d1237a40c520d1cf90c7d891c10e54c5c25:
          mem[100] = addr(_param1)
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param1)
          mem[96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          mem[64] = ceil32(return_data.size) + 96
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if Mask(112, 0, _param4) - ext_call.return_data[0]:
              idx = 0
              while idx < 1:
                  _105 = mem[64]
                  mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                  mem[mem[64] + 33] = addr(this.address)
                  mem[mem[64] + 53] = eth.balance(this.address)
                  mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                  _115 = mem[64]
                  mem[mem[64]] = 85
                  mem[64] = mem[64] + 117
                  call addr(sha3(mem[_115 + 32 len mem[_115]])) with:
                       gas gas_remaining wei
                  if return_data.size:
                      mem[64] = _105 + ceil32(return_data.size) + 118
                      mem[_105 + 117] = return_data.size
                      mem[_105 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                      revert with 'NH{q', 17
                  idx = idx + 1
                  continue 
          else:
              mem[ceil32(return_data.size) + 100] = addr(_param1)
              mem[ceil32(return_data.size) + 132] = _param3
              call addr(_param2).transfer(address to, uint256 tokens) with:
                   gas gas_remaining wei
                  args addr(_param1), _param3
              mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == bool(ext_call.return_data[0])
              mem[(2 * ceil32(return_data.size)) + 96] = 0
              mem[64] = (2 * ceil32(return_data.size)) + 128
              mem[(2 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              mem[(2 * ceil32(return_data.size)) + 132] = _param5
              mem[(2 * ceil32(return_data.size)) + 164] = _param6
              mem[(2 * ceil32(return_data.size)) + 196] = this.address
              mem[(2 * ceil32(return_data.size)) + 228] = 128
              mem[(2 * ceil32(return_data.size)) + 260] = 0
              mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
              mem[(2 * ceil32(return_data.size)) + 292] = 0
              require ext_code.size(addr(_param1))
              call addr(_param1).0x22c0d9f with:
                   gas gas_remaining wei
                  args _param5, _param6, addr(this.address), 128, 0
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if 0 > gas_remaining:
                  revert with 'NH{q', 17
              idx = 0
              while idx < 1:
                  _165 = mem[64]
                  mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                  mem[mem[64] + 33] = addr(this.address)
                  mem[mem[64] + 53] = eth.balance(this.address)
                  mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                  _171 = mem[64]
                  mem[mem[64]] = 85
                  mem[64] = mem[64] + 117
                  call addr(sha3(mem[_171 + 32 len mem[_171]])) with:
                       gas gas_remaining wei
                  if return_data.size:
                      mem[64] = _165 + ceil32(return_data.size) + 118
                      mem[_165 + 117] = return_data.size
                      mem[_165 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                      revert with 'NH{q', 17
                  idx = idx + 1
                  continue 
      else:
          if caller == 0xf25054507ac92c740cd3cb1027110558d2fe0346:
              mem[100] = addr(_param1)
              static call addr(_param2).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args addr(_param1)
              mem[96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = ceil32(return_data.size) + 96
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[0]
              if Mask(112, 0, _param4) - ext_call.return_data[0]:
                  idx = 0
                  while idx < 1:
                      _106 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _118 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_118 + 32 len mem[_118]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _106 + ceil32(return_data.size) + 118
                          mem[_106 + 117] = return_data.size
                          mem[_106 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
              else:
                  mem[ceil32(return_data.size) + 100] = addr(_param1)
                  mem[ceil32(return_data.size) + 132] = _param3
                  call addr(_param2).transfer(address to, uint256 tokens) with:
                       gas gas_remaining wei
                      args addr(_param1), _param3
                  mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 32
                  require ext_call.return_data == bool(ext_call.return_data[0])
                  mem[(2 * ceil32(return_data.size)) + 96] = 0
                  mem[64] = (2 * ceil32(return_data.size)) + 128
                  mem[(2 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                  mem[(2 * ceil32(return_data.size)) + 132] = _param5
                  mem[(2 * ceil32(return_data.size)) + 164] = _param6
                  mem[(2 * ceil32(return_data.size)) + 196] = this.address
                  mem[(2 * ceil32(return_data.size)) + 228] = 128
                  mem[(2 * ceil32(return_data.size)) + 260] = 0
                  mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                  mem[(2 * ceil32(return_data.size)) + 292] = 0
                  require ext_code.size(addr(_param1))
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args _param5, _param6, addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _166 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _174 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_174 + 32 len mem[_174]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _166 + ceil32(return_data.size) + 118
                          mem[_166 + 117] = return_data.size
                          mem[_166 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
          else:
              if caller == 0x3be82c491490fd5abed0201d64d268070d1c9f1b:
                  mem[100] = addr(_param1)
                  static call addr(_param2).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(_param1)
                  mem[96] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = ceil32(return_data.size) + 96
                  require return_data.size >=ΓÇ▓ 32
                  require ext_call.return_data == ext_call.return_data[0]
                  if Mask(112, 0, _param4) - ext_call.return_data[0]:
                      idx = 0
                      while idx < 1:
                          _107 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _121 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_121 + 32 len mem[_121]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _107 + ceil32(return_data.size) + 118
                              mem[_107 + 117] = return_data.size
                              mem[_107 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
                  else:
                      mem[ceil32(return_data.size) + 100] = addr(_param1)
                      mem[ceil32(return_data.size) + 132] = _param3
                      call addr(_param2).transfer(address to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(_param1), _param3
                      mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      require return_data.size >=ΓÇ▓ 32
                      require ext_call.return_data == bool(ext_call.return_data[0])
                      mem[(2 * ceil32(return_data.size)) + 96] = 0
                      mem[64] = (2 * ceil32(return_data.size)) + 128
                      mem[(2 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                      mem[(2 * ceil32(return_data.size)) + 132] = _param5
                      mem[(2 * ceil32(return_data.size)) + 164] = _param6
                      mem[(2 * ceil32(return_data.size)) + 196] = this.address
                      mem[(2 * ceil32(return_data.size)) + 228] = 128
                      mem[(2 * ceil32(return_data.size)) + 260] = 0
                      mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                      mem[(2 * ceil32(return_data.size)) + 292] = 0
                      require ext_code.size(addr(_param1))
                      call addr(_param1).0x22c0d9f with:
                           gas gas_remaining wei
                          args _param5, _param6, addr(this.address), 128, 0
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _167 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _177 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_177 + 32 len mem[_177]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _167 + ceil32(return_data.size) + 118
                              mem[_167 + 117] = return_data.size
                              mem[_167 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 

def unknowne0c87d14(uint256 _param1, uint256 _param2, uint256 _param3, uint256 _param4): # not payable
  require calldata.size - 4 >=ΓÇ▓ 128
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  require _param3 == _param3
  require _param4 == _param4
  mem[0] = caller
  mem[32] = 2
  if not stor2[caller]:
      revert with 0, 'not admin'
  if _param3 <= 0:
      revert with 0, 'r'
  mem[100] = addr(_param1)
  mem[132] = _param3
  call addr(_param2).transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(_param1), _param3
  mem[96] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == bool(ext_call.return_data[0])
  static call addr(_param1).getReserves() with:
          gas gas_remaining wei
  mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 96
  require ext_call.return_data == ext_call.return_data[18 len 14]
  require ext_call.return_data == ext_call.return_data[50 len 14]
  require ext_call.return_data == ext_call.return_data[92 len 4]
  static call addr(_param1).0xdfe1681 with:
          gas gas_remaining wei
  if block.gasprice < 10^10:
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[12 len 20]
      static call addr(_param2).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args addr(_param1)
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[0]
      if addr(_param2) == ext_call.return_data[12 len 20]:
          if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if Mask(144, 112, ext_call.return_data and _param4 != (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4) / Mask(144, 112, ext_call.return_data[0]):
              revert with 'NH{q', 17
          if (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4) and Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 17
          if not (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 18
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0) << 1056)
          else:
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0) << 1056)
      else:
          if ext_call.return_data > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if ext_call.return_data and _param4 != (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
              revert with 'NH{q', 17
          if (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4) and Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 17
          if not (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 18
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0) << 1056)
          else:
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0) << 1056)
  else:
      mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[12 len 20]
      mem[(4 * ceil32(return_data.size)) + 100] = addr(_param1)
      static call addr(_param2).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args addr(_param1)
      mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[0]
      if addr(_param2) == ext_call.return_data[12 len 20]:
          if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if Mask(144, 112, ext_call.return_data and _param4 != (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4) / Mask(144, 112, ext_call.return_data[0]):
              revert with 'NH{q', 17
          if (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4) and Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 17
          if not (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 18
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          mem[(7 * ceil32(return_data.size)) + 96] = 0
          if addr(_param2) == ext_call.return_data[12 len 20]:
              mem[(7 * ceil32(return_data.size)) + 164] = 0
              mem[(7 * ceil32(return_data.size)) + 196] = (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4)
              mem[(7 * ceil32(return_data.size)) + 228] = this.address
              mem[(7 * ceil32(return_data.size)) + 260] = 128
              mem[(7 * ceil32(return_data.size)) + 292] = 0
              mem[(7 * ceil32(return_data.size)) + 324 len 0] = None
              mem[(7 * ceil32(return_data.size)) + 128] = 164
              mem[64] = (7 * ceil32(return_data.size)) + 324
              mem[(7 * ceil32(return_data.size)) + 164 len 28] = 0
              mem[(7 * ceil32(return_data.size)) + 160 len 4] = 36441503
              mem[(7 * ceil32(return_data.size)) + 324 len 192] = 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0
              mem[(7 * ceil32(return_data.size)) + 488] = 0
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0) << 1056)
              if not return_data.size:
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _448 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _472 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_472 + 32 len mem[_472]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _448 + ceil32(return_data.size) + 118
                          mem[_448 + 117] = return_data.size
                          mem[_448 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
              else:
                  mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                  mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                  mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _449 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _475 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_475 + 32 len mem[_475]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _449 + ceil32(return_data.size) + 118
                          mem[_449 + 117] = return_data.size
                          mem[_449 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
          else:
              mem[(7 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4)
              mem[(7 * ceil32(return_data.size)) + 196] = 0
              mem[(7 * ceil32(return_data.size)) + 228] = this.address
              mem[(7 * ceil32(return_data.size)) + 260] = 128
              mem[(7 * ceil32(return_data.size)) + 292] = 0
              mem[(7 * ceil32(return_data.size)) + 324 len 0] = None
              mem[(7 * ceil32(return_data.size)) + 128] = 164
              mem[64] = (7 * ceil32(return_data.size)) + 324
              mem[(7 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4)) >> 32
              mem[(7 * ceil32(return_data.size)) + 160 len 4] = 36441503
              mem[(7 * ceil32(return_data.size)) + 324 len 192] = 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0
              mem[(7 * ceil32(return_data.size)) + 488] = 0
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0) << 1056)
              if not return_data.size:
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _450 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _478 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_478 + 32 len mem[_478]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _450 + ceil32(return_data.size) + 118
                          mem[_450 + 117] = return_data.size
                          mem[_450 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
              else:
                  mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                  mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                  mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _451 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _481 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_481 + 32 len mem[_481]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _451 + ceil32(return_data.size) + 118
                          mem[_451 + 117] = return_data.size
                          mem[_451 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
      else:
          if ext_call.return_data > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if ext_call.return_data and _param4 != (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
              revert with 'NH{q', 17
          if (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4) and Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 17
          if not (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4):
              revert with 'NH{q', 18
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          mem[(7 * ceil32(return_data.size)) + 96] = 0
          if addr(_param2) == ext_call.return_data[12 len 20]:
              mem[(7 * ceil32(return_data.size)) + 164] = 0
              mem[(7 * ceil32(return_data.size)) + 196] = (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4)
              mem[(7 * ceil32(return_data.size)) + 228] = this.address
              mem[(7 * ceil32(return_data.size)) + 260] = 128
              mem[(7 * ceil32(return_data.size)) + 292] = 0
              mem[(7 * ceil32(return_data.size)) + 324 len 0] = None
              mem[(7 * ceil32(return_data.size)) + 128] = 164
              mem[64] = (7 * ceil32(return_data.size)) + 324
              mem[(7 * ceil32(return_data.size)) + 164 len 28] = 0
              mem[(7 * ceil32(return_data.size)) + 160 len 4] = 36441503
              mem[(7 * ceil32(return_data.size)) + 324 len 192] = 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0
              mem[(7 * ceil32(return_data.size)) + 488] = 0
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), addr(this.address), 128, 0, 0) << 1056)
              if not return_data.size:
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _452 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _484 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_484 + 32 len mem[_484]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _452 + ceil32(return_data.size) + 118
                          mem[_452 + 117] = return_data.size
                          mem[_452 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
              else:
                  mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                  mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                  mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _453 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _487 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_487 + 32 len mem[_487]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _453 + ceil32(return_data.size) + 118
                          mem[_453 + 117] = return_data.size
                          mem[_453 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
          else:
              mem[(7 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4)
              mem[(7 * ceil32(return_data.size)) + 196] = 0
              mem[(7 * ceil32(return_data.size)) + 228] = this.address
              mem[(7 * ceil32(return_data.size)) + 260] = 128
              mem[(7 * ceil32(return_data.size)) + 292] = 0
              mem[(7 * ceil32(return_data.size)) + 324 len 0] = None
              mem[(7 * ceil32(return_data.size)) + 128] = 164
              mem[64] = (7 * ceil32(return_data.size)) + 324
              mem[(7 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4)) >> 32
              mem[(7 * ceil32(return_data.size)) + 160 len 4] = 36441503
              mem[(7 * ceil32(return_data.size)) + 324 len 192] = 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0
              mem[(7 * ceil32(return_data.size)) + 488] = 0
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data * _param4 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param4) - (Mask(112, 0, ext_call.return_data * _param4), 0, addr(this.address), 128, 0, 0) << 1056)
              if not return_data.size:
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _454 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _490 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_490 + 32 len mem[_490]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _454 + ceil32(return_data.size) + 118
                          mem[_454 + 117] = return_data.size
                          mem[_454 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
              else:
                  mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                  mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                  mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _455 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _493 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_493 + 32 len mem[_493]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _455 + ceil32(return_data.size) + 118
                          mem[_455 + 117] = return_data.size
                          mem[_455 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
  if not ext_call.success:
      revert with 0, 'q'

def unknown34e8deda(uint256 _param1, uint256 _param2, uint256 _param3): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  require _param3 == _param3
  mem[0] = caller
  mem[32] = 2
  if not stor2[caller]:
      revert with 0, 'not admin'
  mem[100] = this.address
  static call addr(_param2).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  mem[96] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[0]
  if ext_call.return_data > ext_call.return_data[0]:
      revert with 'NH{q', 17
  if ext_call.return_data <= 0:
      revert with 0, 'r'
  mem[ceil32(return_data.size) + 100] = addr(_param1)
  mem[ceil32(return_data.size) + 132] = ext_call.return_data[0] - 1
  call addr(_param2).transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(_param1), ext_call.return_data[0] - 1
  mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == bool(ext_call.return_data[0])
  static call addr(_param1).getReserves() with:
          gas gas_remaining wei
  mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 96
  require ext_call.return_data == ext_call.return_data[18 len 14]
  require ext_call.return_data == ext_call.return_data[50 len 14]
  require ext_call.return_data == ext_call.return_data[92 len 4]
  static call addr(_param1).0xdfe1681 with:
          gas gas_remaining wei
  if block.gasprice < 10^10:
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[12 len 20]
      static call addr(_param2).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args addr(_param1)
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[0]
      if addr(_param2) == ext_call.return_data[12 len 20]:
          if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
              revert with 'NH{q', 17
          if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 17
          if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 18
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
          else:
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
      else:
          if ext_call.return_data > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
              revert with 'NH{q', 17
          if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 17
          if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 18
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
          else:
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
  else:
      mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[12 len 20]
      mem[(6 * ceil32(return_data.size)) + 100] = addr(_param1)
      static call addr(_param2).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args addr(_param1)
      mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[0]
      if addr(_param2) == ext_call.return_data[12 len 20]:
          if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
              revert with 'NH{q', 17
          if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 17
          if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 18
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          mem[(8 * ceil32(return_data.size)) + 96] = 0
          if addr(_param2) == ext_call.return_data[12 len 20]:
              mem[(8 * ceil32(return_data.size)) + 164] = 0
              mem[(8 * ceil32(return_data.size)) + 196] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
              mem[(8 * ceil32(return_data.size)) + 228] = this.address
              mem[(8 * ceil32(return_data.size)) + 260] = 128
              mem[(8 * ceil32(return_data.size)) + 292] = 0
              mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
              mem[(8 * ceil32(return_data.size)) + 128] = 164
              mem[64] = (8 * ceil32(return_data.size)) + 324
              mem[(8 * ceil32(return_data.size)) + 164 len 28] = 0
              mem[(8 * ceil32(return_data.size)) + 160 len 4] = 36441503
              mem[(8 * ceil32(return_data.size)) + 324 len 192] = 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0
              mem[(8 * ceil32(return_data.size)) + 488] = 0
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
              if not return_data.size:
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _452 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _476 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_476 + 32 len mem[_476]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _452 + ceil32(return_data.size) + 118
                          mem[_452 + 117] = return_data.size
                          mem[_452 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
              else:
                  mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                  mem[(8 * ceil32(return_data.size)) + 324] = return_data.size
                  mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _453 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _479 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_479 + 32 len mem[_479]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _453 + ceil32(return_data.size) + 118
                          mem[_453 + 117] = return_data.size
                          mem[_453 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
          else:
              mem[(8 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
              mem[(8 * ceil32(return_data.size)) + 196] = 0
              mem[(8 * ceil32(return_data.size)) + 228] = this.address
              mem[(8 * ceil32(return_data.size)) + 260] = 128
              mem[(8 * ceil32(return_data.size)) + 292] = 0
              mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
              mem[(8 * ceil32(return_data.size)) + 128] = 164
              mem[64] = (8 * ceil32(return_data.size)) + 324
              mem[(8 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)) >> 32
              mem[(8 * ceil32(return_data.size)) + 160 len 4] = 36441503
              mem[(8 * ceil32(return_data.size)) + 324 len 192] = 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0
              mem[(8 * ceil32(return_data.size)) + 488] = 0
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
              if not return_data.size:
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _454 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _482 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_482 + 32 len mem[_482]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _454 + ceil32(return_data.size) + 118
                          mem[_454 + 117] = return_data.size
                          mem[_454 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
              else:
                  mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                  mem[(8 * ceil32(return_data.size)) + 324] = return_data.size
                  mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _455 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _485 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_485 + 32 len mem[_485]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _455 + ceil32(return_data.size) + 118
                          mem[_455 + 117] = return_data.size
                          mem[_455 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
      else:
          if ext_call.return_data > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
              revert with 'NH{q', 17
          if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 17
          if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
              revert with 'NH{q', 17
          if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 17
          if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
              revert with 'NH{q', 18
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          mem[(8 * ceil32(return_data.size)) + 96] = 0
          if addr(_param2) == ext_call.return_data[12 len 20]:
              mem[(8 * ceil32(return_data.size)) + 164] = 0
              mem[(8 * ceil32(return_data.size)) + 196] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
              mem[(8 * ceil32(return_data.size)) + 228] = this.address
              mem[(8 * ceil32(return_data.size)) + 260] = 128
              mem[(8 * ceil32(return_data.size)) + 292] = 0
              mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
              mem[(8 * ceil32(return_data.size)) + 128] = 164
              mem[64] = (8 * ceil32(return_data.size)) + 324
              mem[(8 * ceil32(return_data.size)) + 164 len 28] = 0
              mem[(8 * ceil32(return_data.size)) + 160 len 4] = 36441503
              mem[(8 * ceil32(return_data.size)) + 324 len 192] = 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0
              mem[(8 * ceil32(return_data.size)) + 488] = 0
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
              if not return_data.size:
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _456 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _488 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_488 + 32 len mem[_488]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _456 + ceil32(return_data.size) + 118
                          mem[_456 + 117] = return_data.size
                          mem[_456 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
              else:
                  mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                  mem[(8 * ceil32(return_data.size)) + 324] = return_data.size
                  mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _457 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _491 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_491 + 32 len mem[_491]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _457 + ceil32(return_data.size) + 118
                          mem[_457 + 117] = return_data.size
                          mem[_457 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
          else:
              mem[(8 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
              mem[(8 * ceil32(return_data.size)) + 196] = 0
              mem[(8 * ceil32(return_data.size)) + 228] = this.address
              mem[(8 * ceil32(return_data.size)) + 260] = 128
              mem[(8 * ceil32(return_data.size)) + 292] = 0
              mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
              mem[(8 * ceil32(return_data.size)) + 128] = 164
              mem[64] = (8 * ceil32(return_data.size)) + 324
              mem[(8 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)) >> 32
              mem[(8 * ceil32(return_data.size)) + 160 len 4] = 36441503
              mem[(8 * ceil32(return_data.size)) + 324 len 192] = 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0
              mem[(8 * ceil32(return_data.size)) + 488] = 0
              call addr(_param1) with:
                 funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                   gas gas_remaining wei
                  args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
              if not return_data.size:
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _458 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _494 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_494 + 32 len mem[_494]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _458 + ceil32(return_data.size) + 118
                          mem[_458 + 117] = return_data.size
                          mem[_458 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
              else:
                  mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                  mem[(8 * ceil32(return_data.size)) + 324] = return_data.size
                  mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _459 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _497 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_497 + 32 len mem[_497]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _459 + ceil32(return_data.size) + 118
                          mem[_459 + 117] = return_data.size
                          mem[_459 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
  if not ext_call.success:
      revert with 0, 'q'

def unknown58cc30c0(uint256 _param1, uint256 _param2, uint256 _param3, uint256 _param4): # not payable
  require calldata.size - 4 >=ΓÇ▓ 128
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  require _param3 == _param3
  require _param4 == _param4
  mem[0] = caller
  mem[32] = 2
  if not stor2[caller]:
      revert with 0, 'not admin'
  mem[100] = this.address
  static call addr(_param2).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  mem[96] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[0]
  if ext_call.return_data > ext_call.return_data[0]:
      revert with 'NH{q', 17
  if ext_call.return_data <= 100:
      revert with 0, 's'
  mem[ceil32(return_data.size) + 100] = addr(_param1)
  mem[ceil32(return_data.size) + 132] = ext_call.return_data[0] - 1
  call addr(_param2).transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(_param1), ext_call.return_data[0] - 1
  mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == bool(ext_call.return_data[0])
  static call addr(_param1).0xdfe1681 with:
          gas gas_remaining wei
  mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[12 len 20]
  if addr(_param2) == ext_call.return_data[12 len 20]:
      static call addr(_param1).token1() with:
              gas gas_remaining wei
      mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[12 len 20]
      mem[(6 * ceil32(return_data.size)) + 100] = this.address
      static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[0]
      static call addr(_param1).getReserves() with:
              gas gas_remaining wei
      if block.gasprice < 10^10:
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 96
          require ext_call.return_data == ext_call.return_data[18 len 14]
          require ext_call.return_data == ext_call.return_data[50 len 14]
          require ext_call.return_data == ext_call.return_data[92 len 4]
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param1)
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              require ext_code.size(addr(_param1))
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0
              else:
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              require ext_code.size(addr(_param1))
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0
              else:
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if 0 > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if 0 < _param4:
              revert with 0, 't'
      else:
          mem[(7 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 96
          require ext_call.return_data == ext_call.return_data[18 len 14]
          require ext_call.return_data == ext_call.return_data[50 len 14]
          require ext_call.return_data == ext_call.return_data[92 len 4]
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          mem[(10 * ceil32(return_data.size)) + 100] = addr(_param1)
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param1)
          mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              mem[(12 * ceil32(return_data.size)) + 96] = 0
              mem[64] = (12 * ceil32(return_data.size)) + 128
              mem[(12 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  mem[(12 * ceil32(return_data.size)) + 132] = 0
                  mem[(12 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(12 * ceil32(return_data.size)) + 196] = this.address
                  mem[(12 * ceil32(return_data.size)) + 228] = 128
                  mem[(12 * ceil32(return_data.size)) + 260] = 0
                  mem[(12 * ceil32(return_data.size)) + 292 len 0] = None
                  mem[(12 * ceil32(return_data.size)) + 292] = 0
                  require ext_code.size(addr(_param1))
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _458 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _506 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_506 + 32 len mem[_506]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _458 + ceil32(return_data.size) + 118
                          mem[_458 + 117] = return_data.size
                          mem[_458 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
                  mem[mem[64] + 4] = this.address
                  static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _482 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_482] == mem[_482]
                  if mem[_482] - ext_call.return_data > mem[_482]:
                      revert with 'NH{q', 17
                  if mem[_482] - ext_call.return_data < _param4:
                      revert with 0, 't'
              else:
                  mem[(12 * ceil32(return_data.size)) + 132] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(12 * ceil32(return_data.size)) + 164] = 0
                  mem[(12 * ceil32(return_data.size)) + 196] = this.address
                  mem[(12 * ceil32(return_data.size)) + 228] = 128
                  mem[(12 * ceil32(return_data.size)) + 260] = 0
                  mem[(12 * ceil32(return_data.size)) + 292 len 0] = None
                  mem[(12 * ceil32(return_data.size)) + 292] = 0
                  require ext_code.size(addr(_param1))
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _459 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _509 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_509 + 32 len mem[_509]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _459 + ceil32(return_data.size) + 118
                          mem[_459 + 117] = return_data.size
                          mem[_459 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
                  mem[mem[64] + 4] = this.address
                  static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _483 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_483] == mem[_483]
                  if mem[_483] - ext_call.return_data > mem[_483]:
                      revert with 'NH{q', 17
                  if mem[_483] - ext_call.return_data < _param4:
                      revert with 0, 't'
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              mem[(12 * ceil32(return_data.size)) + 96] = 0
              mem[64] = (12 * ceil32(return_data.size)) + 128
              mem[(12 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  mem[(12 * ceil32(return_data.size)) + 132] = 0
                  mem[(12 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(12 * ceil32(return_data.size)) + 196] = this.address
                  mem[(12 * ceil32(return_data.size)) + 228] = 128
                  mem[(12 * ceil32(return_data.size)) + 260] = 0
                  mem[(12 * ceil32(return_data.size)) + 292 len 0] = None
                  mem[(12 * ceil32(return_data.size)) + 292] = 0
                  require ext_code.size(addr(_param1))
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _460 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _512 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_512 + 32 len mem[_512]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _460 + ceil32(return_data.size) + 118
                          mem[_460 + 117] = return_data.size
                          mem[_460 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
                  mem[mem[64] + 4] = this.address
                  static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _484 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_484] == mem[_484]
                  if mem[_484] - ext_call.return_data > mem[_484]:
                      revert with 'NH{q', 17
                  if mem[_484] - ext_call.return_data < _param4:
                      revert with 0, 't'
              else:
                  mem[(12 * ceil32(return_data.size)) + 132] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(12 * ceil32(return_data.size)) + 164] = 0
                  mem[(12 * ceil32(return_data.size)) + 196] = this.address
                  mem[(12 * ceil32(return_data.size)) + 228] = 128
                  mem[(12 * ceil32(return_data.size)) + 260] = 0
                  mem[(12 * ceil32(return_data.size)) + 292 len 0] = None
                  mem[(12 * ceil32(return_data.size)) + 292] = 0
                  require ext_code.size(addr(_param1))
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _461 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _515 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_515 + 32 len mem[_515]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _461 + ceil32(return_data.size) + 118
                          mem[_461 + 117] = return_data.size
                          mem[_461 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
                  mem[mem[64] + 4] = this.address
                  static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _485 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_485] == mem[_485]
                  if mem[_485] - ext_call.return_data > mem[_485]:
                      revert with 'NH{q', 17
                  if mem[_485] - ext_call.return_data < _param4:
                      revert with 0, 't'
  else:
      static call addr(_param1).0xdfe1681 with:
              gas gas_remaining wei
      mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[12 len 20]
      mem[(6 * ceil32(return_data.size)) + 100] = this.address
      static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[0]
      static call addr(_param1).getReserves() with:
              gas gas_remaining wei
      if block.gasprice < 10^10:
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 96
          require ext_call.return_data == ext_call.return_data[18 len 14]
          require ext_call.return_data == ext_call.return_data[50 len 14]
          require ext_call.return_data == ext_call.return_data[92 len 4]
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param1)
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              require ext_code.size(addr(_param1))
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0
              else:
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              require ext_code.size(addr(_param1))
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0
              else:
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if 0 > ext_call.return_data[0]:
              revert with 'NH{q', 17
          if 0 < _param4:
              revert with 0, 't'
      else:
          mem[(7 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 96
          require ext_call.return_data == ext_call.return_data[18 len 14]
          require ext_call.return_data == ext_call.return_data[50 len 14]
          require ext_call.return_data == ext_call.return_data[92 len 4]
          static call addr(_param1).0xdfe1681 with:
                  gas gas_remaining wei
          mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          mem[(10 * ceil32(return_data.size)) + 100] = addr(_param1)
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param1)
          mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              mem[(12 * ceil32(return_data.size)) + 96] = 0
              mem[64] = (12 * ceil32(return_data.size)) + 128
              mem[(12 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  mem[(12 * ceil32(return_data.size)) + 132] = 0
                  mem[(12 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(12 * ceil32(return_data.size)) + 196] = this.address
                  mem[(12 * ceil32(return_data.size)) + 228] = 128
                  mem[(12 * ceil32(return_data.size)) + 260] = 0
                  mem[(12 * ceil32(return_data.size)) + 292 len 0] = None
                  mem[(12 * ceil32(return_data.size)) + 292] = 0
                  require ext_code.size(addr(_param1))
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _462 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _518 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_518 + 32 len mem[_518]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _462 + ceil32(return_data.size) + 118
                          mem[_462 + 117] = return_data.size
                          mem[_462 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
                  mem[mem[64] + 4] = this.address
                  static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _486 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_486] == mem[_486]
                  if mem[_486] - ext_call.return_data > mem[_486]:
                      revert with 'NH{q', 17
                  if mem[_486] - ext_call.return_data < _param4:
                      revert with 0, 't'
              else:
                  mem[(12 * ceil32(return_data.size)) + 132] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(12 * ceil32(return_data.size)) + 164] = 0
                  mem[(12 * ceil32(return_data.size)) + 196] = this.address
                  mem[(12 * ceil32(return_data.size)) + 228] = 128
                  mem[(12 * ceil32(return_data.size)) + 260] = 0
                  mem[(12 * ceil32(return_data.size)) + 292 len 0] = None
                  mem[(12 * ceil32(return_data.size)) + 292] = 0
                  require ext_code.size(addr(_param1))
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _463 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _521 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_521 + 32 len mem[_521]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _463 + ceil32(return_data.size) + 118
                          mem[_463 + 117] = return_data.size
                          mem[_463 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
                  mem[mem[64] + 4] = this.address
                  static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _487 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_487] == mem[_487]
                  if mem[_487] - ext_call.return_data > mem[_487]:
                      revert with 'NH{q', 17
                  if mem[_487] - ext_call.return_data < _param4:
                      revert with 0, 't'
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              mem[(12 * ceil32(return_data.size)) + 96] = 0
              mem[64] = (12 * ceil32(return_data.size)) + 128
              mem[(12 * ceil32(return_data.size)) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  mem[(12 * ceil32(return_data.size)) + 132] = 0
                  mem[(12 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(12 * ceil32(return_data.size)) + 196] = this.address
                  mem[(12 * ceil32(return_data.size)) + 228] = 128
                  mem[(12 * ceil32(return_data.size)) + 260] = 0
                  mem[(12 * ceil32(return_data.size)) + 292 len 0] = None
                  mem[(12 * ceil32(return_data.size)) + 292] = 0
                  require ext_code.size(addr(_param1))
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _464 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _524 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_524 + 32 len mem[_524]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _464 + ceil32(return_data.size) + 118
                          mem[_464 + 117] = return_data.size
                          mem[_464 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
                  mem[mem[64] + 4] = this.address
                  static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _488 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_488] == mem[_488]
                  if mem[_488] - ext_call.return_data > mem[_488]:
                      revert with 'NH{q', 17
                  if mem[_488] - ext_call.return_data < _param4:
                      revert with 0, 't'
              else:
                  mem[(12 * ceil32(return_data.size)) + 132] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(12 * ceil32(return_data.size)) + 164] = 0
                  mem[(12 * ceil32(return_data.size)) + 196] = this.address
                  mem[(12 * ceil32(return_data.size)) + 228] = 128
                  mem[(12 * ceil32(return_data.size)) + 260] = 0
                  mem[(12 * ceil32(return_data.size)) + 292 len 0] = None
                  mem[(12 * ceil32(return_data.size)) + 292] = 0
                  require ext_code.size(addr(_param1))
                  call addr(_param1).0x22c0d9f with:
                       gas gas_remaining wei
                      args (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if 0 > gas_remaining:
                      revert with 'NH{q', 17
                  idx = 0
                  while idx < 1:
                      _465 = mem[64]
                      mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 33] = addr(this.address)
                      mem[mem[64] + 53] = eth.balance(this.address)
                      mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                      _527 = mem[64]
                      mem[mem[64]] = 85
                      mem[64] = mem[64] + 117
                      call addr(sha3(mem[_527 + 32 len mem[_527]])) with:
                           gas gas_remaining wei
                      if return_data.size:
                          mem[64] = _465 + ceil32(return_data.size) + 118
                          mem[_465 + 117] = return_data.size
                          mem[_465 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                          revert with 'NH{q', 17
                      idx = idx + 1
                      continue 
                  mem[mem[64] + 4] = this.address
                  static call addr(ext_call.return_data).balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args addr(this.address)
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _489 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_489] == mem[_489]
                  if mem[_489] - ext_call.return_data > mem[_489]:
                      revert with 'NH{q', 17
                  if mem[_489] - ext_call.return_data < _param4:
                      revert with 0, 't'

def unknowncc8ca202(uint256 _param1, uint256 _param2, uint256 _param3, uint256 _param4): # not payable
  require calldata.size - 4 >=ΓÇ▓ 128
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  require _param3 == _param3
  require _param4 == Mask(112, 0, _param4)
  mem[0] = caller
  mem[32] = 2
  if not stor2[caller]:
      revert with 0, 'not admin'
  mem[100] = this.address
  static call addr(_param2).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  mem[96] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[0]
  if ext_call.return_data > ext_call.return_data[0]:
      revert with 'NH{q', 17
  if ext_call.return_data <= 100:
      revert with 0, 'rrrr'
  mem[ceil32(return_data.size) + 100] = addr(_param1)
  static call addr(_param2).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args addr(_param1)
  mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[0]
  if Mask(112, 0, _param4) < ext_call.return_data[0]:
      revert with 0, 'ssssss'
  if ext_call.return_data <= 0:
      static call addr(_param1).getReserves() with:
              gas gas_remaining wei
      mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 96
      require ext_call.return_data == ext_call.return_data[18 len 14]
      require ext_call.return_data == ext_call.return_data[50 len 14]
      require ext_call.return_data == ext_call.return_data[92 len 4]
      static call addr(_param1).0xdfe1681 with:
              gas gas_remaining wei
      if block.gasprice < 10^10:
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param1)
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
              else:
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
              else:
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
      else:
          mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          mem[(6 * ceil32(return_data.size)) + 100] = addr(_param1)
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param1)
          mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              mem[(8 * ceil32(return_data.size)) + 96] = 0
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  mem[(8 * ceil32(return_data.size)) + 164] = 0
                  mem[(8 * ceil32(return_data.size)) + 196] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(8 * ceil32(return_data.size)) + 228] = this.address
                  mem[(8 * ceil32(return_data.size)) + 260] = 128
                  mem[(8 * ceil32(return_data.size)) + 292] = 0
                  mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
                  mem[(8 * ceil32(return_data.size)) + 128] = 164
                  mem[64] = (8 * ceil32(return_data.size)) + 324
                  mem[(8 * ceil32(return_data.size)) + 164 len 28] = 0
                  mem[(8 * ceil32(return_data.size)) + 160 len 4] = 36441503
                  mem[(8 * ceil32(return_data.size)) + 324 len 192] = 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0
                  mem[(8 * ceil32(return_data.size)) + 488] = 0
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
                  if not return_data.size:
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _896 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _944 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_944 + 32 len mem[_944]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _896 + ceil32(return_data.size) + 118
                              mem[_896 + 117] = return_data.size
                              mem[_896 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
                  else:
                      mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                      mem[(8 * ceil32(return_data.size)) + 324] = return_data.size
                      mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _897 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _947 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_947 + 32 len mem[_947]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _897 + ceil32(return_data.size) + 118
                              mem[_897 + 117] = return_data.size
                              mem[_897 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
              else:
                  mem[(8 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(8 * ceil32(return_data.size)) + 196] = 0
                  mem[(8 * ceil32(return_data.size)) + 228] = this.address
                  mem[(8 * ceil32(return_data.size)) + 260] = 128
                  mem[(8 * ceil32(return_data.size)) + 292] = 0
                  mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
                  mem[(8 * ceil32(return_data.size)) + 128] = 164
                  mem[64] = (8 * ceil32(return_data.size)) + 324
                  mem[(8 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)) >> 32
                  mem[(8 * ceil32(return_data.size)) + 160 len 4] = 36441503
                  mem[(8 * ceil32(return_data.size)) + 324 len 192] = 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0
                  mem[(8 * ceil32(return_data.size)) + 488] = 0
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
                  if not return_data.size:
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _898 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _950 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_950 + 32 len mem[_950]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _898 + ceil32(return_data.size) + 118
                              mem[_898 + 117] = return_data.size
                              mem[_898 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
                  else:
                      mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                      mem[(8 * ceil32(return_data.size)) + 324] = return_data.size
                      mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _899 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _953 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_953 + 32 len mem[_953]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _899 + ceil32(return_data.size) + 118
                              mem[_899 + 117] = return_data.size
                              mem[_899 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              mem[(8 * ceil32(return_data.size)) + 96] = 0
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  mem[(8 * ceil32(return_data.size)) + 164] = 0
                  mem[(8 * ceil32(return_data.size)) + 196] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(8 * ceil32(return_data.size)) + 228] = this.address
                  mem[(8 * ceil32(return_data.size)) + 260] = 128
                  mem[(8 * ceil32(return_data.size)) + 292] = 0
                  mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
                  mem[(8 * ceil32(return_data.size)) + 128] = 164
                  mem[64] = (8 * ceil32(return_data.size)) + 324
                  mem[(8 * ceil32(return_data.size)) + 164 len 28] = 0
                  mem[(8 * ceil32(return_data.size)) + 160 len 4] = 36441503
                  mem[(8 * ceil32(return_data.size)) + 324 len 192] = 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0
                  mem[(8 * ceil32(return_data.size)) + 488] = 0
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
                  if not return_data.size:
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _900 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _956 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_956 + 32 len mem[_956]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _900 + ceil32(return_data.size) + 118
                              mem[_900 + 117] = return_data.size
                              mem[_900 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
                  else:
                      mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                      mem[(8 * ceil32(return_data.size)) + 324] = return_data.size
                      mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _901 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _959 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_959 + 32 len mem[_959]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _901 + ceil32(return_data.size) + 118
                              mem[_901 + 117] = return_data.size
                              mem[_901 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
              else:
                  mem[(8 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(8 * ceil32(return_data.size)) + 196] = 0
                  mem[(8 * ceil32(return_data.size)) + 228] = this.address
                  mem[(8 * ceil32(return_data.size)) + 260] = 128
                  mem[(8 * ceil32(return_data.size)) + 292] = 0
                  mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
                  mem[(8 * ceil32(return_data.size)) + 128] = 164
                  mem[64] = (8 * ceil32(return_data.size)) + 324
                  mem[(8 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)) >> 32
                  mem[(8 * ceil32(return_data.size)) + 160 len 4] = 36441503
                  mem[(8 * ceil32(return_data.size)) + 324 len 192] = 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0
                  mem[(8 * ceil32(return_data.size)) + 488] = 0
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
                  if not return_data.size:
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _902 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _962 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_962 + 32 len mem[_962]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _902 + ceil32(return_data.size) + 118
                              mem[_902 + 117] = return_data.size
                              mem[_902 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
                  else:
                      mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                      mem[(8 * ceil32(return_data.size)) + 324] = return_data.size
                      mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _903 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _965 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_965 + 32 len mem[_965]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _903 + ceil32(return_data.size) + 118
                              mem[_903 + 117] = return_data.size
                              mem[_903 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
  else:
      mem[(2 * ceil32(return_data.size)) + 100] = addr(_param1)
      mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] - 1
      call addr(_param2).transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args addr(_param1), ext_call.return_data[0] - 1
      mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == bool(ext_call.return_data[0])
      static call addr(_param1).getReserves() with:
              gas gas_remaining wei
      mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 96
      require ext_call.return_data == ext_call.return_data[18 len 14]
      require ext_call.return_data == ext_call.return_data[50 len 14]
      require ext_call.return_data == ext_call.return_data[92 len 4]
      static call addr(_param1).0xdfe1681 with:
              gas gas_remaining wei
      if block.gasprice < 10^10:
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param1)
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
              else:
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
              else:
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
      else:
          mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[12 len 20]
          mem[(7 * ceil32(return_data.size)) + 100] = addr(_param1)
          static call addr(_param2).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args addr(_param1)
          mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          require ext_call.return_data == ext_call.return_data[0]
          if addr(_param2) == ext_call.return_data[12 len 20]:
              if Mask(144, 112, ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if Mask(144, 112, ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / Mask(144, 112, ext_call.return_data[0]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              mem[(10 * ceil32(return_data.size)) + 96] = 0
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  mem[(10 * ceil32(return_data.size)) + 164] = 0
                  mem[(10 * ceil32(return_data.size)) + 196] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(10 * ceil32(return_data.size)) + 228] = this.address
                  mem[(10 * ceil32(return_data.size)) + 260] = 128
                  mem[(10 * ceil32(return_data.size)) + 292] = 0
                  mem[(10 * ceil32(return_data.size)) + 324 len 0] = None
                  mem[(10 * ceil32(return_data.size)) + 128] = 164
                  mem[64] = (10 * ceil32(return_data.size)) + 324
                  mem[(10 * ceil32(return_data.size)) + 164 len 28] = 0
                  mem[(10 * ceil32(return_data.size)) + 160 len 4] = 36441503
                  mem[(10 * ceil32(return_data.size)) + 324 len 192] = 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0
                  mem[(10 * ceil32(return_data.size)) + 488] = 0
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
                  if not return_data.size:
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _904 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _968 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_968 + 32 len mem[_968]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _904 + ceil32(return_data.size) + 118
                              mem[_904 + 117] = return_data.size
                              mem[_904 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
                  else:
                      mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                      mem[(10 * ceil32(return_data.size)) + 324] = return_data.size
                      mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _905 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _971 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_971 + 32 len mem[_971]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _905 + ceil32(return_data.size) + 118
                              mem[_905 + 117] = return_data.size
                              mem[_905 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
              else:
                  mem[(10 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(10 * ceil32(return_data.size)) + 196] = 0
                  mem[(10 * ceil32(return_data.size)) + 228] = this.address
                  mem[(10 * ceil32(return_data.size)) + 260] = 128
                  mem[(10 * ceil32(return_data.size)) + 292] = 0
                  mem[(10 * ceil32(return_data.size)) + 324 len 0] = None
                  mem[(10 * ceil32(return_data.size)) + 128] = 164
                  mem[64] = (10 * ceil32(return_data.size)) + 324
                  mem[(10 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)) >> 32
                  mem[(10 * ceil32(return_data.size)) + 160 len 4] = 36441503
                  mem[(10 * ceil32(return_data.size)) + 324 len 192] = 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0
                  mem[(10 * ceil32(return_data.size)) + 488] = 0
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
                  if not return_data.size:
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _906 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _974 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_974 + 32 len mem[_974]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _906 + ceil32(return_data.size) + 118
                              mem[_906 + 117] = return_data.size
                              mem[_906 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
                  else:
                      mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                      mem[(10 * ceil32(return_data.size)) + 324] = return_data.size
                      mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _907 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _977 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_977 + 32 len mem[_977]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _907 + ceil32(return_data.size) + 118
                              mem[_907 + 117] = return_data.size
                              mem[_907 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
          else:
              if ext_call.return_data > ext_call.return_data[0]:
                  revert with 'NH{q', 17
              if ext_call.return_data and _param3 != (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                  revert with 'NH{q', 17
              if (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3) and Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if Mask(112, 0, ext_call.return_data and 10^6 * Mask(112, 0, ext_call.return_data / Mask(112, 0, ext_call.return_data[32]) != 10^6:
                  revert with 'NH{q', 17
              if 10^6 * Mask(112, 0, ext_call.return_data > (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 17
              if not (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3):
                  revert with 'NH{q', 18
              static call addr(_param1).0xdfe1681 with:
                      gas gas_remaining wei
              mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              require return_data.size >=ΓÇ▓ 32
              require ext_call.return_data == ext_call.return_data[12 len 20]
              mem[(10 * ceil32(return_data.size)) + 96] = 0
              if addr(_param2) == ext_call.return_data[12 len 20]:
                  mem[(10 * ceil32(return_data.size)) + 164] = 0
                  mem[(10 * ceil32(return_data.size)) + 196] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(10 * ceil32(return_data.size)) + 228] = this.address
                  mem[(10 * ceil32(return_data.size)) + 260] = 128
                  mem[(10 * ceil32(return_data.size)) + 292] = 0
                  mem[(10 * ceil32(return_data.size)) + 324 len 0] = None
                  mem[(10 * ceil32(return_data.size)) + 128] = 164
                  mem[64] = (10 * ceil32(return_data.size)) + 324
                  mem[(10 * ceil32(return_data.size)) + 164 len 28] = 0
                  mem[(10 * ceil32(return_data.size)) + 160 len 4] = 36441503
                  mem[(10 * ceil32(return_data.size)) + 324 len 192] = 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0
                  mem[(10 * ceil32(return_data.size)) + 488] = 0
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, 0, 0, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), addr(this.address), 128, 0, 0) << 1056)
                  if not return_data.size:
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _908 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _980 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_980 + 32 len mem[_980]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _908 + ceil32(return_data.size) + 118
                              mem[_908 + 117] = return_data.size
                              mem[_908 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
                  else:
                      mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                      mem[(10 * ceil32(return_data.size)) + 324] = return_data.size
                      mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _909 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _983 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_983 + 32 len mem[_983]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _909 + ceil32(return_data.size) + 118
                              mem[_909 + 117] = return_data.size
                              mem[_909 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
              else:
                  mem[(10 * ceil32(return_data.size)) + 164] = (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)
                  mem[(10 * ceil32(return_data.size)) + 196] = 0
                  mem[(10 * ceil32(return_data.size)) + 228] = this.address
                  mem[(10 * ceil32(return_data.size)) + 260] = 128
                  mem[(10 * ceil32(return_data.size)) + 292] = 0
                  mem[(10 * ceil32(return_data.size)) + 324 len 0] = None
                  mem[(10 * ceil32(return_data.size)) + 128] = 164
                  mem[64] = (10 * ceil32(return_data.size)) + 324
                  mem[(10 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3)) >> 32
                  mem[(10 * ceil32(return_data.size)) + 160 len 4] = 36441503
                  mem[(10 * ceil32(return_data.size)) + 324 len 192] = 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0
                  mem[(10 * ceil32(return_data.size)) + 488] = 0
                  call addr(_param1) with:
                     funct Mask(32, 224, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) >> 224
                       gas gas_remaining wei
                      args (Mask(1280, -1056, 36441503, (ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data * _param3 * Mask(112, 0, ext_call.return_data / (10^6 * Mask(112, 0, ext_call.return_data * _param3) - (Mask(112, 0, ext_call.return_data * _param3), 0, addr(this.address), 128, 0, 0) << 1056)
                  if not return_data.size:
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _910 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _986 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_986 + 32 len mem[_986]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _910 + ceil32(return_data.size) + 118
                              mem[_910 + 117] = return_data.size
                              mem[_910 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
                  else:
                      mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                      mem[(10 * ceil32(return_data.size)) + 324] = return_data.size
                      mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 0 > gas_remaining:
                          revert with 'NH{q', 17
                      idx = 0
                      while idx < 1:
                          _911 = mem[64]
                          mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                          mem[mem[64] + 33] = addr(this.address)
                          mem[mem[64] + 53] = eth.balance(this.address)
                          mem[mem[64] + 85] = 0xeb705e6f0338f35c6bc9c4848ed44b2d3746d7b4b536e1bf60dae83826df1ee6
                          _989 = mem[64]
                          mem[mem[64]] = 85
                          mem[64] = mem[64] + 117
                          call addr(sha3(mem[_989 + 32 len mem[_989]])) with:
                               gas gas_remaining wei
                          if return_data.size:
                              mem[64] = _911 + ceil32(return_data.size) + 118
                              mem[_911 + 117] = return_data.size
                              mem[_911 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                              revert with 'NH{q', 17
                          idx = idx + 1
                          continue 
  if not ext_call.success:
      revert with 0, 'qqqq'


