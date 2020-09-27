class Student < ActiveRecord::Base
  attribute :active, :boolean, default: false

  def activate
    self.active = true
  end

  def deactivate
    self.active = false
  end

  def is_active
    if self.active == false
      "This student is currently inactive."
    else
      "This student is currently active."
    end
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end