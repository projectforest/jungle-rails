class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.orderConfirmationEmail.subject
  #
  def orderConfirmationEmail(order)
    @order = order
    @user = @order.user
    @url = "http://0.0.0.0:3000/order/#{order.id}"
    mail(to: @user.email, subject: "Your order has been confirmed (order number: #{order.id})")
    #mail to: "to@example.org"
  end
end
