module ApplicationHelper
#*******************************************************************#
#********************** STARTING BUREAU'S LOGIN ************************#
#*******************************************************************#

#def login_helper style=''
#  if current_user.is_a?(GuestUser) 
#    link_to "", "#"
#    (link_to "Se Connecter", new_user_session_path, class: style) +
#    " ".html_safe +
#    (link_to "S'inscrire", new_user_registration_path, class: style)
#    
#  elsif current_user.is_a?(:user)
#    (link_to "Déconnexion", destroy_user_session_path,method: :delete, class: style, style:"margin-left:10%;") +
#    " ".html_safe +
#    (link_to "M'enregistrer", new_etudiant_path, class: style)
#  elsif current_user.is?(:site_admin, :president, :responsable_zone) 
#    (link_to "Déconnexion", destroy_user_session_path,method: :delete, class: style, style:"margin-left:10%;") +
#    " ".html_safe +
#    (link_to "M'enregistrer", new_etudiant_path, class: style) +
#    " ".html_safe +
#    (link_to "Ma Zone", root_path() + "etudiants/mazone", class: style)
#    end 
#end
#    
    

def bureau_nav_item
  [
    {
      url: root_path,
      title: "Home"
    },
    {
      url: students_path,
      title: "Dashboard"
    },
    {
      url: new_student_path,
      title: "Registration"
    },
    {
      url: newinformations_path,
      title: "News"
    },
    {
      url: docs_path,
      title: "Documents"
    },
    {
      url: bureausmembers_path,
      title: "Roles"
    },
  ]
end
    
def bureau_nav_helper style, tag_type
  nav_links = ''

  bureau_nav_item.each do |item|
    nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
  end
  nav_links.html_safe
end
#*******************************************************************#
#************************ END BUREAU'S LOGIN ***************************#
#*******************************************************************#

#*******************************************************************#
#********************** STARTING USER LOGIN ************************#
#*******************************************************************#

  #def login_helper style=''
  #  if current_user.is_a?(GuestUser) 
  #    link_to "", "#"
  #    (link_to "Se Connecter", new_user_session_path, class: style) +
  #    " ".html_safe +
  #    (link_to "S'inscrire", new_user_registration_path, class: style)
  #  else
  #    (link_to "Déconnexion", destroy_user_session_path,method: :delete, class: style, style:"margin-left:10%;") +
  #    " ".html_safe +
  #    (link_to "M'enregistrer", new_etudiant_path, class: style) +
  #    " ".html_safe +
  #    (link_to "Ma Zone", root_path() + "etudiants/mazone", class: style)
  #    end 
  #end
      
      

  def user_nav_item
    [
      {
        url: root_path,
        title: "Home"
      },
      {
        url: students_path,
        title: "Dashboard"
      },
      {
        url: new_student_path,
        title: "Registration"
      },
      {
        url: newinformations_path,
        title: "News"
      },
      {
        url: docs_path,
        title: "Documents"
      },
      
    ]
  end
      
  def user_nav_helper style, tag_type
    nav_links = ''

    user_nav_item.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe
  end
#*******************************************************************#
#************************ END USER LOGIN ***************************#
#*******************************************************************#

#*******************************************************************#
#************************ GENERAL METHOD ***************************#
#*******************************************************************#
      
  def copyright_generator
    @copyright = ZicrouViewTool::Renderer.copyright 'SK8Z-¯-CLBK', 'All rights reserved'
    #DevcampViewTool::Renderer.copyright 'Zicrou SECK', 'All rights reserved'
  end
  def active? path
    "active" if current_page? path
  end
  
  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])
    
    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "GSIC:", sticky: false, time: 5000)
  end
end
#*******************************************************************#
#************************ END GENERAL METHOD ***********************#
#*******************************************************************#