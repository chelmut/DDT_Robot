ConfigData.robot
	
	//Variables
	//Configuration Data
	${url}  https://www.google.com/
	%{browser}  chrome
	
	// Element Locators
	
	${txtbox_username}  id:user-name
	${txtbox_password}  id:password
	${txtbox_address1}  id:address1
	${txtbox_address2}  id:address2
	${txtbox_pincode}  id:pincode
	${btn_Submit}  xpath://*[@id="submit"]
