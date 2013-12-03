

THIS_IS_A_CONSTANT = 100
THIS_IS_A_CONSTANT = 999  ## warning: already initialized constant THIS_IS_A_CONSTANT
p THIS_IS_A_CONSTANT

$global_var = 'foo'

# #Local variables and methods:
# local_var = 'foo'

# def get_local_var
#   local_var           #undefined local variable or method `local_var' for main:Object (NameError) from scope.rb:16:in `<main>'
# end

# p get_local_var


#Classes and instance variables:
class BasicClass
  @instance_var = 'Bar'
  @@class_var = "1"

  def get_local_var
    local_var      #undefined local variable or method `local_var' for #<BasicClass:0x007f894410ddb0> (NameError) from scope.rb:30:in `<main>'
  end

  def get_instance_var
    @instance_var     #nil
  end

  def set_instance_var=(n)
    @instance_var = n
  end

  def get_class_var
    @@class_var
  end

  def set_class_var=(n)
    @@class_var = n
  end

  def get_global
    THIS_IS_A_CONSTANT
    $global_var
  end

  def set_global=(n)
    $global_var = n
  end

  def get_constant
    THIS_IS_A_CONSTANT
  end

  # def set_constant=(n)
  #   THIS_IS_A_CONSTANT = n  #dynamic constant assignment error
  # end

end


# def get_global
#   THIS_IS_A_CONSTANT
#   $global_var
# end

# def set_global=(n)
#   THIS_IS_A_CONSTANT = n  #dynamic constant assignment error
#   $global_var = n          #dynamic constant assignment error
# end



# object = BasicClass.new
# object2 = BasicClass.new

# p object.get_global
# p object.set_global = "xxx"

# p object.get_constant
# p object.set_constant = "DOESNT CHANGE"

# p object.get_local_var #==> undefined local variable
# p object.get_instance_var #==> nil
# p object.set_instance_var = 9  #==> 9
# p object.get_instance_var  #==> 9

# #Class Methods
# p object.get_class_var
# p object2.get_class_var
# p object.set_class_var = "2"
# p object.get_class_var
# p object2.get_class_var
# p object2.set_class_var = "3"
# p object2.get_class_var
# p object.get_class_var








#Teacher Example:

# require 'pry'


# class Foo

#   def self.get_local_var
#     puts "hi"
#   end

#   def get_local_var
#     puts "ho"
#   end
# end

# Foo.get_local_var
# Foo.new.get_local_var

# local_var = "ha"

# def get_local_var
#   binding.pry
#   puts local_var
# end

# get_local_var
