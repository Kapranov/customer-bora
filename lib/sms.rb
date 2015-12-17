require 'AfricasTalkingGateway'
class SMS
	def initialize
		@gateway = AfricasTalkingGateway.new(ENV['AFRICAS_TALKING_USERNAME'], ENV['AFRICAS_TALKING_KEY'])
	end

	def send_message phone_number, message
		@gateway.sendMessage(phone_number, message)
	end
end
