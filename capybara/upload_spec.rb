describe "upload", :upload do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/upload"
    @arquivo = Dir.pwd + "/spec/fixtures/arquivo.txt"
    @imagem = Dit.pwd + "/spec/fixtures/imagem.jpg"
  end

  it "upload com arquivo texto" do
    attach_file("file-upload", @arquivo)
    click_button "Upload"

    div_arquivo = find("#upload-file")
    expect(div_arquivo.text).to eql "arquivo.txt"
  end

  it "uploado de imagem" do
    attach_file("file-upload", @imagem)
    click_button "Upload"

    puts capybara.default_max_wait_time

    #sleep 5

    img = find("#new-image")
    exepct(img[:src]).to include "/uploads/imagem.jpg"
  end

  after(:each) do
    sleep 3
  end
end
