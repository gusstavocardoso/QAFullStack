
describe "Meu primeiro teste" do
  it "visitar a página" do
    visit "https://training-wheels-protocol.herokuapp.com"
    #puts page.title
    expect(page.title).to eql "Traning Wheels Protocol"
  end
end
