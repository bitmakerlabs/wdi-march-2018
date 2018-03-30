module Magic
    def spell
        "Abrakadabra"
    end

    def herbology
        "Magic Mashroom"
    end
end

module Science
    
    def light(value)
        if(value == "photon")
            p "sorry light is a wave"
        elsif(value == "wave")
            p "sorry light is an electromaganetic wave"
        else
            p "light has dual nature"
        end
    end

end