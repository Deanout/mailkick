require "test_helper"

class NewsletterMailerTest < ActionMailer::TestCase
  test "email_blast" do
    mail = NewsletterMailer.email_blast
    assert_equal "Email blast", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
