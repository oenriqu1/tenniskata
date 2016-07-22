class Score
	def initialize ()
		@p1=0
		@p2=0
	end
	
	def display()
		if (@p1==40 and @p2==40)
			newscore="DEUCE"
		elsif ((@p1-@p2).abs >= 20) and (@p1>=40 or @p2>=40)
			newscore="Player WINS"
		else  
			newscore=@p1.to_s+"-"+@p2.to_s
		end
		return newscore
	end

	def addpoints (player, points)
		if points == 15 || points == 10  
			if player=="p1"
				@p1=@p1+points
			else
				@p2=@p2+points
			end
		else
			return "Error: only can add 10 or 15 to score"
		end
		
	end

	def changescoreto(points1, points2)
		@p1=points1
		@p2=points2
	end

end 
