require_relative "rotas/signup"


describe "POST /signup" do

    examples = YAML.load(File.read(Dir.pwd + "/spec/fixtures/signup.yml"), symbolize_names: true)

    examples.each do |abobrinha|

        context "#{abobrinha[:title]}" do
            before(:all) do
            @resultado = Singup.new.createuser(abobrinha[:payload])
            puts abobrinha[:payload]
            end

                it "valida status code" do
                    expect(@resultado.code).to eql abobrinha[:code]
                end

                it "valida a mensagem de resposta" do
                    expect(@resultado.parsed_response["error"]).to eql abobrinha[:error]
                end

            end  
        end
end