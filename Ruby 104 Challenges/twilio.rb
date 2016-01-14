#Require the gems
require 'rubygems'
require 'twilio-ruby'

#Connect to the Twilio API using the account SID and auth token on dashboard
account_sid = "ACe4bc7f053d28d3def3018c3b1537621f"
auth_token = "54cfde6ec22293a54848125b12154753"

@client = Twilio::REST::Client.new(account_sid, auth_token)

#Text a message
message = @client.account.messages.create(
	:from => "+13364591103",
	:to => "+97433352232",
	:body => "Does this work now?"
)

puts message.to