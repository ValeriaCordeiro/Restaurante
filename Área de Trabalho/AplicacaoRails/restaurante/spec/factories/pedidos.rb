# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pedido do
    data "MyString"
    hora "MyString"
    valor 1.5
    cliente nil
    motoboy nil
  end
end
