describe "dynamic control", :dc do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
  end

  it "quando habilita o campo" do
    res = page.has_field? "movie", disable: true
    puts res

    click_button "habilita"
    # sleep 5
    res = page.has_field? "movie", disable: false
    puts res
  end
end
