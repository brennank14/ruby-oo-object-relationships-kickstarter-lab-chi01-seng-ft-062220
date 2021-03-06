class Project
attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = []
        ProjectBacker.all.select do |element|
            if element.project == self
                backers << element.backer
            end
        end
        backers
    end


end