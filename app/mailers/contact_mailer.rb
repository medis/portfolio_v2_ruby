class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail(subject: "NEW email from audrius.io")
  end
end
