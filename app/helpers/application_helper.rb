module ApplicationHelper

    def alerts
        alert = (flash[:alert] || flash[:error] || flash[:notice])
        
        if alert
          alert_generator alert
        end
      end
    
      def alert_generator msg
        js add_gritter(msg, title: "AESC...", sticky: false, time: 8000)
      end
end
