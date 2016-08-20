

def account_number(string)
    if string.scan(/\b\d{4}\b/).empty? == false
    re = /\d{4}-\d{3}-\d{3}/
    if re.match string
      true 
    end
  end      
end 

def find_account(string)
  if string.scan(/\b\d{4}\b/).empty? == false
    re = /\d{4}-\d{3}-\d{3}/
    match1 = re.match string 
    if re.match string 
      match1[0]  
    end 
  end
end 

def account_array(string)
  if string.scan(/\b\d{4}\b/).empty? == false
    re = /\d{4}-\d{3}-\d{3}/
    if re.match string 
      string.scan(/\d{4}-\d{3}-\d{3}/)
    end 
  end   
end 

def hiding_account(string)
  re = /\d{4}-\d{3}-\d{3}/ 
  if re.match string 
    match1 = re.match string
    account = match1[0]
    p "XXXX-XXX-#{account[-3..-1]}"
  end 
end 

p account_number("1234-123-123")
p find_account("My account number is 4444-456-789") == "4444-456-789"
p account_array("My account number is 4955-467-890") == ["4955-467-890"]
p hiding_account("My account number is 4955-467-890") == "XXXX-XXX-890"
