class UserMailer < ApplicationMailer
  default from: ENV['MAILJET.DEFAULT_FROM']
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #variable a modifier 
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def order_user_email(user, order)
    @order = order
    @user = user
    @url  = 'http://monsite.fr/login'
    mail(to: @user.email, subject: "Confirmation de votre commande")
  end
end
