require 'minitest/autorun'

describe "cron::test" do
  
  it "creates the cron.allow file and adds to it" do
    assert File.exists?('/etc/cron.allow')
    assert IO.read('/etc/cron.allow').include? "testuser"
  end

end
