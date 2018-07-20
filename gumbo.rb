require 'object'

class GBDocument < HiEngine::Object
    native "nl::GBDocument"

end
class GBNode < HiEngine::Object
    native "nl::GBNode"

    def attr key
        getAttribute key
    end
end
