#!/usr/bin/env ruby
require './new_contact'
require './search_contact'
require './update_contact'
require './delete_contact'

    GRN = "\e[32m"
    BLU = "\e[34m"
    YLW = "\e[33m"
    RED = "\e[31m"
    RST = "\e[0m"
    CYN = "\e[36m"

def main
    puts "\n#{BLU}SELECT OPTION:\n#{RST} #{GRN}[1]Search Contact\n [2]New Contact\n [3]Delete Contact\n [4]Update Contact\n#{RST}"
    slct = gets.chomp.to_i

    case slct
    when 1
        srch_cntct()


    when 2
        new_cntct()

    when 3
        del_cntct()

    when 4
        updt_cntct()

    else
        puts "\n#{RED}Error: Invalid Input!#{RST}"
        
    end

end

main
