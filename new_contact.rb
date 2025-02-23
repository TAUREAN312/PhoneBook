#!/usr/bin/env ruby
require 'base64'


def new_cntct()

grn = "\e[32m"
blu = "\e[34m"
ylw = "\e[33m"
red = "\e[31m"
rst = "\e[0m" 
cyn = "\e[36m"

    puts "\n#{cyn}NEW CONTACT#{rst}"
    puts "#{cyn}__________________#{rst}"

    puts "\n#{grn}Enter Name:#{rst}"
    name = gets.chomp
    puts "\n#{grn}Enter Contact:#{rst}"
    num = gets.chomp

    user = Base64.strict_encode64(name)
    dig = Base64.strict_encode64(num)
    begin
        File.open("contact.txt", "a") do |file|
            file.puts "#{user} : #{dig}"
            puts "\n#{ylw}Contact Saved Successfully!#{rst}"
    end
    rescue StandardError
        puts "\r#{red}Error: Contact Failed To Save!#{rst}"
end
end

