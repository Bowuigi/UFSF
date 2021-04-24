--[[
	UFSF - Uncompressed File Storing Format
]]

-- Config
sep=255 --separator to add and extract (default: 255)



-- Function necesary to extract

function split(Str, Separator)
	Separator=Separator or '%s'
	local t={}
	for field,s in string.gmatch(Str, "([^"..Separator.."]*)("..Separator.."?)") do
		t[#t+1]=field
		if s=="" then
			return t
		end
	end
end

function add(content,filename)
	print(filename)
	print(content)
	io.write(string.char(sep))
end

function extract(content)
	local tmp = split(content,sep)

	
	for i=1,#tmp do
		local filename = tmp[i]
		print("Extracted "..filename)
	end
end