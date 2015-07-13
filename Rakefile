desc "compile and run the site"
task :default do
  pids = [
    spawn("bundle exec jekyll serve"),
    spawn("scss --watch assets:stylesheets"),
    spawn("coffee -b -w -o javascripts -c assets/*.coffee")
  ]

  trap "INT" do
    Process.kill "INT", *pids
    exit 1
  end

  loop do
    sleep 1
  end
end

task :rename do
  (1..11).each do |n|
    sh "mv photos/#{n}.jpg photos/#{n}_thumb.jpg"
    sh "mv photos/'#{n} copy.jpg' photos/#{n}.jpg"
  end
end
