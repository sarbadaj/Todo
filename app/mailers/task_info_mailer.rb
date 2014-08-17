class TaskInfoMailer < ActionMailer::Base
  default from: "sarbadaj33@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.task_info_mailer.task_info.subject
  #
  def task_info(task)
    @task = task
    mail :to => task.member, :subject => "Task Information"
  end

end
