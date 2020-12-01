describe "Botões de radio", :radio do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/radios"
  end

  it "seleção por ID" do
    choose("cap")
  end

  it "seleção por find e css selector" do
    find("input[value=guardians]").click #evento
  end

  after(:each) do
    sleep 3
  end
end
