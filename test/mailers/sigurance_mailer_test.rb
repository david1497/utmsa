require 'test_helper'

class SiguranceMailerTest < ActionMailer::TestCase
  test "new_sigurance" do
    mail = SiguranceMailer.new_sigurance
    assert_equal "New sigurance", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
