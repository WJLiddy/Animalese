require 'pathname'
require 'gosu'

sound_map = {}
Dir["sounds/*.ogg"].each do |sound|
  letter =  Pathname.new(sound).basename.to_s.split(".")[0]
  sound_map[letter] = Gosu::Sample.new(sound)
end
 
ind = " What the fuck did you just fucking say about me, you little bitch? I’ll have you know I graduated top of my class in the Navy Seals, and I’ve been involved in numerous secret raids on Al-Quaeda, and I have over 300 confirmed kills. I am trained in gorilla warfare and I’m the top sniper in the entire US armed forces. You are nothing to me but just another target. I will wipe you the fuck out with precision the likes of which has never been seen before on this Earth, mark my fucking words. You think you can get away with saying that shit to me over the Internet? Think again, fucker. As we speak I am contacting my secret network of spies across the USA and your IP is being traced right now so you better prepare for the storm, maggot. The storm that wipes out the pathetic little thing you call your life. You’re fucking dead, kid. I can be anywhere, anytime, and I can kill you in over seven hundred ways, and that’s just with my bare hands. Not only am I extensively trained in unarmed combat, but I have access to the entire arsenal of the United States Marine Corps and I will use it to its full extent to wipe your miserable ass off the face of the continent, you little shit. If only you could have known what unholy retribution your little “clever” comment was about to bring down upon you, maybe you would have held your fucking tongue. But you couldn’t, you didn’t, and now you’re paying the price, you goddamn idiot. I will shit fury all over you and you will drown in it. You’re fucking dead, kiddo."
# get input
string =  ind
string.each_char do |c|
  print c
  c = c.downcase

  if c == ' ' 
    sleep(0.05)
  elsif c == ',' 
    sleep(0.1)
  elsif c == '.' || c == '?' || c == '!'
    sleep(0.3) 
    puts "\n"
  elsif sound_map[c]
    inst = sound_map[c].play
    inst.speed = 2 + rand*0.5
    while inst.playing?
    end
  end
end
