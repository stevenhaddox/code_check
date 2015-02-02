module Web::Controllers::Home
  class Index
    include Web::Action
    def call(params)
      puts "#{params.class}"
    end
  end

  class Show
    include Lotus::Action
    def call(params)
      puts "#{params.class}"
    end
  end
end
