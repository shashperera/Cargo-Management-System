
	function formValidate()
	{
		var firstname = document.forms["myforms"]["fname"].value;
		var lastname = document.forms["myforms"]["lname"].value;
		var address = document.forms["myforms"]["address"].value;
		var username = document.forms["myforms"]["username"].value;	
		var packageid = document.forms["myforms"]["pid"].value;
		var one = document.form["form"]["one"].value;


		
					if(isNumeric(one))	
							return true;
						else
							return false;
					


	}

	function isEmpty(elemvalue, field)
	{
		if(elemValue=="" || elemValue== null)
		{
			alert ("you cannot have" + field + "field empty.");
			return true;
		}
		else
			return false;
	

	}

	

	function Numeric(elemvalue)
	{
		var exp = /^[0-9+]+$/;
		if(!isEmpty(elemValue,"one"))
		{
			if(elemvalue.match(exp))
			{
				return true;
			}
			else
			{
				alert ("Enter only numeric characters to Package Weight.");
				return false;

			}
		

		}
		else
			return false;		

	}

	