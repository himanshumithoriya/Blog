require_relative 'helper_classes'
class LogOut
  def initialize(current_log)
    @current_log = current_log
  end
  def log_out
    @current_log=nil
    puts "Logout Successfully !!!"
    return
  end
end
