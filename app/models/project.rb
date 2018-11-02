class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  after_create :add_slug

  def to_param
    slug
  end

  def add_slug
    update(slug: to_slug(self.name + "-" + Time.now.to_i.to_s))
  end

  def actual_status
    now_time = Time.now
    total_time = self.end_date.to_time - self.start_date.to_time
    current_time = now_time - self.start_date.to_time
    progress = current_time * 100 / total_time
    puts progress
    case progress
    when 0..10
      "beginning"
    when 10..40
      "advanced"
    when 40..70
      "midway"
    when 70..100
      "ending"
    else
      "late"
    end
  end

  def percentage
    now_time = Time.now
    total_time = self.end_date.to_time - self.start_date.to_time
    current_time = now_time - self.start_date.to_time
    progress = current_time * 100 / total_time
    progress.to_i
  end
end
