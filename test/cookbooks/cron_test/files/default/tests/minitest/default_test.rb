describe "cron_test" do
  
  it "creates the cron.allow file and adds to it" do
    assert IO.read('/etc/cron.allow').include? "testuser"
  end

end
