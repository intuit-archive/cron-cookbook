action :create do
  name = new_resource.name

  raise ArgumentError.new 'name must be specified' if name.nil? || name.empty?

  execute "add #{name} to /etc/cron.allow" do
    command "echo #{name} >> /etc/cron.allow"
    not_if do
      IO.read('/etc/cron.allow').include? "\n#{name}\n"
    end
  end

  new_resource.updated_by_last_action(true)

end
