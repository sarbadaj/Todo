require 'test_helper'

class TaskInfoMailerTest < ActionMailer::TestCase
  test "task_info" do
    mail = TaskInfoMailer.task_info
    assert_equal "Task info", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
