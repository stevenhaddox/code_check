module Web::Views::Home
  class Show
    include Lotus::View
    def call(params)
      puts params
    end
  end
end
