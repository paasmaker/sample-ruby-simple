require 'sinatra'

get '/' do
	response = '<!DOCTYPE html>'
	response += '<html>'
	response += '  <head><title>Hello, world!</title></head>'
	response += '  <body>'
	response += '    <div style="text-align:center;margin-top:60px">'
	response += '    <p><img src="p-white.png" alt=""></p>'
	response += '    <h1>Hello, world!</h1>'
	response += '    <p><a href="/environ">Environment</a></p>'
	response += '    </div>'
	response += '  </body>'
	response += '</html>'

	return response
end

get '/p-white.png' do
	send_file 'p-white.png'
end

get '/environ' do
	response = "<!DOCTYPE html>"
	response += "<html>"
	response += "  <head><title>Environment</title></head>"
	response += "  <body>"
	response += "<pre>"
	ENV.each_pair do |k,v|
		response += k + " => " + v + "\n"
	end
	response += "</pre>"

	return response
end