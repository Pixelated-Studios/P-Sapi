#!/bin/Ruby
# frozen_string_literal: true

class Directories

  def initialize
    @@exists = nil
    @@error = nil
    @@created = nil
    @@path = nil
  end

  def check(path)
    @@path = path
    @@exists = Dir.exist?(@@path)
    case @@exists
    when 0
      @@exists = true
    when 1
      @@exists = false
    else
      @@error = "Ran into issue checking if #{@@path} exists!"
      puts @@error
    end
  end

  def makedir(path)
    @@path = path
    Dir.mkdir("#{@@path}")
  end
end