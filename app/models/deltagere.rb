# encoding: UTF-8

class AwesomeValidator < ActiveModel::Validator
  def validate(numbers)

    @wrong = true
    if numbers.meetingnr.to_f.to_s.ends_with? ".0"
      @wrong = false
    end
    if @wrong
      numbers.errors[:meetingnr] << "møde nummeret skal være et helt tal)"
    end
  end
 end

class Deltagere < ActiveRecord::Base
  validates_with AwesomeValidator
end
