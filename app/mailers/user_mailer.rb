class UserMailer < ApplicationMailer
  default from: ENV['MAILJET.DEFAULT_FROM']
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #variable a modifier 
    @url  = 'https://chatonshop-dev.herokuapp.com/sign_in' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def order_user_email(user, order)
    @order = order
    @user = user
    @url  = 'https://chatonshop-dev.herokuapp.com/my-account'
    mail(to: @user.email, subject: "Confirmation de votre commande")
  end

  def order_admin_email(user, order)
    @user = user
    @order = order
    mail(to: 'chatonshop7@gmail.com', subject: 'Un utilisateur a acheté un objet')
  end
end
