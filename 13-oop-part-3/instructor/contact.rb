class Contact

  def initialize(first_name, last_name, email, notes)
    @first_name = first_name
    @last_name  = last_name
    @email      = email
    @notes      = notes
  end

  # READERS
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def notes
    @notes
  end

  # WRITERS
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def notes=(notes)
    @notes = notes
  end

  # NORMAL INSTANCE METHOD
  def full_name
    "#{ first_name } #{ @last_name }"
  end

end
