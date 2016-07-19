describe "test cases for tennis score" do
    before :each do
    	$scorenow=Score.new()
    end
    it "displays initial score to be 0-0" do
        expect($scorenow.display).to eq("0-0")
    end

    it "Adds points to player 1 when 0-0" do
    	$scorenow.addpoints("p1", 15)
    	expect($scorenow.display).to eq("15-0")
    end

    it "Adds points to player 2 when 0-0" do
    	$scorenow.addpoints("p2", 15)
    	expect($scorenow.display).to eq("0-15")
    end

    it "Changes the score to 30-30" do
    	$scorenow.changescoreto(30, 30)
    	expect($scorenow.display).to eq("30-30")
    end

    it "changes to deuce when score is 40-30 and player 2 scores" do
    	$scorenow.changescoreto(40, 30)
    	$scorenow.addpoints("p2",10)
    	expect($scorenow.display).to eq("DEUCE")
    end
	
	it "changes to match when score is 40-30 and player 1 scores" do
    	$scorenow.changescoreto(40, 30)
    	$scorenow.addpoints("p1",10)
    	expect($scorenow.display).to eq("Player WINS")
    end

end
