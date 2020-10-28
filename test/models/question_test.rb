require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  fixtures :questions
   
  def setup
    @question = Question.new(title:"Testing",description:"hello dont pass the testcase")
  end
  
  test "question should have unique title" do
    @question.title=questions(:two).title
    assert @question.invalid?
    assert_equal ["has already been taken"],@question.errors[:title]
  end

  test "question should not be empty" do
    @question.title=""
    @question.description=""
    assert @question.invalid?
    assert @question.errors[:title].any?
    assert @question.errors[:description].any?
  end

  test "description minimum length" do
  @question.description="hello"
  assert_equal ["is too short (minimum is 20 characters)"],@question.errors[:description]
  end

end
