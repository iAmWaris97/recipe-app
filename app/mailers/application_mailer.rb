class ApplicationMailer < ActionMailer::Base.delivery_method = :test
  default from: 'from@example.com'
  layout 'mailer'
end
