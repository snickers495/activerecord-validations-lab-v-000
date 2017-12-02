class MyValidator < ActiveModel::Validator
  def validate(record)
    clickbait = [/Won't Believe/i, /Secret/i, /Top [0-9]*/i, /Guess/i]
     if clickbait.none? { |word| word.match(record.title) }
       record.errors[:title] << 'Title needs to be clickbaity'
     end
  end
end
