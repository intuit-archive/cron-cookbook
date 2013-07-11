action :create do
  name = new_resource.name

  file "/etc/cron.allow" do
    owner "root"
    group "root"
    mode "0644"
    action :create_if_missing
  end

  execute "add #{name} to /etc/cron.allow" do
    command "echo #{name} >> /etc/cron.allow"
    not_if do
      IO.read('/etc/cron.allow').include? "\n#{name}\n"
    end
  end

  new_resource.updated_by_last_action(true)

end
