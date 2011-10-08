# encoding: UTF-8
class MyValidator2 < ActiveModel::Validator
    def validate(tal)
      @fejl = true

      if tal.navn.to_f == 0.0
        @fejl = false
      end

      if @fejl
        tal.errors[:navn] << 'Navn skal bestå af bogstaver'
      end
    end
end


class Meeting < ActiveRecord::Base
  has_many :agendas, :dependent => :destroy
  validates_with MyValidator2
  validates :kl, :numericality => true
  validates :nr, :numericality => {:greater_than_or_equal_to => 1}
  validates :dato, :sted, :navn, :presence => true

end
