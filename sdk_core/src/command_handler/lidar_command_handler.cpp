//
// The MIT License (MIT)
//
// Copyright (c) 2019 Livox. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

#include "lidar_command_handler.h"

using std::list;

namespace livox {

void LidarCommandHandlerImpl::Uninit() {
  devices_.clear();
}

bool LidarCommandHandlerImpl::AddDevice(const LivoxDeviceInfo &info) {
  std::shared_ptr<CommandChannel> channel =
      std::make_shared<CommandChannel>(info.cmd_port, info.handle, info.ip, this);
  channel->Bind(loop_);

  DeviceItem item = {channel, info};
  devices_.push_back(item);
  return true;
}

livox_status LidarCommandHandlerImpl::SendCommand(uint8_t handle, const Command &command) {
  CommandChannel *channel = NULL;
  bool found = false;
  for (list<DeviceItem>::iterator ite = devices_.begin(); ite != devices_.end(); ++ite) {
    if (ite->info.handle == handle) {
      found = true;
      channel = ite->channel.get();
      break;
    }
  }
  if (!found) {
    return kStatusInvalidHandle;
  }
  if (!channel) {
    return kStatusChannelNotExist;
  }
  channel->SendAsync(command);

  return kStatusSuccess;
}

bool LidarCommandHandlerImpl::RemoveDevice(uint8_t handle) {
  bool found = false;
  for (list<DeviceItem>::iterator ite = devices_.begin(); ite != devices_.end(); ++ite) {
    if (ite->info.handle == handle) {
      found = true;
      devices_.erase(ite);
      break;
    }
  }

  return found;
}

}  // namespace livox
