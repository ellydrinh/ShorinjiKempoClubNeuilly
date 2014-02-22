#encoding: utf-8

class PagesController < ApplicationController
  def home
    @titre = "Accueil"
  end

  def asso
        @titre = "Association"
  end

  def asso1
        @titre = "Présentation Association"
  end

  def asso2
        @titre = "Activités"
  end

  def sk
        @titre = "Shorinji Kempo"
  end

  def sk1
        @titre = "Historique"
  end

  def sk2
        @titre = "Caractéristiques"
  end

  def sk3
        @titre = "Techniques"
  end

  def media
        @titre = "Médias"
  end

  def contact
        @titre = "Contact"
  end

  def articles
        @titre = "Articles"
  end

  def sk4
        @titre = "Philosophie"
  end
end