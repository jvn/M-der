# encoding: UTF-8
class NewValidator < ActiveModel::Validator

  def validate(tal)
    @fejl = true
    if tal.meetingnr.to_f.to_s.ends_with? ".0"
      @fejl = false
    end
    if @fejl
      tal.errors[:meetingnr] << " af lige møde nummeret skal være et helt tal"
    end
  end

  def validate(text)
    @mistake = true
    if text.beskrivelse.length > 10
      @mistake = false
    end
    if @mistake
      text.errors[:beskrivelse] << "10 tegn mindst"
    end
  end
end


class Agenda < ActiveRecord::Base
  belongs_to :meeting
  validates :punktnavn, :presence => true
  validates :meetingnr, :punktnr, :numericality => {:greater_than_or_equal_to => 0.01}
  validates_with NewValidator
end