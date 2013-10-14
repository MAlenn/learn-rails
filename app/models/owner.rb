class Owner
  def name
    name = 'Foobar Kadigan'
  end
  def birthdate
    birthdate = Date.new(1990, 9, 22)
  end
  def countdown
    today = Date.today
    birthday = Date.new(today.year, self.birthdate.month, self.birthdate.day)
    if (birthday - today) < 0
      countdown = (birthday + 1.year - today).to_i
    else
      countdown = (birthday - today).to_i
    end
  end
end