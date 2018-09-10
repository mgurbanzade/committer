class App
  attr_reader :username, :repo_name

  def initialize
    ask_for_username
    ask_for_repo_name
    @link = "https://github.com/#{@username}/#{@repo_name}"
    puts 'That\'s it! Committer will commit to your repo everyday unless you stop it.'
    puts 'To stop committing use corresponding option from the menu.'
  end

  def ask_for_username
    puts 'Your github username:'
    @username = gets.chomp
  end

  def ask_for_repo_name
    puts 'Your repository name:'
    @repo_name = gets.chomp
  end
end

App.new
