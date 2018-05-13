require 'net/smtp'

message = <<MESSAGE_END
From: Private Person <gt4501c@gmail.com>
To: A Test User <bhagvanarch@gmail.com>
Subject: SMTP e-mail test

This is a test e-mail message.
MESSAGE_END

Net::SMTP.start('localhost') do |smtp|
  smtp.send_message message, 'gt4501c@gmail.com', 'bhagvanarch@gmail.com'
end
