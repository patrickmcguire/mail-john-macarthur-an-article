wget -O - $1 | wkhtmltopdf > tumblr.pdf
curl https://api.lob.com/v1/jobs \
  -u test_0dc8d51e0acffcb1880e0f19c79b2f5b0cc: \
  -d "name=Latest tumblr" \
  -d "to[name]=John MacArthur" \
  -d "to[address_line1]=666 Broadway" \
  -d "to[address_city]=New York" \
  -d "to[address_state]=NY" \
  -d "to[address_zip]=10012" \
  -d "to[address_country]=US" \
  -d "from[name]=Leore Avidar" \
  -d "from[address_line1]=The Internet" \
  -d "from[address_line2]=101 Internet Way" \
  -d "from[address_city]=New York" \
  -d "from[address_state]=NY" \
  -d "from[address_zip]=10001" \
  -d "from[address_country]=US" \
  -d "object1[name]=tumblr.pdf" \
  -F "object1[file]=@tumblr.pdf" \
  -d "object1[setting_id]=100"
rm tumblr.pdf
