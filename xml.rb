require 'object'

class XMLDocument < HiEngine::Object
    native "gr::XMLDocument"
    
end
class XMLNode < HiEngine::Object
    native "gr::XMLNode"

    def attr key
        getAttribute key
    end
end
