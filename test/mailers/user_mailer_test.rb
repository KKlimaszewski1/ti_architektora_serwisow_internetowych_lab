require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "account_activation" do
    mail = UserMailer.account_activation
    assert_equal "Aktywacja konta na Książka Kucharska", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
