// create struct with name structTypeJob
struct structTypeJob {
    var JOPType :String
}
// create object with name Online , AtCompany , PartTime
let Online = structTypeJob(JOPType: "online👀 " )
let AtCompany = structTypeJob(JOPType: "at Company 🏢" )
let PartTime = structTypeJob(JOPType: "part time ⌛" )

print("""
-----------Welcome to the job search app 💼 --------------------
""")
print("-----------please select the Type of search you wnat------------")



print("Pleas Enter your Name:")
// Allow for user to Enter value
let userNmae = readLine()
print("Welcome",(userNmae!),"✨to the job search app 🔍 ")

    
print("""
-------------------------------------------------------------------------
                  Enter The Type of job you prefer 💼
""")
//while loop with condition where user can enter value until
var i = 1, n = 20
while (i <= n) {
// create array for Type search
let Typesearch = ["1-city 🌆","2-Salary 💰 "]
    //display array
for val1 in Typesearch {
    print(val1)
}

    // Allow for user to Enter value "string"
var TypeSearchBasedOn: String! = readLine()
// create switch case number 1
switch TypeSearchBasedOn {
 // first case for user multipule chose
case "1":
print("Please select the city you want to work in 💡 ")
    //create enume
    enum one{
      case JeddahCity
        case RiyadhCity
        case KhobarCity
    }
    //create array with name "city" uesing enume
    let city = ["1-\(one.JeddahCity)","2-\(one.RiyadhCity)", "3-\(one.KhobarCity)"]
    //loop to display city value
    for val2 in city {
        print(val2)
    }
    
    

   
 // allow user to enter value
let cityType: String! = readLine()
    //create switch
switch cityType {
//first case for Jeddah
    
case "1":
 print("""
----------------------------------------------------------------------
                Jobs available in Jeddah 🏙
""")
    // create array for Jeddah City
let JeddahCity = ["Computer Science", "Business Administration", "accountant", "interior design"]
   // loop using enumerated to display array for Jeddah
    for (index, item) in JeddahCity.enumerated() {
        print(index+1 , item  )
    }

   
    
print("""
---------------------------------------------------------------
            Type of work available in this city 👔 :
""")
  // call for object from struct with name structTypeJob
    print(Online.JOPType)
   // cll for function textfun and send array to Check if Job available or not
    textfun(InputArray:JeddahCity)
    
// second case for Riyadh city
    
case "2":
    print("""
   ----------------------------------------------------------------------
                   Jobs available in Riyadh 🏙
   """)
    // create array for Riyadh City
let RiyadhCity = ["Computer Science", "Business Administration", "accountant", "interior design", "frontend Developer","web developer", "Networks", "UI/UX"]
    // loop using enumerated to display array for Riyadh
    for (index, item) in RiyadhCity.enumerated() {
        print(index+1 , item  )
    }
    
    
    
    print("""
    ----------------------------------------------------------------------
                Type of work available in this city 👔 :
    """)
    // call for object from struct with name structTypeJob
    print(AtCompany.JOPType)
    // cll for function textfun and send array to Check if Job available or not
    textfun(InputArray:RiyadhCity)
    
   
        

case "3":
    print("""
   ----------------------------------------------------------------------
                   Jobs available in Khobar 🏙
   """)
    
    //array for Khobar City
let KhobarCity = ["Computer Science", "Business Administration", "accountant", "interior design", "frontend Developer","web developer", "Networks", "UI/UX"]
    // display array Khobar City
    
    //enumerated I use it to display  1 , 2 ,3 ,4 etc
    for (index, item) in KhobarCity.enumerated() {
        print(index+1 , item  )
    }
// print statement
    print("""
    ----------------------------------------------------------------------
                Type of work available in this city 👔  :
    """)
    // call for object from struct with name structTypeJob
    print(PartTime.JOPType)
    // cll for function textfun and send array to Check if Job available or not
    textfun(InputArray:KhobarCity)
   
    

    
    
  // default case
default:
    print("FAIL ❌")

}
  
// the second case for the first switch "search by using salary "
case "2":
    
    print("What salary do you want to look for? 💰")
    // Allow for user to Enter value
    let Grade = Double(readLine()!)
    //switch "search by using salary "
    switch Grade! {
    case 4500.5..<5000.5:
        print("Computer Science")
    case 5000.5..<7000.5:
        print("Business Administration")
    case 7000.5..<9000.5:
        print("accountant")
    case 9000.5..<10000.5:
        print("web developer")
    case 10000.5..<11000.5:
        print("interior design")
    case 11000.5..<13000.5:
        print("UI/UX")
    case 13000.5..<15000.5:
        print("Networks")
    case 15000.5..<17000.5:
        print("frontend Developer")
    default:
        print("there is no job ")
    }
    // default case
default:
    print("please enter valid Value ❌")
    
}

//function to Check if Job available or not
func textfun( InputArray : [String] ) {
print ("Please Enter your job Title to Check it AVAILABLE Or not AVAILABLE")
    // let user enter value
let JobTitle: String! = readLine()
    // check
if  InputArray.contains((JobTitle!)) {
    print("this jop is AVAILABLE ✅ ")
}else{
    print ("this jop is not AVAILABLE ❌")
}
   
    
   
   }
    // condition for while loop to allow print the menu again
  i = i + 1
    print("Please Enter The Type of job you prefer again 💼")
    }


