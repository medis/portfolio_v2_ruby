class HomepageController < ApplicationController
  invisible_captcha only: [:create]
  def index
    portfolios = PortfolioWithCache.build

    skills = SkillsWithCache.build

    render 'homepage/index', :locals => {:portfolios => portfolios, :skills => skills}
  end

  def create
    contact = Contact.new(contact_params)
    ContactMailer.contact_mail(contact).deliver_now
    flash[:success] = "Message successfully sent."
    redirect_to('/', notice: '')
  end

  private

  def contact_params
    params.require(:person).permit(:name, :email, :message)
  end
end
