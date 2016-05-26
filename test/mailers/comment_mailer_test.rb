require 'test_helper'

class CommentMailerTest < ActionMailer::TestCase
  test "new_comment" do
    mail = CommentMailer.new_comment
    assert_equal "New comment", mail.subject
    assert_equal ["david.junior1214@gmail.com"], mail.to
    assert_equal ["david/junior1412@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
