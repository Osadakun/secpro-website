class Batch::ClearCounter
	def self.clear_counter
		@cnt = Count.find(1)
    @cnt.counter = 0
    @cnt.save
	end
end