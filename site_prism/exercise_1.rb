# frozen_string_literal: true

# Pre-requisite setup required for each test
require_relative 'setup'
require_relative 'pages/inputs'
Setup.setup

# Create and load the page
page = Inputs.new
page.load

# EXERCISE 1
# Type a number, then by interacting with the page, work out how the number
# changes and replace the number with a new one
#
# HINT
#
# The way to type a "special" key such as up/backspace, is by referring to the symbol reference
# of the key (Name of the key preceded by a colon)

# 1) Find the number box on the page
number_box = page.number_box

# 2) Type in any odd 5 digit number i.e. 12345
number_box.send_keys('12345')

# 3) Using the up arrow, increase the number by 5
5.times { number_box.send_keys(:up) }

# 4) Find out the new number that is in the box
value = number_box['value']

# 5) Delete the number and replace it with a number that is exactly half of that
5.times { number_box.send_keys(:backspace) }
end_result = value.to_i/2
number_box.send_keys(end_result)

# Wait and close
sleep 2
