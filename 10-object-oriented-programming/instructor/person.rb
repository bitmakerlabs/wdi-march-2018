class Person

  # Special instance method
  # Hooks into Person.new
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake = true
    @tail = false
  end

  # ATTRIBUTE READER
  def first_name
    @first_name
  end

  # ATTRIBUTE READER
  def last_name
    @last_name
  end

  # ATTRIBUTE WRITER
  def first_name=(first_name)
    @first_name = first_name
  end

  # ATTRIBUTE WRITER
  def last_name=(last_name)
    @last_name = last_name
  end

  # Note that @first_name is accessing the instance variable,
  # but last_name is accessing the instance method!
  def full_name
    "#{ @first_name } #{ last_name }"
  end

  def greetings
    if @awake
      if @tail
        '(Bounces Away)'
      else
        "Hi, my name is #{ full_name }"
      end
    else
      'ZZZzzzz'
    end
  end

  def slumber
    @awake = false
  end

  def wake
    @awake = true
  end

  def mutate
    @tail = true
  end

end
