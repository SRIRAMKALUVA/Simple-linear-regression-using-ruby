class Reg
	attr_accessor :x,:y,:a
	def initialize(x,y,a)
		@x=x
		@y=y
		@a=a
		@Y=0
	end

	def calculate
		xsum=0
		@x.each {|x| xsum+=x}
		mx=xsum/5
		ysum=0
		@y.each {|y| ysum+=y}
		my=ysum/5
		@x=@x.map{|x| x-mx}
		@y=@y.map{|y| y-my}
		nu=0
		@x.zip(@y).map{|x, y| nu+=(x * y)}
		de=0
		@x.each {|x| de+=(x*x)}
		m=(nu.to_f)/de
		c=my-(m*mx)
		puts "m= #{m},c=#{c}" 
		@Y=(m*@a)+c
		puts "answer is #{@Y}"
	end
end

x=[1,2,3,4,5]
y=[3,4,2,4,5]
puts "Enter a value"
a=gets.chomp.to_i
r=Reg.new(x,y,a)
r.calculate











