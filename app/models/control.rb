class Control < ActiveRecord::Base
  attr_accessible :title

  def reboot_call(system_name)
    # `reboot`
    Control.first_or_create(:title => "Michelle")
  end

   def chef_call(system_name)
    # `chef-client`
    Control.first_or_create(:title => "Matt")
  end
end
