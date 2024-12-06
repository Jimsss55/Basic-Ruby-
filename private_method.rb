class SmartPhone
  attr_reader :username, :production_number, :password

  def initialize (username,password)
    @username=username
    @password=password
    @production_number = generate_production_number
  end

  def password=(password)
    @password=password if valid_password?(password)
  end

  private 
  def generate_production_number
    random_number= rand(1000...9999)
    another_rand = rand(1000...9999)
    "2024-#{random_number}-#{another_rand}"
  end

  def valid_password?(password)
    password.length>=7
  end
end

phone = SmartPhone.new("Jimpa", "Hello")
p phone.production_number

phone.password = "Nol"
p phone.password
