# Preview all emails at http://localhost:3000/rails/mailers/task_info_mailer
class TaskInfoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/task_info_mailer/task_info
  def task_info
    TaskInfoMailer.task_info
  end

end
