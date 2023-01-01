#!/bin/Ruby
# frozen_string_literal: true

class Ports
  attr_accessor :final_result

  def port_check_ufw(port_number)
    result = `ufw status numbered | grep -o #{port_number}`
    case result
    when port_number
      @@final_result = 'open'
    else
      @@final_result = 'closed'
    end
  end

end