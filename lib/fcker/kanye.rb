require 'open-uri'

module Fcker

  class Base

    def hi
      puts 'Hello World!'
    end

    def lorem
      uri = URI.parse("http://loripsum.net/api/1/verylong/plaintext")
      uri.open {|f| p f.first.chomp }
    end
  end

  class Kanye < Base
    class << self

      def lorem
        uri = URI.parse("http://loripsum.net/api/1/verylong/plaintext")
        uri.open {|f| p f.first.chomp }
      end

      def paragraph
        para = Array.new(lorem.split(". "))
        if para.length > 3
          rand(0..3).times do
            para.insert(rand(1..para.length), kanye_quote)
            puts "#{para.join(". ")}."
          end
        end
      end

      def kanye_quote
        kanye.sample
      end

      def kanye
      # Kanye
        ["If you ain't no punk, holla we want prenup. It’s something that you need to have 'cause when she leave yo ass, she gonna leave with half. — Kanye West, 'Gold Digger'",
        "I am the number one human being in music. That means any person that's living or breathing is number two. - Kanye West",
        "I'm doing pretty good as far as geniuses go ... I'm like a machine. I'm a robot. You cannot offend a robot. - Kanye West",
        "I'm going down as a legend, whether or not you like me or not. I am the new Jim Morrison. I am the new Kurt Cobain. - Kanye West",
        "The Bible had 20, 30, 40, 50 characters in it. You don't think that I would be one of the characters of today's modern Bible? - Kanye West",
        "I walk through the hotel and I walk down the street and people look at me like I\'m fucking insane, like I\'m Hitler. One day the light will shine through, and one day people will understand everything I ever did. - Kanye West",
        "I am God's vessel. But my greatest pain in life is that I will never be able to see myself perform live. - Kanye West",
        "Kim doesn’t understand what a blessing I am to her. - Kanye West",
        "I just zoned on how ill it is to really fall in love… Pimpin’ is whatev… Love is that shit! - Kanye West",
        "Sometimes people write novels and they just be so wordy and so self-absorbed. I am not a fan of books. I would never want a book's autograph. I am a proud nonreader of books. - Kanye West",
        "I'm like a tree. I feed the branches of the people. - Kanye West",
        "I'm a pop enigma. I live and breathe every element in life. I rock a bespoke suit and I go to Harold's for fried chicken. It's all these things at once, because, as a tastemaker, I find the best of everything. - Kanye West",
        "Yo Taylor, I'm really happy for you, I'mma let you finish, but Beyoncé has one of the best videos of all time. One of the best videos of all time! - Kanye West",
        "You may be talented, but you’re not Kanye West. - Kanye West",
        'The media crucify me like they did Christ. - Kanye West',
        "What's a B+ mean? I'm an extremist, its either pass or fail! A+ or F-! - Kanye West",
        "I have to dress Kim everyday so she doesn’t embarrass me. - Kanye West",
        "We all self-conscious. I'm just the first to admit it. - Kanye West",
        "My music isn’t just music — it’s medicine. - Kanye West",
        "I was never really good at anything except for the ability to learn. - Kanye West",
        "When you’re the absolute best, you get hated on the most. - Kanye West",
        "My goal, if I was going to do art, fine art, would have been to become Picasso or greater… That always sounds so funny to people, comparing yourself to someone who has done so much, and that’s a mentality that suppresses humanity... - Kanye West",
        "One of my biggest achilles heels has been my ego. And if I, Kanye West, can remove my ego, I think there’s hope for everyone. - Kanye West",
        "I don’t think there’s a living celebrity with more weapons formed against him, but I don’t think there’s one more prosperous. - Kanye West",
        "So, the voices in my head told me go, and then I just walked up, like, halfway up the stage... But I just didn’t really want to take away from Beck’s moment, or the time he’s having to talk. It was kind of a joke – like the Grammys themselves. - Kanye West",
        "I think what Kanye West is going to mean is something similar to what Steve Jobs means. I am undoubtedly, you know, Steve of internet, downtown, fashion, culture. Period. By a long jump. I honestly feel that because Steve has passed, you know, it’s like when Biggie passed and Jay Z was allowed to become Jay Z.' -Kanye West",
        "I will go down as the voice of this generation, of this decade, I will be the loudest voice. - Kanye West",
        "I hate when I'm on a flight and I wake up with a water bottle next to me like oh great now I gotta be responsible for this water bottle. - Kanye West",
        "One of the problems with being a bubbling source of creativity - it's like I'm bubbling in a laboratory, and if you don't put a cap on it, at one point it will, like, break the glass. If I can hone that… then I have, like, nuclear power, like a superhero, like Cyclops when he puts his glasses on. - Kanye West",
        "You should only believe about 90 percent of what I say. As a matter of fact, don’t even believe anything that I’m saying at all. I could be completely fucking with you, and the world, the entire time. - Kanye West",
        "I don't even listen to rap. My apartment is too nice to listen to rap in. - Kanye West",
        "Visiting my mind is like visiting the Hermès factory. Shit is real. - Kanye West",
        "If you read books - which I don't, none at all - about how to become a billionaire, they always say, 'You learn more from your mistakes.' So if you learn from your mistakes, then I'm a f*cking genius. - Kanye West",
        "I am so credible and so influential and so relevant that I will change things. - Kanye West",
        "I feel like I’m too busy writing history to read it. - Kanye West",
        "Fur pillows are hard to actually sleep on. - Kanye West",
        "I believe that bad taste is vulgar. It's like cursing. I think the world can be saved through design, because what is the most distasteful thing someone can do? Kill someone. So, good taste is the opposite of that. - Kanye West",
        "I’m a designer. A musician. A manager. The media try to dishumanise [sic] people who believe in themselves. - Kanye West",
        "For me, first of all, dopeness is what I like the most. Dopeness. People who want to make things as dope as possible, and, by default, make money from it. - Kanye West",
        "I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. - Kanye West",
        "I am in the lineage of Gil Scott-Heron, great activist-type artists. But I’m also in the linage of a Miles Davis, you know, that liked nice things too. - Kanye West",
        "Just imagine if I woke up one day and I was whack. What would I do then? - Kanye West",
        "Oh my God, I’m one of the greatest rappers in the world. - Kanye West",
        "I’m the closest that hip-hop is getting to God. In some situations I’m like a ghetto Pope. - Kanye West",
        "I feel like the type of girl I would be with is a fellow superhero. So we get that 'already flying and now we’re just flying together' thing. - Kanye West",
        "I paid my dues when I had to wear a kilt in Chicago, and friends would say, “What’s your boy got on?” but there are warriors that have killed people in kilts in the past. - Kanye West",
        "I’m going to be the Tupac of clothing. - Kanye West",
        "Shoot for the stars, so if you fall you land on a cloud. - Kanye West",
        "Everything I'm not makes me everything I am. - Kanye West",
        "For me giving up is way harder than trying. - Kanye West",
        "Believe in your flyness...conquer your shyness. - Kanye West",
        "To use is necessary. And if you can't be used, then you're useless. - Kanye West",
        "That that don't kill me, can only make me stronger. - Kanye West",
        "If you know you're the best it only makes sense for you to surround yourself with the best. NO EXCEPTIONS. - Kanye West",
        "Homie I'm graduated. - Kanye West",
        "I am Warhol. I am the No. 1 most impactful artist of our generation. I am Shakespeare in the flesh. Walt Disney. Nike. Google. - Kanye West",
        "I ain’t no muthafuckin celebrity. I ain’t runnin’ for office. I ain’t kissin’ nobody’s muthafuckin babies. I drop your baby and you muthafuckin sue me and shit. - Kanye West",
        "I still think I am the greatest. - Kanye West",
        "I have no interest in working with anyone who is too important or too good or too traditional to take a call at 3am. - Kanye West",
        "I won’t go into a big spiel about reincarnation, but the first time I was in the Gucci store in Chicago was the closest I’ve ever felt to home. - Kanye West",

        # Charlie Sheen,
        "I'm tired of pretending like I'm not bitching, a total … rock star from Mars, and people can't figure me out; they can't process me. I don't expect them to. You can't process me with a normal brain. - Charlie Sheen",
        "Here's the good news. If I realize that I'm insane, then I'm okay with it. I'm not dangerous insane. - Charlie Sheen",
        "People say you have to work on your resentments. Yeah, no, I'm gonna hang onto them and they're gonna fuel my attack. - Charlie Sheen",
        "Life all comes down to a few moments. This is one of them. - Charlie Sheen",
        "I'm dealing with fools and trolls and soft targets. It's just strafing runs in my underwear before my first cup of coffee. I don't have time for these clowns. - Charlie Sheen",
        "I'm so tired of pretending my life isn't perfect and bitching and just winning every second. - Charlie Sheen",
        "I don't have time for these clowns. I don't have time for their judgement and their stupidity. They lay down with their ugly wives in front of their ugly children and just look at their loser lives and then look at me and they say 'I can't process it'. Well no, and you never will. Stop trying, just sit back and enjoy the show. - Charlie Sheen",
        "I got magic and I got poetry in my fingertips. - Charlie Sheen",
        "Most of the time — and this includes naps — I'm an F-18, bro, and I will destroy you in the air, and I will deploy my ordnance to the ground. - Charlie Sheen",
        "You borrow my brain for 5 seconds, and just be like 'Dude, can't handle it, unplug this bastard', because it fires in a way that is, I don't know, maybe not from this particular terrestrial realm. - Charlie Sheen",
        "What's the cure? Medicine? Make me like them? Not going to happen. I'm bi-WINNING! I win here and I win there. Now what? - Charlie Sheen",
        "I probably took more than anybody could survive. I was bangin' seven-gram rocks and finishing them because that's how I roll. I have one speed, I have one gear, GO! - Charlie Sheen",
        "I'm different. I have a different constitution, I have a different brain, I have a different heart. I got tiger blood, man. Dying's for fools, dying's for amateurs. - Charlie Sheen",
        "I blinked and I cured my brain. - Charlie Sheen",
        "Can't is the cancer of happen. - Charlie Sheen",
        "It was epic. The run I was on made Sinatra, Flynn, Jagger, Richards, all of them just look like droopy-eyed armless children. - Charlie Sheen",
        "I expose people to magic, I expose them to something they're never otherwise going to see in their boring normal lives. - Charlie Sheen",
        "I don't believe in rock bottom. Rock bottom is like a fishing term. - Charlie Sheen",
        "They were like 'AA this' and I was like 'Bye bye that'. - Charlie Sheen",
        "Sorry my life is so much more bitchin' than yours. I planned it this way. - Charlie Sheen",
        "Resentments are the rocket fuel that lives in the tip of my saber. - Charlie Sheen",
        "I'm on a drug. It's called Charlie Sheen. It's not available because if you try it you will die. Your face will melt off and your children will weep over your exploded body. - Charlie Sheen",
        "They're trying to destroy my family, so I take great umbrage with that. And defeat is not an option. They picked a fight with a warlock. - Charlie Sheen",
        "There’s been a tsunami of media, and I’ve been riding it on a mercury surfboard. - Charlie Sheen",
        "I’m grandiose.  Because I live a grandiose life.  I’m not 'aw shucks' ... because I'm gnarly. - Charlie Sheen",
        "I wish people would shift that focus on to themselves and their own family and their own friends and just maybe spend a little more time on their home front. And not some distant planet that is me. - Charlie Sheen",
        "I'm on a quest to claim absolute victory on every front. - Charlie Sheen",
        "I'm still alive, which is pretty cool. - Charlie Sheen",
        "People that aren't special, people that don't have tiger blood and Adonis DNA. - Charlie Sheen",
        "I have a 10,000-year-old brain and the boogers of a 7-year-old. That's how I describe myself. - Charlie Sheen",
        "It might be lonely up here but I sure like the view. - Charlie Sheen",
        "We need to hack up the person responsible for this bad connection....hack him up in front of his children. We need to cut off his face and wear it and go on a really tightly budgeted shopping spree in stores that don't exist yet. - Charlie Sheen",
        "Boom, crush. Night, losers. Winning, duh. - Charlie Sheen",
        "I have defeated this earthworm with my words. Imagine what I would have done with my fire breathing fists. - Charlie Sheen",
        "The only thing I'm addicted to is winning. This bootleg cult, arrogantly referred to as Alcoholics Anonymous, reports a 5 percent success rate. My success rate is 100 percent. - Charlie Sheen",
        "From my big beautiful warlock brain, welcome to 'Sheen's Korner' ... You're either in my corner, or you're with the trolls. - Charlie Sheen",
        "You have the right to kill me, but you don't have the right to judge me. That's life. There's nobility in that. There's focus. It's genuine. It's crystal and it's pure and it's available to everybody, so just shut your traps and put down your McDonalds, your vaccines, your Us Weekly, your TMZ and the rest of it. - Charlie Sheen",

        # Dubya,
        "One of the great things about books is sometimes there are some fantastic pictures. - George W. Bush",
        "They misunderestimated me. - George W. Bush",
        "Our enemies are innovative and resourceful, and so are we. They never stop thinking about new ways to harm our country and our people, and neither do we. - George W. Bush",
        "There's an old saying in Tennessee — I know it's in Texas, probably in Tennessee — that says, fool me once, shame on — shame on you. Fool me — you can't get fooled again. - George W. Bush",
        "One of the hardest parts of my job is to connect Iraq to the war on terror. - George W. Bush",
        "I think war is a dangerous place. - George W. Bush",
        "If this were a dictatorship it would be a heck of a lot easier... as long as I'm the dictator. Hehehe. - George W. Bush",
        "It has come to my attention, that air pollution is polluting the air! - George W. Bush",
        "My job is a decision-making job, and as a result, I make a lot of decisions. - George W. Bush",
        "I know the human being and fish can co-exist peacefully. - George W. Bush",
        "I don't care what the polls say. I don't. I'm doing what I think what's wrong. - George W. Bush",
        "It's a time of sorrow and sadness when we lose a loss of life. - George W. Bush",
        "I would say the best moment of all was when I caught a 7.5-lb. perch in my lake. (Answering a reporter who asked him to name the best moment of his Presidency.) - George W. Bush",
        "Reading is the basics for all learning. - George W. Bush",
        "This may sound a little West Texan to you, but I like it. When I'm talking about.. when I'm talking about myself, and when he's talking about myself, all of us are talking about me. - George W. Bush",
        "Too many good docs are getting out of the business. Too many OB/GYN's aren't able to practice their love with women all across the country. - George W. Bush",
        "I've heard the call.  I believe God wants me to run for President. - George W. Bush",

        # Dan Quayle,
        "It’s time for the human race to enter the solar system. - Dan Quayle",
        "It is wonderful to be here in the great state of Chicago. - Dan Quayle",
        "What a waste it is to lose one's mind. Or not to have a mind. How true that is. - Dan Quayle",
        "The Holocaust was an obscene period in our nation's history. I mean in this century's history. But we all lived in this century. I didn't live in this century. - Dan Quayle",
        "Verbosity leads to unclear, inarticulate things. - Dan Quayle",
        "I love California, I practically grew up in Phoenix. - Dan Quayle",
        "Republicans understand the importance of bondage between a mother and child. - Dan Quayle",
        "We have a firm commitment to NATO, we are a *part* of NATO. We have a firm commitment to Europe. We are a *part* of Europe. - Dan Quayle",
        "I have made good judgements in the Past. I have made good judgements in the Future. - Dan Quayle",
        "The future will be better tomorrow. - Dan Quayle",
        "You all look like happy campers to me. Happy campers you are, happy campers you have been, and, as far as I am concerned, happy campers you will always be. - Dan Quayle",
        "Hawaii has always been a very pivotal role in the Pacific. It is in the Pacific. It is a part of the United States that is an island that is right here. - Dan Quayle",
        "We don't want to go back to tomorrow, we want to move forward. - Dan Quayle",
        "We understand the importance of having the bondage between the parent and the child. - Dan Quayle",
        "I made a misstatement and I stand by all my misstatements. - Dan Quayle",
        "I was known as the chief graverobber of my state. - Dan Quayle",

        # Yogi Berra,
        "When you come to a fork in the road, take it. - Yogi Berra",
        "You can observe a lot by just watching. - Yogi Berra",
        "Baseball is 90\% mental and the other half is physical. - Yogi Berra",
        "We made too many wrong mistakes. - Yogi Berra",
        "You better cut the pizza in four pieces because I’m not hungry enough to eat six. - Yogi Berra",
        "How can you think and hit at the same time? - Yogi Berra",
        "The future ain’t what it used to be. - Yogi Berra",
        "We have deep depth. - Yogi Berra",
        "Even Napoleon had his Watergate. - Yogi Berra",
        "He hits from both sides of the plate. He’s amphibious. - Yogi Berra",
        "I never said most of the things I said. - Yogi Berra",

        # Miscellaneous
        "I'm not dumb. I just have a command of thoroughly useless information. - Bill Watterson",
        "What's Walmart, do they sell like wall stuff? - Paris Hilton",
        "I get to go to overseas places, like Canada. - Britney Spears",
        "I've never really wanted to go to Japan. Simply because I don’t like eating fish. And I know that's very popular out there in Africa. - Britney Spears",
        "Smoking kills. If you're killed, you've lost a very important part of your life. - Brooke Shields",
        "Twenty-three is old. It's almost 25, which is like almost mid-20s. - Jessica Simpson",
        "War is not nice. - Barbara Bush",
        "I have opinions of my own - strong opinions - but I don't always agree with them. - George Bush Sr.",
        "I think that gay marriage is something that should be between a man and a woman. - Arnold Schwarzenegger",
        "I believe that more people would be alive today if there were a death penalty. - Nancy Reagan",
        "I would have made a good pope. - Richard Nixon",
        "The Cuban Missile Crisis. It had to do with Cuba and missiles, I'm pretty sure. - Dana Perino",
        "If Lincoln were alive today he'd be turning over in his grave. - Gerald Ford",
        "There's a fine line between genius and insanity. I have erased this line. - Oscar Levant",
        "The statistics on sanity are that one out of every four people is suffering from a mental illness. Look at your 3 best friends. If they're ok, then it's you. - Rita Mae Brown",
        "Love, n. A temporary insanity curable by marriage. - Ambrose Bierce",
        "We do not have to visit a madhouse to find disordered minds; our planet is the mental institution of the universe. - Johann Wolfgang von Goethe",
        "If you're going to be crazy, you have to get paid for it or else you're going to be locked up. - Hunter S. Thompson",
        "Eagles may soar, but weasels don’t get sucked into jet engines. - Unknown",
        "A day without sunshine is like, you know, night. - Steve Martin",
        "A zebra does not change its spots. - Al Gore",
        "Things have never been more like the way they are today in history. - Dwight D. Eisenhower",
        "Facts are stupid things. - Ronald Reagan",
        "My fear is that the whole island will become so overly populated that it will tip over and capsize. - Hank Johnson",
        "If you take out the killings, Washington actually has a very very low crime rate. - Marion Barry",
        "Those who survived the San Francisco earthquake said, ‘Thank God, I'm still alive.' But, of course, those who died, their lives will never be the same again. - Barbara Boxer",
        "We'd like to avoid problems, because when we have problems, we can have troubles. - Wesley Bolin"]
      end
    end
  end
end
