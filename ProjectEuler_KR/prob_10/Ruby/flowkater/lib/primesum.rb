class Primesum
	def is_prime?(n)
		return false if n == 1
		(2..Math.sqrt(n)).each{|x| return false if n % x == 0}
		true
	end

	# def lessthan_sum(n)
	# 	(1..n).select { |x| x % 2 != 0 && is_prime?(x) }.inject(:+) + 2
	# end

	# def eratos_sum(n)
		# arr = Array.new((n+1)/2, true)
		# 3.step(Math.sqrt(n).floor, 2) do |i|
			# next unless arr[i/2]
			# (i * 3 / 2)
		# end


		# hash = Hash.new
		# (3..n).each {|x| hash[x] = true if x % 2 != 0}
		# (3..n).each do |x|
		# 	if hash[x]
		# 		(3..n).each do |i|
		# 			if x * i <= n
		# 				hash.delete_if{|k,v| k == x * i}
		# 			else
		# 				break
		# 			end
		# 		end
		# 	end
		# end
		# hash.keys.inject(:+) + 2
		# hash.select{|k,v| }
		# arr.select{|x| a == true}.inject(:+) + 2

		# arr = []
		# (3..n).each{|x| arr[x] = x if x % 2 != 0}
		# arr.each do |x|
		# 	arr.each do |i|
		# 		arr[i] = nil if x * i <= n
		# 	end
		# 	arr.compact!
		# end
		# arr
	# end

	def sum_of_isprime(n)
		(2..n).select {|x| is_prime?(x)}.inject(:+)
	end

	def sum_of_erathos(n)
		primes = [2]
		sieve = Array.new((n+1)/2, true)
		3.step( Math.sqrt(n).floor, 2){|i| if sieve[i/2] then (i * 3/2).step(n/2,i) {|j| sieve[j]=false} else next end}
		1.upto((n+1)/2){|i| if sieve[i] then primes << 2 * i + 1 else next end}
		primes.inject(:+)
	end

	def primes(n)
		sieve = Array.new(n, true) 
		sieve[0] = false; sieve[1] = false 
		(2..Math.sqrt(n).floor).each do |x|	# √n까지만 구하면 배수는 모두 제거된다.
			(2..n).each{|i| if x * i <= n then sieve[x*i] = false else break end} if sieve[x] 
		end

		primes = []
		(2..n).each{|i| primes << i if sieve[i]} 
		primes.inject(:+)
	end

	def sum_of_prime(n)
		sieve = Array.new( ( n + 1 ) / 2, true)

		3.step(Math.sqrt(n).floor, 2) do |i|

			next unless sieve[ i / 2 ]

			( i * 3 / 2 ).step( n / 2, i){ |j| sieve[j] = false}

		end

		primes = [2]

		1.upto((n+1)/2) do |i|

			next unless sieve[i]

			primes << 2 * i + 1

		end

	end
end