class Windows
  

  def reboot_call(system_name)
    # `reboot`
    puts "reboot"
    return true
  end

   def chef_call(system_name)
    # `chef-client`
    puts "chef-client"
    return true
  end

  def service_call(system_name,service,command)
  	puts "service call"
  	return true
  end

end