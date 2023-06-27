module MyEnumerable
  def all?
    # <!--HER I CALL CLASS METHOD AND SEND A BLOCK-->
    every { |e| return false unless yield e }
    true
  end

  def any?
    # <!--HER I CALL CLASS METHOD AND SEND A BLOCK-->
    every { |e| return true if yield e }
    false
  end

  def filter
    result = []
    # <!--HER I CALL CLASS METHOD AND SEND A BLOCK-->
    every { |e| result << e if yield e }
    result
  end
end

# WHEN WE INCLUDE MMODULE IN CLASS THEN CLASS HAS ACCESS TO MODULE METHODS
# BUT MODULE DONT HAVE ACCESS TO CLASS METHODS
# In Ruby, if you want to call a class method from a module,
# you need to pass a block to the class method and execute
# the block within the method.
