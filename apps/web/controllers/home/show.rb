module Web::Controllers::Home
  class Show
    include Lotus::Action
    def call(params)
      puts "#{params.inspect}"
    end
  end
end