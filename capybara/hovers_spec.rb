describe "Mouse Hover", :hovers do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/hovers"
  end

  it "quando passo o mouse sobre o Blade" do
    card = find("img[alt=Blade]") #alt*=Blade (Contém)
    card.hover

    expect(page).to have_content "Nome: Blade"
  end

  it "quando passo o mouse sobre o Pantera Negra" do
    card = find("img[alt='Pantera Negra']") #alt^=Pantera (Começa)
    card.hover

    expect(page).to have_content "Nome: Pantera Negra"
  end

  it "quando passo o mouse sobre o Homem Aranha" do
    card = find("img[alt='Homem Aranha']") #alt$=Aranha (Termina)
    card.hover

    expect(page).to have_content "Nome: Homem Aranha"
  end

  after(:each) do
    sleep 0.5
  end
end
