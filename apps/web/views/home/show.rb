module Web::Views::Home
  class Show
    include Web::View
    def call(params)
      puts params
    end
  end
end
