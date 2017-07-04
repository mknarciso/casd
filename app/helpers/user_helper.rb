module UserHelper
    def user_status(user)
        if user.admin? || user.invitation_accepted?
            content_tag(:span, '', class: 'glyphicon glyphicon-ok color-sucess')
        else 
           'Convite Pendente'
        end
    end
end