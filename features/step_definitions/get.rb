require 'pry'

假如 /^请求一个get方法的(.*)$/ do |url|
#  visit(url)
  @response = MyHttp.get(url)
end

那么 /^返回的get数据应该包含:$/ do |expected_table|
  expected_table.raw.each do |row|
    expect(@response.body).to have_content(row[0])
  end
end
