#!/usr/bin/env ruby

require 'erb'

black       = '212121'
red         = 'c30771'
green       = '10A778'
yellow      = 'A89C14'
blue        = '008EC4'
magenta     = '523C79'
cyan        = '20A5BA'
grey        = 'd9d9d9'
dkgrey      = '424242'
br_red      = 'fb007a'
br_green    = '5FD7AF'
br_yellow   = 'F3E430'
br_blue     = '20BBFC'
br_magenta  = '6855DE'
br_cyan     = '4FB8CC'
white       = 'f1f1f1'

sel         = 'B6D6FD'
cursor      = br_blue
bold        = br_red

def red(hex)
  hex[0..1].to_i(16) / 255.0
end
def green(hex)
  hex[2..3].to_i(16) / 255.0
end
def blue(hex)
  hex[4..5].to_i(16) / 255.0
end

template = ERB.new(File.read('src/pencil.template'))

bg = white
fg = dkgrey
File.open("pencil-light.itermcolors", 'w') do |f|
  f << template.result
end

bg = black
fg = white
File.open("pencil-dark.itermcolors", 'w') do |f|
  f << template.result
end

