#!/usr/bin/env ruby

def updt_cntct()

    grn = "\e[32m"
    blu = "\e[34m"
    ylw = "\e[33m"
    red = "\e[31m"
    rst = "\e[0m"
    cyn = "\e[36m"

    puts "\n#{cyn}UPDATE CONTACT#{rst}"
    puts "#{cyn}_________________#{rst}"

    puts "\n#{blu}Enter Old Account Name:#{rst}"
    name = gets.chomp
    puts "\n#{blu}Enter New Name:#{rst}"
    new_name = gets.chomp
    puts "\n#{blu}Enter New Number(Press Enter To Ignore):#{rst}"
    new_num = gets.chomp

    File.open("contact.txt", "r+") do |file|
        content = File.read(file)
        content.gsub!("#{name}", "#new_name}")
        if !new_num.empty?
            content.gsub!("/^#{name} : \d+$/", "#{name} : #{new_num}")
       end
       file.seek(0)
       file.write(content)
       file.truncate(file.pos)
       puts "#{ylw}Contact Successfully Updated!#{rst}"
       
    end
end

