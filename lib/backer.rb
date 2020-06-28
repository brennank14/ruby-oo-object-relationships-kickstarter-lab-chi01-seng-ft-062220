class Backer
attr_reader :name 
    def initialize(name)
        @name = name

    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projects = []
        ProjectBacker.all.select do |element|
            if element.backer == self
                backed_projects << element.project
            end
        end
        backed_projects
    end

end