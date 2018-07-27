require 'object'

class Book < HiEngine::Object
    native "nl::Book"
end

class Chapter < HiEngine::Object
    native "nl::Chapter"
end

class Page < HiEngine::Object
    native "nl::Page"
end

class SettingItem < HiEngine::Object
    native "nl::SettingItem"
end
class Map < HiEngine::Object
    native "gcore::_Map"
    include Enumerable

    def [] key
        get key
    end

    def []= key, value
        set key, value
    end

    def each
        keys.each do |key|
            yield key, get(key)
        end
    end
end

class Vector < HiEngine::Object
    native "gcore::_Array"
    include Enumerable

    def [] idx
        get idx
    end

    def << val
        push_back val
    end

    def each
        size.times do |i|
            yield get(i)
        end
    end

    def []= idx, val
        set idx, val
    end

    def last
        get(size - 1)
    end
end
