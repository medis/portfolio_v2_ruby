class ContactMailer < ApplicationMailer
  layout 'mailer'

  def contact_mail(contact)
    @contact = contact
    mail(to: ENV['CONTACT_INBOX'], subject: "NEW email from audrius.io")
  end
end
