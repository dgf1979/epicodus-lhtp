class Lesson < ActiveRecord::Base
  default_scope { order('number ASC') }
  belongs_to :section
  validates :name, :presence => true
  validates :text, :presence => true
  validates :number, :presence => true

  def next
    findThis = self.number + 1
    result = Lesson.where(number: findThis).first
    if !result
      return self
    else
      return result
    end
  end

  def prev
  findThis = self.number - 1
  result = Lesson.where(number: findThis).first
  if !result
    return self
  else
    return result
  end
  end
end
