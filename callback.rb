require 'object'
class Callback < HiEngine::Object
  native "gcore::Callback"
  
  def initialize &block
    super
    @block = block
  end

  def _invoke args
    @block.call *args if @block
  end
  
  def inv *argv
    invoke argv
  end
end
