#!/usr/bin/env ruby

class GithubCommitter
  attr_reader :repo_name, :file_name

  def initialize
    @repo_name = 'github_committer'
    @file_name = 'committer.txt'
    navigate_to_repo
    prepare_file
    commit
    push
  end

  def navigate_to_repo
    Dir.chdir
    return Dir.chdir(repo_name) if Dir.exist?(repo_name)

    Dir.mkdir(repo_name)
    Dir.chdir(repo_name)
    system "git init"
  end

  def prepare_file
    system "touch #{file_name}" unless File.exist?(file_name)
    File.truncate(file_name, 0) if File.empty?(file_name)
    File.write(file_name, Time.now)
  end

  def commit
    system "git add ."
    commit_message = "#{Time.now.strftime("%Y%m%d")}_commit"
    system "git commit -m '#{commit_message}'"
  end

  def push
    system "hub create"
    system "git push -u origin master"
  end
end

GithubCommitter.new
