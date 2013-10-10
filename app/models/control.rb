class Control < ActiveRecord::Base
  

  def reboot_call(system_name)
    # `reboot`
    puts "reboot"
  end

   def chef_call(system_name)
    # `chef-client`
    puts "chef-client"
  end
end
