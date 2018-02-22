class ApplicationMailer < ActionMailer::Base

  @app_setting = AppSetting.find(1)
  default from: "#{@app_setting.app_email_title_1} #{@app_setting.app_email_1}"
  layout 'mailer'

  # default from: '"Udemy Rails App" <udemyapprails@gmail.com>'
  # layout 'mailer'
end
