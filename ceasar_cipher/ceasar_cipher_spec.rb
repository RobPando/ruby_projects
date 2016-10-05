require 'ceasar_cipher'

describe "ceasar_cipher function" do
	it "equals 'q'" do
		expect(ceasar_cipher("l",5)).to eql("q")
	end
	it "equals 'wtg'" do
		expect(ceasar_cipher('rob',5)).to eql("wtg")
	end
end