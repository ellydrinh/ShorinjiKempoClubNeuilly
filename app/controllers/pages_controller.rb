#encoding: utf-8

class PagesController < ApplicationController
  def home
    @titre = "Accueil"
  end

  def asso
    @message =""
        @titre = "Association"
  end

  def asso1
    @message =""
        @titre = "Présentation Association"
  end

  def asso2
    @message =""
        @titre = "Activités"
  end

  def sk
    @message =""
        @titre = "Shorinji Kempo"
  end

  def sk1
    @message =""
        @titre = "Historique"
  end

  def sk2
    @message =""
        @titre = "Caractéristiques"
  end

  def sk3
    @message =""
        @titre = "Techniques"
  end

  def media
    @message =""
        @titre = "Médias"
  end

  def contact
    @message =""
        @titre = "Contact"
  end

  def articles
    @message =""
        @titre = "Articles"
  end

  def sk4
    @message =""
        @titre = "Philosophie"
  end
end