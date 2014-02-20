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
        @titre = "Conseil d'Administration"
  end

  def sk
        @titre = "Shorinji Kempo"
  end

  def sk1
      @titre = "Présentation SK" 
  end

  def sk2
        @titre = "Historique"
  end

  def manif
        @titre = "Manifestations"
  end

  def media
        @titre = "Médias"
  end

  def contact
        @titre = "Contact"
