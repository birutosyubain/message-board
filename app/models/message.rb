class Message < ActiveRecord::Base
    # 名前は必須入力, 20文字以内
    validates :name , length: {  maximum: 20 } , presence: true
    # 内容は必須入力, 2文字以上, 30文字以下
    validates :body, length: { minimum: 2, maximun: 30 }, presence: true
    # 年齢は必須入力, 数字以外入力できない, 0歳以上
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
end
