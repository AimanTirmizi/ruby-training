# frozen_string_literal: true

# This class has some methods that return some symbols
# It ALSO needs to have some methods that can then generate other methods
#
# Do NOT AMEND the predefined methods. They are designed to be obtrusive!
#
class RuntimeMethodGenerator
  def predefined
    :predefined
  end

  def return_funky
    :funky
  end

  define_method :add_a_method do
    def funky_method
      return_funky
    end
  end

  define_method :add_custom_method do |methods|

  end

end
