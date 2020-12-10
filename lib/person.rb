class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happy)
        @happiness = happy.clamp(0, 10)
    end

    def hygiene=(clean)
        @hygiene = clean.clamp(0, 10)
    end

    def happy?
       if @happiness > 7
        true
       else
        false
       end
    end

    def clean?
        if @hygiene > 7
         true
        else
         false
        end
     end

     def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
       @hygiene += 4
        self.hygiene=(@hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        @happiness += 2
        self.hygiene=(@hygiene)
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        person.happiness += 3
        @happiness += 3
        self.happiness=(@happiness)
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)

        if topic == "politics"
            person.happiness -= 2
            @happiness -= 2
            self.happiness=(@happiness)
            "blah blah partisan blah lobbyist" 
        
        elsif
            topic == "weather"
            person.happiness += 1
            @happiness += 1
            self.happiness=(@happiness)
            "blah blah sun blah rain" 

        else
            "blah blah blah blah blah"
        end
    


    end


end