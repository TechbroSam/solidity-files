


// SPDX-License-Identifier: MIT


def storage:
  owner is addr at storage 0
  WETHAddress is addr at storage 1

def owner(): # not payable
  return owner

def WETH(): # not payable
  return WETHAddress

#
#  Regular functions
#

def renounceOwnership(): # not payable
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  log OwnershipTransferred(
        address previousOwner=owner,
        address newOwner=0)
  owner = 0

def unknown1de3df2c() payable: 
  if call.value <= 0:
      revert with 0, 'value is 0'
  call WETHAddress with:
     value call.value wei
       gas gas_remaining wei
  if not ext_call.success:
      revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'

def withdrawETH(address _address, uint256 _amount): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _address == _address
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  call _address with:
     value _amount wei
       gas gas_remaining wei
  if not ext_call.success:
      revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'

def transferOwnership(address _newOwner): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _newOwner == _newOwner
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if not _newOwner:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
  log OwnershipTransferred(
        address previousOwner=owner,
        address newOwner=_newOwner)
  owner = _newOwner

def unknownb1ebddda(array _param1, uint256 _param2) payable: 
  require calldata.size - 4 >=ΓÇ▓ 128
  require _param1 <= 18446744073709551615
  require _param1 + 35 <ΓÇ▓ calldata.size
  require _param1.length <= 18446744073709551615
  require _param1 + (32 * _param1.length) + 36 <= calldata.size
  if _param2:
      if _param2 != block.number:
          revert with 0, 'BlockNumberErrorM'
  if 0x83b4f74296738d8c2e15bd7c1f4a19df122354f5 != caller:
      if caller != 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8:
          if caller != 0x744bc1d963e8f54395dfe504e343fc3f2fe8fc8b:
              if caller != 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50:
                  if caller != 0xde09838eedb3030153524b5a14972e7c9ef65765:
                      if caller != 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c:
                          revert with 0, 'NotAdminM'
  if _param1.length > 18446744073709551615:
      revert with 'NH{q', 65
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknownc44de60c(uint256 _param1, uint256 _param2, uint256 _param3): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 == addr(_param1)
  require _param3 == bool(_param3)
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if not _param3:
      call WETHAddress.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args addr(_param1), _param2
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == bool(ext_call.return_data[0])
  else:
      require ext_code.size(WETHAddress)
      call WETHAddress.withdraw(uint256 withdrawCount) with:
           gas gas_remaining wei
          args _param2
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      call addr(_param1) with:
         value _param2 wei
           gas gas_remaining wei
      if not ext_call.success:
          revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'

def withdrawToken(address _token, address _to, uint256 _value) payable: 
  mem[64] = 96
  require not call.value
  require calldata.size - 4 >=ΓÇ▓ 96
  require _token == _token
  require _to == _to
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
  mem[100] = _to
  mem[132] = _value
  call _token.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args _to, _value
  mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
  if not ext_call.success:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TransferHelper::safeTransfer: transfer failed'
  if mem[mem[96 len 4], Mask(224, 32, _to) >> 32]:
      require mem[mem[96 len 4], Mask(224, 32, _to) >> 32] >=ΓÇ▓ 32
      require mem[mem[96 len 4], Mask(224, 32, _to) >> 32 + 32] == bool(mem[mem[96 len 4], Mask(224, 32, _to) >> 32 + 32])
      if not mem[mem[96 len 4], Mask(224, 32, _to) >> 32 + 32]:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TransferHelper::safeTransfer: transfer failed'

def unknown00000003() payable: 
  if caller == this.address == 1:
      if uint8(cd) >> 248:
          call addr(cd) >> 96.0x128acb08 with:
               gas gas_remaining wei
              args this.address, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=20, data=Mask(160, 32, 13847067169082572429, 0) >> 32)
      else:
          call addr(cd) >> 96.0x128acb08 with:
               gas gas_remaining wei
              args this.address, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 20, Mask(160, 32, 13847067169082572429, 0) >> 32
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
  else:
      if uint32(cd) >> 224 != block.number and Mask(256, -224, cd[4]):
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BlockNumberError'
      if 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 != caller and 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 != caller and 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c != caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdminC'
      if uint8(cd) >> 248:
          call addr(cd) >> 96.0x128acb08 with:
               gas gas_remaining wei
              args this.address, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=20, data=Mask(160, 32, 13847067169082572429, 0) >> 32)
      else:
          call addr(cd) >> 96.0x128acb08 with:
               gas gas_remaining wei
              args this.address, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 20, Mask(160, 32, 13847067169082572429, 0) >> 32
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      mem[148] = 0x70a0823100000000000000000000000000000000000000000000000000000000
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      mem[148 len return_data.size] = ext_call.return_data[0 len return_data.size]
      if mem[148 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'

def account_info_rotate_tine(uint256 _param1) payable: 
  mem[64] = 96
  if caller == this.address != 1:
      if uint32(_param1) >> 224 != block.number and Mask(256, -224, _param1):
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BlockNumberError'
      if 0x744bc1d963e8f54395dfe504e343fc3f2fe8fc8b != caller and 0x83b4f74296738d8c2e15bd7c1f4a19df122354f5 != caller and 0xde09838eedb3030153524b5a14972e7c9ef65765 != caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdmin'
  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
  if not ext_call.success:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
  mem[96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
  if uint8(cd) >> 248:
      mem[100] = 0
      mem[132] = Mask(112, 0, cd >> 144
      mem[164] = this.address
      mem[196] = 128
      mem[228] = mem[0]
      if mem[0] > 0:
          mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
          if mem[0] % 32:
              mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
      call addr(cd) >> 96.0x22c0d9f with:
           gas gas_remaining wei
          args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
  else:
      mem[100] = Mask(112, 0, cd >> 144
      mem[132] = 0
      mem[164] = this.address
      mem[196] = 128
      mem[228] = mem[0]
      if mem[0] > 0:
          mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
          if mem[0] % 32:
              mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
      call addr(cd) >> 96.0x22c0d9f with:
           gas gas_remaining wei
          args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown00000004() payable: 
  if caller == this.address == 1:
      if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
          if addr(cd) >> 96 == addr(cd) >> 96:
              call addr(cd) >> 96.0x128acb08 with:
                   gas gas_remaining wei
                  args this.address, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=20, data=Mask(160, 32, Mask(64, 96, cd >> 32)
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if -uint32(this.address), 0 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'V3AOError'
          else:
              mem[148] = 0x128acb0800000000000000000000000000000000000000000000000000000000
              call addr(cd) >> 96.0x128acb08 with:
                   gas gas_remaining wei
                  args this.address, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 20, Mask(160, 32, Mask(64, 96, cd >> 32
              mem[148 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if -mem[148 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'V3AOError'
      else:
          if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
              call addr(cd) >> 96.0x128acb08 with:
                   gas gas_remaining wei
                  args this.address, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=20, data=Mask(160, 32, Mask(64, 96, cd >> 32)
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if -uint32(this.address), 0 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'V3AOError'
          else:
              mem[148] = 0x128acb0800000000000000000000000000000000000000000000000000000000
              call addr(cd) >> 96.0x128acb08 with:
                   gas gas_remaining wei
                  args this.address, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 20, Mask(160, 32, Mask(64, 96, cd >> 32
              mem[148 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if -mem[148 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'V3AOError'
  else:
      if uint32(cd) >> 224 != block.number and Mask(256, -224, cd[4]):
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BlockNumberError'
      if 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 != caller and 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 != caller and 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c != caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdminC'
      if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
          if addr(cd) >> 96 == addr(cd) >> 96:
              call addr(cd) >> 96.0x128acb08 with:
                   gas gas_remaining wei
                  args this.address, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=20, data=Mask(160, 32, Mask(64, 96, cd >> 32)
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if -uint32(this.address), 0 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'V3AOError'
          else:
              mem[148] = 0x128acb0800000000000000000000000000000000000000000000000000000000
              call addr(cd) >> 96.0x128acb08 with:
                   gas gas_remaining wei
                  args this.address, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 20, Mask(160, 32, Mask(64, 96, cd >> 32
              mem[148 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if -mem[148 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'V3AOError'
      else:
          if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
              call addr(cd) >> 96.0x128acb08 with:
                   gas gas_remaining wei
                  args this.address, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=20, data=Mask(160, 32, Mask(64, 96, cd >> 32)
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if -uint32(this.address), 0 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'V3AOError'
          else:
              mem[148] = 0x128acb0800000000000000000000000000000000000000000000000000000000
              call addr(cd) >> 96.0x128acb08 with:
                   gas gas_remaining wei
                  args this.address, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 20, Mask(160, 32, Mask(64, 96, cd >> 32
              mem[148 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if -mem[148 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'V3AOError'
      if call.value > 0 == 1:
          call block.coinbase with:
             value call.value wei
               gas gas_remaining wei
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
      mem[148] = 0x70a0823100000000000000000000000000000000000000000000000000000000
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      mem[148 len return_data.size] = ext_call.return_data[0 len return_data.size]
      if mem[148 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'

def razor_balance(bool _param1) payable: 
  mem[64] = 96
  if caller == this.address == 1:
      call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
      if not ext_call.success:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
      mem[96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
      if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
          if addr(cd) >> 96 == addr(cd) >> 96:
              mem[100] = 0
              mem[132] = Mask(112, 0, cd >> 144
              mem[164] = this.address
              mem[196] = 128
              mem[228] = mem[0]
              if mem[0] > 0:
                  mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                  if mem[0] % 32:
                      mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
          else:
              mem[100] = Mask(112, 0, cd >> 144
              mem[132] = 0
              mem[164] = this.address
              mem[196] = 128
              mem[228] = mem[0]
              if mem[0] > 0:
                  mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                  if mem[0] % 32:
                      mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
      else:
          if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
              mem[100] = 0
              mem[132] = Mask(112, 0, cd >> 144
              mem[164] = this.address
              mem[196] = 128
              mem[228] = mem[0]
              if mem[0] > 0:
                  mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                  if mem[0] % 32:
                      mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
          else:
              mem[100] = Mask(112, 0, cd >> 144
              mem[132] = 0
              mem[164] = this.address
              mem[196] = 128
              mem[228] = mem[0]
              if mem[0] > 0:
                  mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                  if mem[0] % 32:
                      mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
  else:
      if uint32(_param1) >> 224 != block.number and Mask(256, -224, _param1):
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BlockNumberError'
      if 0x744bc1d963e8f54395dfe504e343fc3f2fe8fc8b != caller and 0x83b4f74296738d8c2e15bd7c1f4a19df122354f5 != caller and 0xde09838eedb3030153524b5a14972e7c9ef65765 != caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdmin'
      call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
      if not ext_call.success:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
      mem[96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
      if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
          if addr(cd) >> 96 == addr(cd) >> 96:
              mem[100] = 0
              mem[132] = Mask(112, 0, cd >> 144
              mem[164] = this.address
              mem[196] = 128
              mem[228] = mem[0]
              if mem[0] > 0:
                  mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                  if mem[0] % 32:
                      mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
          else:
              mem[100] = Mask(112, 0, cd >> 144
              mem[132] = 0
              mem[164] = this.address
              mem[196] = 128
              mem[228] = mem[0]
              if mem[0] > 0:
                  mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                  if mem[0] % 32:
                      mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
      else:
          if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
              mem[100] = 0
              mem[132] = Mask(112, 0, cd >> 144
              mem[164] = this.address
              mem[196] = 128
              mem[228] = mem[0]
              if mem[0] > 0:
                  mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                  if mem[0] % 32:
                      mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
          else:
              mem[100] = Mask(112, 0, cd >> 144
              mem[132] = 0
              mem[164] = this.address
              mem[196] = 128
              mem[228] = mem[0]
              if mem[0] > 0:
                  mem[260 len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                  if mem[0] % 32:
                      mem[floor32(mem[0]) + 260] = mem[floor32(mem[0]) + 32]
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      if call.value > 0 == 1:
          call block.coinbase with:
             value call.value wei
               gas gas_remaining wei
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'

def unknown10d1e85c() payable: 
  if 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 != tx.origin and 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 != tx.origin and 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c != tx.origin:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdminC'
  if cd <= 88:
      call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args caller, Mask(112, 0, cd >> 144
      if not ext_call.success:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
  else:
      mem[96] = cd[132] - 55
      mem[128 len cd] = call.data[219 len cd[132] - 55]
      mem[64] = cd[132] + 73
      if uint8(cd) >> 248:
          mem[cd] = 0x128acb0800000000000000000000000000000000000000000000000000000000
          mem[cd] = caller
          if addr(cd) >> 96 < addr(cd) >> 96 == 1:
              if addr(cd) >> 96 == addr(cd) >> 96:
                  mem[cd] = 1
                  mem[cd] = Mask(112, 0, cd >> 144
                  mem[cd] = 4295128740
                  mem[cd] = 160
                  mem[cd] = cd[132] - 55
                  mem[cd len floor32(cd] = mem[128 len floor32(cd]
                  call addr(cd) >> 96.0x128acb08 with:
                       gas gas_remaining wei
                      args caller, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=cd, data=mem[cd len cd])
              else:
                  mem[cd] = 0
                  mem[cd] = Mask(112, 0, cd >> 144
                  mem[cd] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[cd] = 160
                  mem[cd] = cd[132] - 55
                  mem[cd len floor32(cd] = mem[128 len floor32(cd]
                  if cd % 32:
                      mem[cd] = mem[floor32(cd]
                  call addr(cd) >> 96.0x128acb08 with:
                       gas gas_remaining wei
                      args caller, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, cdmem[cd len cd]
          else:
              if addr(cd) >> 96 == addr(cd) >> 96:
                  mem[cd] = 1
                  mem[cd] = Mask(112, 0, cd >> 144
                  mem[cd] = 4295128740
                  mem[cd] = 160
                  mem[cd] = cd[132] - 55
                  mem[cd len floor32(cd] = mem[128 len floor32(cd]
                  call addr(cd) >> 96.0x128acb08 with:
                       gas gas_remaining wei
                      args caller, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=cd, data=mem[cd len cd])
              else:
                  mem[cd] = 0
                  mem[cd] = Mask(112, 0, cd >> 144
                  mem[cd] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[cd] = 160
                  mem[cd] = cd[132] - 55
                  mem[cd len floor32(cd] = mem[128 len floor32(cd]
                  if cd % 32:
                      mem[cd] = mem[floor32(cd]
                  call addr(cd) >> 96.0x128acb08 with:
                       gas gas_remaining wei
                      args caller, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, cdmem[cd len cd]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
      else:
          if cd >= 89:
              mem[cd] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      mem[cd] = 0
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = this.address
                      mem[cd] = 128
                      mem[cd] = cd[132] - 55
                      if cd > 0:
                          mem[cd len floor32(cd] = mem[128 len floor32(cd]
                          if cd % 32:
                              mem[cd] = mem[floor32(cd]
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, cdmem[cd len cd]
                  else:
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = 0
                      mem[cd] = this.address
                      mem[cd] = 128
                      mem[cd] = cd[132] - 55
                      if cd > 0:
                          mem[cd len floor32(cd] = mem[128 len floor32(cd]
                          if cd % 32:
                              mem[cd] = mem[floor32(cd]
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, cdmem[cd len cd]
              else:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      mem[cd] = 0
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = this.address
                      mem[cd] = 128
                      mem[cd] = cd[132] - 55
                      if cd > 0:
                          mem[cd len floor32(cd] = mem[128 len floor32(cd]
                          if cd % 32:
                              mem[cd] = mem[floor32(cd]
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, cdmem[cd len cd]
                  else:
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = 0
                      mem[cd] = this.address
                      mem[cd] = 128
                      mem[cd] = cd[132] - 55
                      if cd > 0:
                          mem[cd len floor32(cd] = mem[128 len floor32(cd]
                          if cd % 32:
                              mem[cd] = mem[floor32(cd]
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, cdmem[cd len cd]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
                   gas gas_remaining wei
                  args caller, Mask(112, 0, cd >> 144
          else:
              call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
                   gas gas_remaining wei
                  args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
              if not ext_call.success:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
              mem[cd] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      mem[cd] = 0
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = caller
                      mem[cd] = 128
                      mem[cd] = mem[0]
                      if mem[0] > 0:
                          mem[cd len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                          if mem[0] % 32:
                              mem[cdmem[0]) + 237] = mem[floor32(mem[0]) + 32]
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, caller, 128, mem[cd len mem[0] + 32]
                  else:
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = 0
                      mem[cd] = caller
                      mem[cd] = 128
                      mem[cd] = mem[0]
                      if mem[0] > 0:
                          mem[cd len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                          if mem[0] % 32:
                              mem[cdmem[0]) + 237] = mem[floor32(mem[0]) + 32]
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, caller, 128, mem[cd len mem[0] + 32]
              else:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      mem[cd] = 0
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = caller
                      mem[cd] = 128
                      mem[cd] = mem[0]
                      if mem[0] > 0:
                          mem[cd len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                          if mem[0] % 32:
                              mem[cdmem[0]) + 237] = mem[floor32(mem[0]) + 32]
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, caller, 128, mem[cd len mem[0] + 32]
                  else:
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = 0
                      mem[cd] = caller
                      mem[cd] = 128
                      mem[cd] = mem[0]
                      if mem[0] > 0:
                          mem[cd len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                          if mem[0] % 32:
                              mem[cdmem[0]) + 237] = mem[floor32(mem[0]) + 32]
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, caller, 128, mem[cd len mem[0] + 32]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]

def unknownfa461e33() payable: 
  if 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 != tx.origin and 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 != tx.origin and 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c != tx.origin:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdminC'
  if cd == 20:
      if cd >=ΓÇ▓ 0:
          call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args caller, cd[4]
      else:
          call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args caller, cd[36]
      if not ext_call.success:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
  else:
      if cd <= 88:
          if cd >=ΓÇ▓ 0:
              call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
                   gas gas_remaining wei
                  args caller, cd[4]
          else:
              call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
                   gas gas_remaining wei
                  args caller, cd[36]
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
      else:
          mem[96] = cd[100] - 55
          mem[128 len cd] = call.data[187 len cd[100] - 55]
          mem[64] = cd[100] + 73
          if uint8(cd) >> 248:
              mem[cd] = 0x128acb0800000000000000000000000000000000000000000000000000000000
              mem[cd] = caller
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      mem[cd] = 1
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = 4295128740
                      mem[cd] = 160
                      mem[cd] = cd[100] - 55
                      mem[cd len floor32(cd] = mem[128 len floor32(cd]
                      call addr(cd) >> 96.0x128acb08 with:
                           gas gas_remaining wei
                          args caller, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=cd, data=mem[cd len cd])
                  else:
                      mem[cd] = 0
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                      mem[cd] = 160
                      mem[cd] = cd[100] - 55
                      mem[cd len floor32(cd] = mem[128 len floor32(cd]
                      if cd % 32:
                          mem[cd] = mem[floor32(cd]
                      call addr(cd) >> 96.0x128acb08 with:
                           gas gas_remaining wei
                          args caller, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, cdmem[cd len cd]
              else:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      mem[cd] = 1
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = 4295128740
                      mem[cd] = 160
                      mem[cd] = cd[100] - 55
                      mem[cd len floor32(cd] = mem[128 len floor32(cd]
                      call addr(cd) >> 96.0x128acb08 with:
                           gas gas_remaining wei
                          args caller, 1, Mask(256, -144, cd << 144, 4295128740, Array(len=cd, data=mem[cd len cd])
                  else:
                      mem[cd] = 0
                      mem[cd] = Mask(112, 0, cd >> 144
                      mem[cd] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                      mem[cd] = 160
                      mem[cd] = cd[100] - 55
                      mem[cd len floor32(cd] = mem[128 len floor32(cd]
                      if cd % 32:
                          mem[cd] = mem[floor32(cd]
                      call addr(cd) >> 96.0x128acb08 with:
                           gas gas_remaining wei
                          args caller, 0, Mask(256, -144, cd << 144, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, cdmem[cd len cd]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
          else:
              if cd >= 89:
                  mem[cd] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                  if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          mem[cd] = 0
                          mem[cd] = Mask(112, 0, cd >> 144
                          mem[cd] = this.address
                          mem[cd] = 128
                          mem[cd] = cd[100] - 55
                          if cd > 0:
                              mem[cd len floor32(cd] = mem[128 len floor32(cd]
                              if cd % 32:
                                  mem[cd] = mem[floor32(cd]
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, this.address, 128, cdmem[cd len cd]
                      else:
                          mem[cd] = Mask(112, 0, cd >> 144
                          mem[cd] = 0
                          mem[cd] = this.address
                          mem[cd] = 128
                          mem[cd] = cd[100] - 55
                          if cd > 0:
                              mem[cd len floor32(cd] = mem[128 len floor32(cd]
                              if cd % 32:
                                  mem[cd] = mem[floor32(cd]
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, this.address, 128, cdmem[cd len cd]
                  else:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          mem[cd] = 0
                          mem[cd] = Mask(112, 0, cd >> 144
                          mem[cd] = this.address
                          mem[cd] = 128
                          mem[cd] = cd[100] - 55
                          if cd > 0:
                              mem[cd len floor32(cd] = mem[128 len floor32(cd]
                              if cd % 32:
                                  mem[cd] = mem[floor32(cd]
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, this.address, 128, cdmem[cd len cd]
                      else:
                          mem[cd] = Mask(112, 0, cd >> 144
                          mem[cd] = 0
                          mem[cd] = this.address
                          mem[cd] = 128
                          mem[cd] = cd[100] - 55
                          if cd > 0:
                              mem[cd len floor32(cd] = mem[128 len floor32(cd]
                              if cd % 32:
                                  mem[cd] = mem[floor32(cd]
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, this.address, 128, cdmem[cd len cd]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
                       gas gas_remaining wei
                      args caller, Mask(112, 0, cd >> 144
              else:
                  call addr(cd) >> 96.transfer(address to, uint256 tokens) with:
                       gas gas_remaining wei
                      args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
                  if not ext_call.success:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
                  mem[cd] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                  if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          mem[cd] = 0
                          mem[cd] = Mask(112, 0, cd >> 144
                          mem[cd] = caller
                          mem[cd] = 128
                          mem[cd] = mem[0]
                          if mem[0] > 0:
                              mem[cd len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                              if mem[0] % 32:
                                  mem[cdmem[0]) + 237] = mem[floor32(mem[0]) + 32]
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, caller, 128, mem[cd len mem[0] + 32]
                      else:
                          mem[cd] = Mask(112, 0, cd >> 144
                          mem[cd] = 0
                          mem[cd] = caller
                          mem[cd] = 128
                          mem[cd] = mem[0]
                          if mem[0] > 0:
                              mem[cd len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                              if mem[0] % 32:
                                  mem[cdmem[0]) + 237] = mem[floor32(mem[0]) + 32]
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, caller, 128, mem[cd len mem[0] + 32]
                  else:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          mem[cd] = 0
                          mem[cd] = Mask(112, 0, cd >> 144
                          mem[cd] = caller
                          mem[cd] = 128
                          mem[cd] = mem[0]
                          if mem[0] > 0:
                              mem[cd len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                              if mem[0] % 32:
                                  mem[cdmem[0]) + 237] = mem[floor32(mem[0]) + 32]
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, caller, 128, mem[cd len mem[0] + 32]
                      else:
                          mem[cd] = Mask(112, 0, cd >> 144
                          mem[cd] = 0
                          mem[cd] = caller
                          mem[cd] = 128
                          mem[cd] = mem[0]
                          if mem[0] > 0:
                              mem[cd len floor32(mem[0])] = mem[32 len floor32(mem[0])]
                              if mem[0] % 32:
                                  mem[cdmem[0]) + 237] = mem[floor32(mem[0]) + 32]
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, caller, 128, mem[cd len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]

def unknown00000005() payable: 
  if caller == this.address == 1:
      if not call.value:
          mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
          static call addr(cd) >> 96.getReserves() with:
                  gas gas_remaining wei
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if uint8(cd) >> 248 == 1:
              if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
          else:
              if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
      if not ext_call.success:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
      mem[228] = mem[0]
      if mem[0] > 0:
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      if uint8(cd) >> 248:
          call addr(cd) >> 96.0x22c0d9f with:
               gas gas_remaining wei
              args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
      else:
          call addr(cd) >> 96.0x22c0d9f with:
               gas gas_remaining wei
              args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      mem[228] = mem[0]
      if mem[0] > 0:
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      if -(uint8(cd) >> 248) + 1:
          call addr(cd) >> 96.0x22c0d9f with:
               gas gas_remaining wei
              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
      else:
          call addr(cd) >> 96.0x22c0d9f with:
               gas gas_remaining wei
              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      stop
  if uint32(cd) >> 224 != block.number and Mask(256, -224, cd[4]):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BlockNumberError'
  if uint16(cd) >> 240 > 0 == 1:
      if 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 != caller and 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 != caller and 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c != caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdminC'
  else:
      if 0x744bc1d963e8f54395dfe504e343fc3f2fe8fc8b != caller and 0x83b4f74296738d8c2e15bd7c1f4a19df122354f5 != caller and 0xde09838eedb3030153524b5a14972e7c9ef65765 != caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdmin'
  if not call.value:
      mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
      static call addr(cd) >> 96.getReserves() with:
              gas gas_remaining wei
      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
      if uint8(cd) >> 248 == 1:
          if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
      else:
          if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
      if not ext_call.success:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
      mem[228] = mem[0]
      if uint8(cd) >> 248:
          if mem[0] <= 0:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[228] = mem[0]
              if -(uint8(cd) >> 248) + 1:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 == 1:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                          if not Mask(256, -240, cd[36]):
                              stop
                      else:
                          if not Mask(256, -144, cd[22]):
                              if not Mask(256, -240, cd[36]):
                                  stop
                          else:
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
              else:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 == 1:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                          if not Mask(256, -240, cd[36]):
                              stop
                      else:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
      else:
          if mem[0] <= 0:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[228] = mem[0]
              if -(uint8(cd) >> 248) + 1:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 == 1:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                          if not Mask(256, -240, cd[36]):
                              stop
                      else:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
              else:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 == 1:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
  else:
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
      if not ext_call.success:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
      mem[228] = mem[0]
      if uint8(cd) >> 248:
          if mem[0] > 0:
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          call addr(cd) >> 96.0x22c0d9f with:
               gas gas_remaining wei
              args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          mem[228] = mem[0]
          if mem[0] > 0:
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          if -(uint8(cd) >> 248) + 1:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
          else:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          if call.value > 0 == 1:
              call block.coinbase with:
                 value call.value wei
                   gas gas_remaining wei
              if not ext_call.success:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
          else:
              if Mask(256, -144, cd[22]):
                  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                       gas gas_remaining wei
                      args (Mask(112, 0, cd >> 144)
                  if not ext_call.success:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                  call block.coinbase with:
                     value Mask(112, 0, cd >> 144 wei
                       gas gas_remaining wei
          if Mask(256, -240, cd[36]):
              mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args this.address
              mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if mem[96 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
          stop
      if mem[0] <= 0:
          call addr(cd) >> 96.0x22c0d9f with:
               gas gas_remaining wei
              args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          mem[228] = mem[0]
          if -(uint8(cd) >> 248) + 1:
              if mem[0] > 0:
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if call.value > 0 == 1:
                  call block.coinbase with:
                     value call.value wei
                       gas gas_remaining wei
                  if not ext_call.success:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
              else:
                  if Mask(256, -144, cd[22]):
                      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                           gas gas_remaining wei
                          args (Mask(112, 0, cd >> 144)
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                      call block.coinbase with:
                         value Mask(112, 0, cd >> 144 wei
                           gas gas_remaining wei
              if Mask(256, -240, cd[36]):
                  mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                  static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args this.address
                  mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if mem[96 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
              stop
          if mem[0] <= 0:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              if call.value > 0 == 1:
                  call block.coinbase with:
                     value call.value wei
                       gas gas_remaining wei
                  if not ext_call.success:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                  if Mask(256, -240, cd[36]):
                      mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[96 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                  stop
              if not Mask(256, -144, cd[22]):
                  if Mask(256, -240, cd[36]):
                      mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[96 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                  stop
              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                   gas gas_remaining wei
                  args (Mask(112, 0, cd >> 144)
              if not ext_call.success:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
              call block.coinbase with:
                 value Mask(112, 0, cd >> 144 wei
                   gas gas_remaining wei
              if not Mask(256, -240, cd[36]):
                  stop
              mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args this.address
              mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown00000008() payable: 
  if caller == this.address == 1:
      if call.value:
          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
          mem[228] = mem[0]
          if mem[0] > 0:
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          if uint8(cd) >> 248:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
          else:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          mem[228] = mem[0]
          if mem[0] > 0:
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          if uint8(cd) >> 248:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
          else:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          mem[228] = mem[0]
          if mem[0] > 0:
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          if uint8(cd) >> 248:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
          else:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          stop
      mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
      static call addr(cd) >> 96.getReserves() with:
              gas gas_remaining wei
      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
      if uint8(cd) >> 248 == 1:
          if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
      else:
          if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
      if not ext_call.success:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
      mem[228] = mem[0]
      if uint8(cd) >> 248:
          if mem[0] <= 0:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[228] = mem[0]
              if uint8(cd) >> 248:
                  if mem[0] > 0:
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[228] = mem[0]
                  if mem[0] > 0:
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  if uint8(cd) >> 248:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                  else:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  stop
              if mem[0] <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[228] = mem[0]
                  if uint8(cd) >> 248:
                      if mem[0] > 0:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      stop
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
      else:
          if mem[0] <= 0:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[228] = mem[0]
              if uint8(cd) >> 248:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[228] = mem[0]
                      if uint8(cd) >> 248:
                          if mem[0] > 0:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          stop
                      if mem[0] <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
              else:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[228] = mem[0]
                      if uint8(cd) >> 248:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
  else:
      if uint32(cd) >> 224 != block.number and Mask(256, -224, cd[4]):
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BlockNumberError'
      if uint16(cd) >> 240 > 0 == 1:
          if 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 != caller and 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 != caller and 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c != caller:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdminC'
      else:
          if 0x744bc1d963e8f54395dfe504e343fc3f2fe8fc8b != caller and 0x83b4f74296738d8c2e15bd7c1f4a19df122354f5 != caller and 0xde09838eedb3030153524b5a14972e7c9ef65765 != caller:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdmin'
      if not call.value:
          mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
          static call addr(cd) >> 96.getReserves() with:
                  gas gas_remaining wei
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if uint8(cd) >> 248 == 1:
              if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
          else:
              if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
          mem[228] = mem[0]
          if uint8(cd) >> 248:
              if mem[0] <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[228] = mem[0]
                  if uint8(cd) >> 248:
                      if mem[0] <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                  else:
                      if mem[0] <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
          else:
              if mem[0] <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[228] = mem[0]
                  if not uint8(cd) >> 248:
                      if mem[0] <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                  else:
                      if mem[0] <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
      else:
          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
          mem[228] = mem[0]
          if not uint8(cd) >> 248:
              if mem[0] <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[228] = mem[0]
                  if uint8(cd) >> 248:
                      if mem[0] <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[228] = mem[0]
                          if uint8(cd) >> 248:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if call.value > 0 == 1:
                                      call block.coinbase with:
                                         value call.value wei
                                           gas gas_remaining wei
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if call.value > 0 == 1:
                                      call block.coinbase with:
                                         value call.value wei
                                           gas gas_remaining wei
                  else:
                      if mem[0] <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[228] = mem[0]
                          if not uint8(cd) >> 248:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if call.value > 0 == 1:
                                      call block.coinbase with:
                                         value call.value wei
                                           gas gas_remaining wei
          else:
              if mem[0] <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[228] = mem[0]
                  if not uint8(cd) >> 248:
                      if mem[0] <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[228] = mem[0]
                          if uint8(cd) >> 248:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if call.value > 0 == 1:
                                      call block.coinbase with:
                                         value call.value wei
                                           gas gas_remaining wei
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if call.value > 0 == 1:
                                      call block.coinbase with:
                                         value call.value wei
                                           gas gas_remaining wei
                  else:
                      if mem[0] <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[228] = mem[0]
                          if not uint8(cd) >> 248:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if call.value > 0 == 1:
                                      call block.coinbase with:
                                         value call.value wei
                                           gas gas_remaining wei
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if call.value > 0 == 1:
                                      call block.coinbase with:
                                         value call.value wei
                                           gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def _fallback() payable: # default function
  if caller == this.address == 1:
      idx = 0
      while idx < uint8(cd) >> 248:
          if idx + 1 < uint8(cd) >> 248:
              if Mask(256, -2 * idx + 1, uint16(cd) >> 240) >> 2 * idx + 1 % 4:
                  if Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4:
                      if idx:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
                      else:
                          if call.value:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                              else:
                                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                          else:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
                  else:
                      if not idx:
                          if call.value:
                              call addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96.transfer(address to, uint256 tokens) with:
                                   gas gas_remaining wei
                                  args Mask(256, -96, cd[((20 * idx) + 39)]) << 96, Mask(112, 0, cd[((40 * uint8(cd) >> 248) + 59)]) >> 144
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
                      else:
                          mem[228] = mem[0]
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                                  if mem[0] <= 0:
                                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                           gas gas_remaining wei
                                          args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, this.address, 128, mem[228 len mem[0] + 32]
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if mem[0] <= 0:
                                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                           gas gas_remaining wei
                                          args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                                  if mem[0] <= 0:
                                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                           gas gas_remaining wei
                                          args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, this.address, 128, mem[228 len mem[0] + 32]
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if mem[0] <= 0:
                                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                           gas gas_remaining wei
                                          args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
              else:
                  if Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4:
                      if idx:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                          else:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                      else:
                          if call.value:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                              else:
                                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                          else:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
                  else:
                      if not idx:
                          if call.value:
                              call addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96.transfer(address to, uint256 tokens) with:
                                   gas gas_remaining wei
                                  args Mask(256, -96, cd[((20 * idx) + 39)]) << 96, Mask(112, 0, cd[((40 * uint8(cd) >> 248) + 59)]) >> 144
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
                      else:
                          mem[228] = mem[0]
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                                  if mem[0] <= 0:
                                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                           gas gas_remaining wei
                                          args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, Mask(256, -96, cd[((20 * idx) + 59)]) << 96, 128, mem[228 len mem[0] + 32]
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if mem[0] <= 0:
                                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                           gas gas_remaining wei
                                          args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, Mask(256, -96, cd[((20 * idx) + 59)]) << 96, 128, mem[228 len mem[0] + 32]
                          else:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                                  if mem[0] <= 0:
                                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                           gas gas_remaining wei
                                          args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, Mask(256, -96, cd[((20 * idx) + 59)]) << 96, 128, mem[228 len mem[0] + 32]
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if mem[0] <= 0:
                                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                           gas gas_remaining wei
                                          args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, Mask(256, -96, cd[((20 * idx) + 59)]) << 96, 128, mem[228 len mem[0] + 32]
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          if Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4:
              if idx:
                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
              else:
                  if call.value:
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
                  else:
                      if not Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4 != 1:
                          static call addr(cd[((20 * idx) + 39)]) >> 96.0x3850c7bd with:
                                  gas gas_remaining wei
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                      else:
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          if not idx:
              if not call.value:
                  if not Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4 != 1:
                      static call addr(cd[((20 * idx) + 39)]) >> 96.0x3850c7bd with:
                              gas gas_remaining wei
                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                  else:
              else:
                  call addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96.transfer(address to, uint256 tokens) with:
                       gas gas_remaining wei
                      args Mask(256, -96, cd[((20 * idx) + 39)]) << 96, Mask(112, 0, cd[((40 * uint8(cd) >> 248) + 59)]) >> 144
                  if not ext_call.success:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                  else:
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                  mem[228] = mem[0]
                  if mem[0] <= 0:
                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          else:
              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                  mem[228] = mem[0]
                  if mem[0] <= 0:
                      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          mem[96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
          mem[100] = 0
          mem[132] = Mask(112, 0, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) >> 144
          mem[164] = this.address
          mem[196] = 128
          mem[228] = mem[0]
          if mem[0] > 0:
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
          call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
               gas gas_remaining wei
              args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, this.address, 128, mem[228 len mem[0] + 32]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          idx = idx + 1
          continue 
      stop
  if uint32(cd) >> 224 != block.number and Mask(256, -224, cd[4]):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BlockNumberError'
  if uint16(cd) >> 240 > 0 == 1:
      if 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 != caller and 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 != caller and 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c != caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdminC'
  else:
      if 0x744bc1d963e8f54395dfe504e343fc3f2fe8fc8b != caller and 0x83b4f74296738d8c2e15bd7c1f4a19df122354f5 != caller and 0xde09838eedb3030153524b5a14972e7c9ef65765 != caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdmin'
  idx = 0
  while idx < uint8(cd) >> 248:
      if idx + 1 < uint8(cd) >> 248:
          if Mask(256, -2 * idx + 1, uint16(cd) >> 240) >> 2 * idx + 1 % 4:
              if Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4:
                  if idx:
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
                  else:
                      if call.value:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                          else:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                      else:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
              else:
                  if not idx:
                      if call.value:
                          call addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96.transfer(address to, uint256 tokens) with:
                               gas gas_remaining wei
                              args Mask(256, -96, cd[((20 * idx) + 39)]) << 96, Mask(112, 0, cd[((40 * uint8(cd) >> 248) + 59)]) >> 144
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
                  else:
                      mem[228] = mem[0]
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
          else:
              if Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4:
                  if idx:
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                      else:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                  else:
                      if call.value:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                          else:
                              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                      else:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
              else:
                  if not idx:
                      if call.value:
                          call addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96.transfer(address to, uint256 tokens) with:
                               gas gas_remaining wei
                              args Mask(256, -96, cd[((20 * idx) + 39)]) << 96, Mask(112, 0, cd[((40 * uint8(cd) >> 248) + 59)]) >> 144
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
                  else:
                      mem[228] = mem[0]
                      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, Mask(256, -96, cd[((20 * idx) + 59)]) << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, Mask(256, -96, cd[((20 * idx) + 59)]) << 96, 128, mem[228 len mem[0] + 32]
                      else:
                          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, Mask(256, -96, cd[((20 * idx) + 59)]) << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, Mask(256, -96, cd[((20 * idx) + 59)]) << 96, 128, mem[228 len mem[0] + 32]
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      if Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4:
          if idx:
              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
          else:
              if call.value:
                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 != 1:
              else:
                  if not Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4 != 1:
                      static call addr(cd[((20 * idx) + 39)]) >> 96.0x3850c7bd with:
                              gas gas_remaining wei
                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                  else:
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      if not idx:
          if not call.value:
              if not Mask(256, -2 * idx, uint16(cd) >> 240) >> 2 * idx % 4 != 1:
                  static call addr(cd[((20 * idx) + 39)]) >> 96.0x3850c7bd with:
                          gas gas_remaining wei
              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
              else:
          else:
              call addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96.transfer(address to, uint256 tokens) with:
                   gas gas_remaining wei
                  args Mask(256, -96, cd[((20 * idx) + 39)]) << 96, Mask(112, 0, cd[((40 * uint8(cd) >> 248) + 59)]) >> 144
              if not ext_call.success:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
              if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
              else:
                  if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 == addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 < addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96 == 1:
          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96:
              mem[228] = mem[0]
              if mem[0] <= 0:
                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      else:
          if addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 39)]) >> 96 != addr(cd[((20 * uint8(cd) >> 248) + (20 * idx) + 59)]) >> 96:
              mem[228] = mem[0]
              if mem[0] <= 0:
                  call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      mem[96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
      mem[100] = 0
      mem[132] = Mask(112, 0, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) >> 144
      mem[164] = this.address
      mem[196] = 128
      mem[228] = mem[0]
      if mem[0] > 0:
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      call addr(cd[((20 * idx) + 39)]) >> 96.0x22c0d9f with:
           gas gas_remaining wei
          args 0, Mask(256, -144, cd[((40 * uint8(cd) >> 248) + (14 * idx) + 73)]) << 144, this.address, 128, mem[228 len mem[0] + 32]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 
  if call.value > 0 == 1:
      call block.coinbase with:
         value call.value wei
           gas gas_remaining wei
      if not ext_call.success:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
      if Mask(256, -240, cd[36]):
          mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if mem[96 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
      stop
  if not Mask(256, -144, cd[22]):
      if Mask(256, -240, cd[36]):
          mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if mem[96 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
      stop
  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
       gas gas_remaining wei
      args (Mask(112, 0, cd >> 144)
  if not ext_call.success:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
  call block.coinbase with:
     value Mask(112, 0, cd >> 144 wei
       gas gas_remaining wei
  if not Mask(256, -240, cd[36]):
      stop
  mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
  static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown00000007() payable: 
  if caller == this.address == 1:
      if call.value:
          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
          mem[228] = mem[0]
          if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < addr(cd) >> 96 == 1:
              if mem[0] <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[228] = mem[0]
                  if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[228] = mem[0]
                              if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                  if addr(cd) >> 96 == addr(cd) >> 96:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[228] = mem[0]
                              if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                  if addr(cd) >> 96 == addr(cd) >> 96:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                  else:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[228] = mem[0]
                              if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                  if addr(cd) >> 96 == addr(cd) >> 96:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[228] = mem[0]
                              if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                  if addr(cd) >> 96 == addr(cd) >> 96:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
          else:
              if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == addr(cd) >> 96:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[228] = mem[0]
                      if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
              else:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[228] = mem[0]
                      if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
      else:
          mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
          static call addr(cd) >> 96.getReserves() with:
                  gas gas_remaining wei
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < addr(cd) >> 96 == 1:
              if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
          else:
              if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                  if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
              else:
                  if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
          mem[228] = mem[0]
          if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < addr(cd) >> 96 == 1:
              if mem[0] <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[228] = mem[0]
                  if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                  else:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
          else:
              if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == addr(cd) >> 96:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[228] = mem[0]
                      if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
              else:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[228] = mem[0]
                      if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      else:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
  else:
      if uint32(cd) >> 224 != block.number and Mask(256, -224, cd[4]):
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BlockNumberError'
      if 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 != caller and 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 != caller and 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c != caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdminC'
      if not call.value:
          mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
          static call addr(cd) >> 96.getReserves() with:
                  gas gas_remaining wei
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < addr(cd) >> 96 == 1:
              if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
          else:
              if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                  if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
              else:
                  if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
          mem[228] = mem[0]
          if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < addr(cd) >> 96 == 1:
              if mem[0] <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if addr(cd) >> 96 < addr(cd) >> 96 != 1:
          else:
              if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == addr(cd) >> 96:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if addr(cd) >> 96 < addr(cd) >> 96 != 1:
              else:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if addr(cd) >> 96 < addr(cd) >> 96 != 1:
      else:
          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args Mask(256, -96, cd << 96, Mask(112, 0, cd >> 144
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'safeTransfer:transfer failed'
          mem[228] = mem[0]
          if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < addr(cd) >> 96 == 1:
              if mem[0] <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[228] = mem[0]
                  if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[228] = mem[0]
                              if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                  if addr(cd) >> 96 == addr(cd) >> 96:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                              else:
                                  if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                      else:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                  if addr(cd) >> 96 == addr(cd) >> 96:
                                      mem[228] = mem[0]
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                              else:
                                  if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                      mem[228] = mem[0]
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                  else:
                      if addr(cd) >> 96 == addr(cd) >> 96:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[228] = mem[0]
                              if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                  if addr(cd) >> 96 == addr(cd) >> 96:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                              else:
                                  if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                      else:
                          if mem[0] <= 0:
                              call addr(cd) >> 96.0x22c0d9f with:
                                   gas gas_remaining wei
                                  args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                  if addr(cd) >> 96 == addr(cd) >> 96:
                                      mem[228] = mem[0]
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                              else:
                                  if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                      mem[228] = mem[0]
                                      if mem[0] <= 0:
                                          call addr(cd) >> 96.0x22c0d9f with:
                                               gas gas_remaining wei
                                              args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
          else:
              if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == addr(cd) >> 96:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[228] = mem[0]
                      if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          mem[228] = mem[0]
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          mem[228] = mem[0]
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                      else:
                          if addr(cd) >> 96 == addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[228] = mem[0]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                      else:
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args Mask(256, -144, cd << 144, 0, this.address, 128, mem[228 len mem[0] + 32]
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          mem[228] = mem[0]
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          mem[228] = mem[0]
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
              else:
                  if mem[0] <= 0:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[228] = mem[0]
                      if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                          if addr(cd) >> 96 != addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          mem[228] = mem[0]
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          mem[228] = mem[0]
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                      else:
                          if addr(cd) >> 96 != addr(cd) >> 96:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args Mask(256, -144, cd << 144, 0, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                          else:
                              if mem[0] <= 0:
                                  call addr(cd) >> 96.0x22c0d9f with:
                                       gas gas_remaining wei
                                      args 0, Mask(256, -144, cd << 144, Mask(256, -96, cd << 96, 128, mem[228 len mem[0] + 32]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if addr(cd) >> 96 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == 1:
                                      if addr(cd) >> 96 == addr(cd) >> 96:
                                          mem[228] = mem[0]
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
                                  else:
                                      if addr(cd) >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                          mem[228] = mem[0]
                                          if mem[0] <= 0:
                                              call addr(cd) >> 96.0x22c0d9f with:
                                                   gas gas_remaining wei
                                                  args 0, Mask(256, -144, cd << 144, this.address, 128, mem[228 len mem[0] + 32]
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown00000006() payable: 
  if caller == this.address == 1:
      if not call.value:
          if addr(cd) >> 96 < addr(cd) >> 96 == 1:
              if addr(cd) >> 96 == addr(cd) >> 96 == 1:
                  if not Mask(256, -248, cd == 1:
                      mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                      static call addr(cd) >> 96.getReserves() with:
                              gas gas_remaining wei
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
                  else:
                      mem[96] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000
                      static call addr(cd) >> 96.0x3850c7bd with:
                              gas gas_remaining wei
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[96] < addr(cd[(calldata.size - 20)]) >> 96:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE2'
              else:
                  if not Mask(256, -248, cd == 1:
                      mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                      static call addr(cd) >> 96.getReserves() with:
                              gas gas_remaining wei
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
                  else:
                      mem[96] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000
                      static call addr(cd) >> 96.0x3850c7bd with:
                              gas gas_remaining wei
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[96] > addr(cd[(calldata.size - 20)]) >> 96:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE3'
          else:
              if addr(cd) >> 96 == addr(cd) >> 96 == 1:
                  if not Mask(256, -248, cd == 1:
                      mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                      static call addr(cd) >> 96.getReserves() with:
                              gas gas_remaining wei
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
                  else:
                      mem[96] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000
                      static call addr(cd) >> 96.0x3850c7bd with:
                              gas gas_remaining wei
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[96] < addr(cd[(calldata.size - 20)]) >> 96:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE2'
              else:
                  if not Mask(256, -248, cd == 1:
                      mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                      static call addr(cd) >> 96.getReserves() with:
                              gas gas_remaining wei
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
                  else:
                      mem[96] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000
                      static call addr(cd) >> 96.0x3850c7bd with:
                              gas gas_remaining wei
                      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[96] > addr(cd[(calldata.size - 20)]) >> 96:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE3'
      if not Mask(256, -248, cd[70]) != 1:
          if addr(cd) >> 96 < addr(cd) >> 96 != 1:
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      if calldata.size - 91 > 0:
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      if addr(cd) >> 96 < addr(cd) >> 96 == 1:
          if addr(cd) >> 96 == addr(cd) >> 96:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
          else:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
      else:
          if addr(cd) >> 96 == addr(cd) >> 96:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
          else:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      stop
  if uint32(cd) >> 224 != block.number and Mask(256, -224, cd[4]):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BlockNumberError'
  if 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 != caller and 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 != caller and 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c != caller:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'NotAdminC'
  if call.value:
      mem[96] = calldata.size - 91
      mem[128 len calldata.size - 91] = call.data[91 len calldata.size - 91]
      mem[64] = calldata.size + 37
      if not Mask(256, -248, cd[70]) != 1:
          if addr(cd) >> 96 < addr(cd) >> 96 != 1:
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      if calldata.size - 91 > 0:
          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
      if addr(cd) >> 96 < addr(cd) >> 96 == 1:
          if addr(cd) >> 96 == addr(cd) >> 96:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
          else:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
      else:
          if addr(cd) >> 96 == addr(cd) >> 96:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
          else:
              call addr(cd) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      if call.value > 0 == 1:
          call block.coinbase with:
             value call.value wei
               gas gas_remaining wei
          if not ext_call.success:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
      else:
          if Mask(256, -144, cd[22]):
              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                   gas gas_remaining wei
                  args (Mask(112, 0, cd >> 144)
              if not ext_call.success:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
              call block.coinbase with:
                 value Mask(112, 0, cd >> 144 wei
                   gas gas_remaining wei
      mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
      if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
      stop
  if addr(cd) >> 96 < addr(cd) >> 96 == 1:
      if addr(cd) >> 96 == addr(cd) >> 96 == 1:
          if not Mask(256, -248, cd == 1:
              mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
              static call addr(cd) >> 96.getReserves() with:
                      gas gas_remaining wei
              mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
              mem[96] = calldata.size - 91
              mem[128 len calldata.size - 91] = call.data[91 len calldata.size - 91]
              mem[64] = calldata.size + 37
              if not Mask(256, -248, cd[70]) != 1:
                  if addr(cd) >> 96 < addr(cd) >> 96 != 1:
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if calldata.size - 91 > 0:
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                  else:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                              call block.coinbase with:
                                 value Mask(112, 0, cd >> 144 wei
                                   gas gas_remaining wei
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      else:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
              else:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                  else:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                              call block.coinbase with:
                                 value Mask(112, 0, cd >> 144 wei
                                   gas gas_remaining wei
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      else:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args this.address
              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
              stop
          mem[96] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000
          static call addr(cd) >> 96.0x3850c7bd with:
                  gas gas_remaining wei
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if mem[96] < addr(cd[(calldata.size - 20)]) >> 96:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE2'
          mem[96] = calldata.size - 91
          mem[128 len calldata.size - 91] = call.data[91 len calldata.size - 91]
          mem[64] = calldata.size + 37
          if not Mask(256, -248, cd[70]) != 1:
              if addr(cd) >> 96 < addr(cd) >> 96 != 1:
          else:
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      if calldata.size - 91 <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          if call.value > 0 == 1:
                              call block.coinbase with:
                                 value call.value wei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  else:
                      if calldata.size - 91 <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          if call.value > 0 == 1:
                              call block.coinbase with:
                                 value call.value wei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
              else:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      if calldata.size - 91 <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          if call.value > 0 == 1:
                              call block.coinbase with:
                                 value call.value wei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  else:
                      if calldata.size - 91 <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          if call.value > 0 == 1:
                              call block.coinbase with:
                                 value call.value wei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
      else:
          if not Mask(256, -248, cd == 1:
              mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
              static call addr(cd) >> 96.getReserves() with:
                      gas gas_remaining wei
              mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
              mem[96] = calldata.size - 91
              mem[128 len calldata.size - 91] = call.data[91 len calldata.size - 91]
              mem[64] = calldata.size + 37
              if not Mask(256, -248, cd[70]) != 1:
                  if addr(cd) >> 96 < addr(cd) >> 96 != 1:
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if calldata.size - 91 > 0:
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                  else:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                              call block.coinbase with:
                                 value Mask(112, 0, cd >> 144 wei
                                   gas gas_remaining wei
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      else:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
              else:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                  else:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                              call block.coinbase with:
                                 value Mask(112, 0, cd >> 144 wei
                                   gas gas_remaining wei
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      else:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args this.address
              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
              stop
          mem[96] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000
          static call addr(cd) >> 96.0x3850c7bd with:
                  gas gas_remaining wei
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if mem[96] > addr(cd[(calldata.size - 20)]) >> 96:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE3'
          mem[96] = calldata.size - 91
          mem[128 len calldata.size - 91] = call.data[91 len calldata.size - 91]
          mem[64] = calldata.size + 37
          if not Mask(256, -248, cd[70]) != 1:
              if addr(cd) >> 96 < addr(cd) >> 96 != 1:
          else:
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 != addr(cd) >> 96:
                      if calldata.size - 91 > 0:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                      mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                      stop
              else:
                  if addr(cd) >> 96 != addr(cd) >> 96:
                      if calldata.size - 91 > 0:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                      mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                      stop
              if calldata.size - 91 <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if call.value > 0 == 1:
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                      mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                      stop
                  if not Mask(256, -144, cd[22]):
                      mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                      stop
                  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                       gas gas_remaining wei
                      args (Mask(112, 0, cd >> 144)
                  if not ext_call.success:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                  call block.coinbase with:
                     value Mask(112, 0, cd >> 144 wei
                       gas gas_remaining wei
                  mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                  static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args this.address
                  mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
  else:
      if addr(cd) >> 96 == addr(cd) >> 96 == 1:
          if not Mask(256, -248, cd == 1:
              mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
              static call addr(cd) >> 96.getReserves() with:
                      gas gas_remaining wei
              mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if 997 * Mask(112, 0, cd >> 144 * mem[128] / (1000 * mem[96]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
              mem[96] = calldata.size - 91
              mem[128 len calldata.size - 91] = call.data[91 len calldata.size - 91]
              mem[64] = calldata.size + 37
              if not Mask(256, -248, cd[70]) != 1:
                  if addr(cd) >> 96 < addr(cd) >> 96 != 1:
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if calldata.size - 91 > 0:
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                  else:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                              call block.coinbase with:
                                 value Mask(112, 0, cd >> 144 wei
                                   gas gas_remaining wei
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      else:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
              else:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                  else:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                              call block.coinbase with:
                                 value Mask(112, 0, cd >> 144 wei
                                   gas gas_remaining wei
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      else:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args this.address
              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
              stop
          mem[96] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000
          static call addr(cd) >> 96.0x3850c7bd with:
                  gas gas_remaining wei
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if mem[96] < addr(cd[(calldata.size - 20)]) >> 96:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE2'
          mem[96] = calldata.size - 91
          mem[128 len calldata.size - 91] = call.data[91 len calldata.size - 91]
          mem[64] = calldata.size + 37
          if not Mask(256, -248, cd[70]) != 1:
              if addr(cd) >> 96 < addr(cd) >> 96 != 1:
          else:
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      if calldata.size - 91 <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          if call.value > 0 == 1:
                              call block.coinbase with:
                                 value call.value wei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  else:
                      if calldata.size - 91 <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          if call.value > 0 == 1:
                              call block.coinbase with:
                                 value call.value wei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
              else:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      if calldata.size - 91 <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          if call.value > 0 == 1:
                              call block.coinbase with:
                                 value call.value wei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  else:
                      if calldata.size - 91 <= 0:
                          call addr(cd) >> 96.0x22c0d9f with:
                               gas gas_remaining wei
                              args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          if call.value > 0 == 1:
                              call block.coinbase with:
                                 value call.value wei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
      else:
          if not Mask(256, -248, cd == 1:
              mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
              static call addr(cd) >> 96.getReserves() with:
                      gas gas_remaining wei
              mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if 997 * Mask(112, 0, cd >> 144 * mem[96] / (1000 * mem[128]) + (997 * Mask(112, 0, cd >> 144) < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE1'
              mem[96] = calldata.size - 91
              mem[128 len calldata.size - 91] = call.data[91 len calldata.size - 91]
              mem[64] = calldata.size + 37
              if not Mask(256, -248, cd[70]) != 1:
                  if addr(cd) >> 96 < addr(cd) >> 96 != 1:
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if calldata.size - 91 > 0:
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                  else:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                              call block.coinbase with:
                                 value Mask(112, 0, cd >> 144 wei
                                   gas gas_remaining wei
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      else:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
              else:
                  if addr(cd) >> 96 == addr(cd) >> 96:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                  else:
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if Mask(256, -144, cd[22]):
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                                   gas gas_remaining wei
                                  args (Mask(112, 0, cd >> 144)
                              if not ext_call.success:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                              call block.coinbase with:
                                 value Mask(112, 0, cd >> 144 wei
                                   gas gas_remaining wei
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      else:
                          call block.coinbase with:
                             value call.value wei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args this.address
              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
              stop
          mem[96] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000
          static call addr(cd) >> 96.0x3850c7bd with:
                  gas gas_remaining wei
          mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if mem[96] > addr(cd[(calldata.size - 20)]) >> 96:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'CE3'
          mem[96] = calldata.size - 91
          mem[128 len calldata.size - 91] = call.data[91 len calldata.size - 91]
          mem[64] = calldata.size + 37
          if not Mask(256, -248, cd[70]) != 1:
              if addr(cd) >> 96 < addr(cd) >> 96 != 1:
          else:
              if addr(cd) >> 96 < addr(cd) >> 96 == 1:
                  if addr(cd) >> 96 != addr(cd) >> 96:
                      if calldata.size - 91 > 0:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                      mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                      stop
              else:
                  if addr(cd) >> 96 != addr(cd) >> 96:
                      if calldata.size - 91 > 0:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call addr(cd) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args Mask(256, -144, cd << 144, 0, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      if call.value > 0 != 1:
                          if not Mask(256, -144, cd[22]):
                              mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                              static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                      gas gas_remaining wei
                                     args this.address
                              mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                              stop
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                               gas gas_remaining wei
                              args (Mask(112, 0, cd >> 144)
                          if not ext_call.success:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                          call block.coinbase with:
                             value Mask(112, 0, cd >> 144 wei
                               gas gas_remaining wei
                          static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                                  gas gas_remaining wei
                                 args this.address
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                      mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                      stop
              if calldata.size - 91 <= 0:
                  call addr(cd) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, Mask(256, -144, cd << 144, this.address, 128, calldata.size - 91, mem[calldata.size + 201 len calldata.size - 91]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if call.value > 0 == 1:
                      call block.coinbase with:
                         value call.value wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'transfer coinbase error:1'
                      mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                      stop
                  if not Mask(256, -144, cd[22]):
                      mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                              gas gas_remaining wei
                             args this.address
                      mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      if mem[calldata.size + 37 len 4], Mask(224, 32, this.address) >> 32 < Mask(112, 0, cd >> 144:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'BAError'
                      stop
                  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 withdrawCount) with:
                       gas gas_remaining wei
                      args (Mask(112, 0, cd >> 144)
                  if not ext_call.success:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0, 'withdrawWeth failed'
                  call block.coinbase with:
                     value Mask(112, 0, cd >> 144 wei
                       gas gas_remaining wei
                  mem[calldata.size + 37] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                  static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
                          gas gas_remaining wei
                         args this.address
                  mem[calldata.size + 37 len return_data.size] = ext_call.return_data[0 len return_data.size]
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)


