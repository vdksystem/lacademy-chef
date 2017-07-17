file 'default www' do
	path '/var/www/html/index.html'
	content 'Hello wororld v1.1.1'
end

webnodes = search('node', 'role:web')

webnodes.each do |node|
    puts node
end
