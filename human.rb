# modules, modules are like classes but they cann't be instantiated
module Human
    attr_accessor :name, :height, :weight

    def run
        puts self.name + " runs"
    end
end