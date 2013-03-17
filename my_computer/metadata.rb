name    "my_computer"
version "0.0.0"

%w{ mac_os_x }.each do |os|
  supports os
end
