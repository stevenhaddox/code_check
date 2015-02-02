module Web::Views::Home
  class Index
    include Web::View
    def call(params)
      puts params
    end
  end
end
