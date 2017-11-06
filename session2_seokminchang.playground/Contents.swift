//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//2강-2
print("\(str)")
/* 변하지 않는 값을 정할때 사용되는 것이 상수, 변하는 값을 정할때 사용하는 것이 변수 */

let maxSpeed = 200
//maxSpeed += 10

var currentSpeed = 110
currentSpeed += 10

//한번 정의내린 것은 끝까지 유지된다. 지금 위의 것은 콜론과 인트가 생략되어 있는 것이다. 스위프트는 추론해서 자동으로 내보내준다. 이를 type inferring이라고 한다.
//currentSpeed += 20.5 > 이러한 엄격함이 스위프트의 특징 중 하나이다.


//★2강-3 String과 Numbers

let name  = "Seongkwan"
var greeting = "Hello"
//여기서도 type inferring이 일어나고 있는 것이다.

greeting += " " + name

let characters = name.characters // characters 함수의 경우에는 문자열 하나하나에 접근 가능한 array함수와 유사한 상태로 만들 수 있다.
let count = characters.count //count는 글자 갯수의 이야기.

let url = "www.codershigh.com"
//http 프로토콜인지 아닌지를 탐색할 수 있는 변수를 만들어 보자.
let hasProtocol = url.hasPrefix("http://")
print("\(name)")

//숫자

//let maxSpeed = 200 //
//maxSpeed += 10

//var currentSpeed = 110
currentSpeed += 10
currentSpeed += Int(20.5)
//굳이 어떻게든 20.5를 currentSpeed에 더하고 싶다면 위와 같은 방법이 있기는 하다.

let intMax = Int.max
let UintMax = UInt.max
let intMin = Int.min
let UintMin = UInt.min

let pi = 3.14
//let halfPi = 3.14/2
let divider = 2
//let halfPi = 3.14/divider > divider가 int값이기 때문에 에러가 발생

let halfPi = pi/Double(divider)

//★ 2강-4
//Tupel '()'로 표현한다.
let time1 = (9, 0, 48)

//time1.0

let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)
time2.h
time2.m
time1.2

let duration = (time1, time2) // 튜플은 이중으로 정리하는 것 역시 가능하다.

let (start, end) = duration
let endHour = end.h
//튜플은 우리가 즉시 원하는 값을 정의하고, 꺼내쓸 수 있다.typealias와 쓰면 그 효용성이 증가.
//type alias는 간단한 타입의 지정이라고 할 수 있다.
typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)
let today:Duration = ((9, 10, 23), (17, 8, 21))
print("We studied \(today.end.h - today.start.h) hour today.")

//★ 2강 - 5
//array : 순서를 가지고 있는 값들의 배열

var meetingRooms:Array<String> = ["Bansky", "Rivera", "Kahlo", "Picasso", "Cezanne", "Matisse" ]
//array 만드는 법 1 : 'declaration' 'name':Array<'type'>
var groups:[Int] = [10, 8, 14, 9]
//array 만드는법 2 : []안에 엘레멘트 타입을 선언해주면 된다.

meetingRooms += ["Renoir"] //array에는 값을 더하는 것이 가능.

//let maxSpeed = 200


//var currentSpeed = 110
currentSpeed += 10

var speedHistory:[Int] = []
speedHistory += [currentSpeed]
let gpsSpeed0901 = 114.1
// speedHistory.append(gpsSpeed0901) // 이렇게 하면 에러가 난다. gpsSpeed0901은 더블 값이기 때문
speedHistory.append(Int(gpsSpeed0901))

speedHistory[1] //array값에 접근하는 방법 1
speedHistory.first //~ 2
speedHistory.last // ~3

let historyBackup = speedHistory // 이때 값이 바로 복사되지 않는다
speedHistory += [150] //값이 바뀌는 순간 위에 있는 애가 복제된다.
historyBackup
//새로운 어레이에 어레이를 할당하면 어레이는 복사된다. 정확히는 원본 어레이가 복사되는 순간에



//★2강 - 6: dictionary
/*
 //dictinary는 값에 이름을 붙여 저장하는 것.
 var meetingRooms:Array<String> = ["Bansky", "Rivera", "Kahlo", "Picasso", "Cezanne", "Matisse" ]
 //array 만드는 법 1 : 'declaration' 'name':Array<'type'>
 var groups:[Int] = [10, 8, 14, 9]
 //array 만드는법 2 : []안에 엘레멘트 타입을 선언해주면 된다.
 
 meetingRooms += ["Renoir"] //array에는 값을 더하는 것이 가능.
 
 let maxSpeed = 200
 
 
 var currentSpeed = 110
 currentSpeed += 10
 
 var speedHistory:[Int] = []
 speedHistory += [currentSpeed]
 let gpsSpeed0901 = 114.1
 // speedHistory.append(gpsSpeed0901) // 이렇게 하면 에러가 난다. gpsSpeed0901은 더블 값이기 때문
 speedHistory.append(Int(gpsSpeed0901))
 speedHistory[1]//array값에 접근하는 방법 1 var string = "Hello, playground"
 speedHistory.first //~ 2
 speedHistory.last  // ~3
 
 let historyBackup = speedHistory // 이때 값이 바로 복사되지 않는다
 speedHistory += [150]  //값이 바뀌는 순간 위에 있는 애가 복제된다.
 historyBackup
 
 var roomCapacity: [String: Int] = ["Bansky": 4, "Rivera": 8, "Kahlo": 4 , "Picasso": 10, "Cezanne": 20, "Matisse": 30 ]
 //roomCapacity += ["Renoir"] // dictionary에서는 어레이의 문법으로 더하는 이런걸 못합니다.
 roomCapacity["Renoir"] = 40
 print(roomCapacity)
 //roomCapacity.values // 뭔지 모르겠는데 안됨
 roomCapacity.count
 roomCapacity
 var Name:[String] = []
 var Capacity:[Int] = []
 for (name, capacity) in roomCapacity {
 
 Name.append(name)
 Capacity.append(capacity)
 }
 
 Name
 
 let roomNames = [String](roomCapacity.keys)
 let capacities = [Int](roomCapacity.values)
 
 let total = capacities.reduce(0, +)
 
 //set. 순서를 가지고 있지 않은 컬렉션
 
 let subway2 :Set = ["시청","을지로입구","을지로3가","을지로4가","동대문역사문화공원","신당","상왕십리","한양대","뚝섬","성수","건대입구","구의","강변","잠실나루","잠실","신천","종합운동장","삼성","선릉","역삼","강남","교대","서초","방배","사당","낙성대","서울대입구","봉천","신림","신대방","구로디지털단지","대림","신도림","문래","영등포구청","당산","합정","홍대입구","신촌","이대","아현","충정로"]
 
 let subway3 :Set = ["지축","구파발","연신내","불광","녹번","홍제","무악재","독립문","경복궁","안국","종로3가","을지로3가","충무로","동대입구","약수","금호","옥수","압구정","신사","잠원","고속터미널","교대","남부터미널","양재","매봉","도곡","대치","학여울","대청","일원","수서","가락시장","경찰병원","오금"]
 
 let transfer = subway2.intersection(subway3)
 let notTransfer = subway2.symmetricDifference(subway3)
 
 */

//★ 2강 - 7 control flow
/*
 //if문. 조건에 따른 분기문. 만족시킨다고 하면, 바로 뒤에 있는 애가 시행되고 만족시키지 못하는 경우에는 else가 실행됨.
 
 let subway2 :Set = ["시청","을지로입구","을지로3가","을지로4가","동대문역사문화공원","신당","상왕십리","한양대","뚝섬","성수","건대입구","구의","강변","잠실나루","잠실","신천","종합운동장","삼성","선릉","역삼","강남","교대","서초","방배","사당","낙성대","서울대입구","봉천","신림","신대방","구로디지털단지","대림","신도림","문래","영등포구청","당산","합정","홍대입구","신촌","이대","아현","충정로"]
 
 let subway3 :Set = ["지축","구파발","연신내","불광","녹번","홍제","무악재","독립문","경복궁","안국","종로3가","을지로3가","충무로","동대입구","약수","금호","옥수","압구정","신사","잠원","고속터미널","교대","남부터미널","양재","매봉","도곡","대치","학여울","대청","일원","수서","가락시장","경찰병원","오금"]
 
 let transfer = subway2.intersection(subway3)
 let notTransfer = subway2.symmetricDifference(subway3)
 
 if transfer.count > 0 {
 print("환승역은 \(transfer) 입니다.")
 
 } else {
 print("환승역은 없습니다. ")
 
 }
 
 for station in subway2 {
 print("이번 역은 \(station)입니다. ")
 }
 
 // key와 value의 값을 for문을 통해서 돌리는 것이 가능하다
 
 var roomCapacity: [String: Int] = ["Bansky": 4, "Rivera": 8, "Kahlo": 4 , "Picasso": 10, "Cezanne": 20, "Matisse": 30 ]
 //roomCapacity += ["Renoir"] // dictionary에서는 어레이의 문법으로 더하는 이런걸 못합니다.
 roomCapacity["Renoir"] = 40
 
 
 for (roomName, capacity) in roomCapacity {
 var roomDescription:String
 switch capacity {
 case 4:
 roomDescription = "\(roomName)은 스터디 룸이며 정원은 \(capacity)명입니다."
 
 case 5...10:
 "\(roomName)은 팀 세미나 룸이며 정원은 \(capacity)명입니다."
 case 11...30:
 "\(roomName)은 그룹 세미나 룸이며 정원은 \(capacity)명입니다."
 case _ where capacity > 30:
 "\(roomName)의 정원은 \(capacity)명이며 별도의 사용신청이 필요합니다."
 default:
 "\(roomName)의 정보를 다시 확인해주세요"
 
 }
 }
 */

//★2강 - 8.1 /8.2 optional

/*// nil. 값이 없음을 나타내는 것으로, 모든 타입에서 사용이 가능하다고 한다.
 // 그러나 이들은 프로그램을 크래쉬나게 할 가능성이 높기 때문에 실행중 nil이 될 수 있는 변수에 ?을 붙여 특별히 관리하자는 것.
 
 //var title: String = nil // 이건 옵셔널이 아니기때문에 에러가 난다.
 //var title: String? = nil
 //title = "Storyboard Prototyping"
 
 var title: String = "Storyboard Prototyping"
 var ratings:[Int]? = nil
 var supportURL: String? = nil
 
 //print("\(title) has \(ratings.count) ratings. \r\nsupport web page : \(supportURL ?? "Hello")") // ratings가 nil값이기 때문에 치명적인 에러를 반드시 야기하게 된다.
 
 
 supportURL = "www.codershigh.com"
 
 // force unwrapping. 값의 존재를 확신할때 사용하는 친구. 느낌표로 접근하는 존재는 정말 확실하게 믿을때 사용해야한다.
 var bookDescription = "\(title)"
 if ratings != nil {
 bookDescription += "\(ratings?.count)"
 }
 if supportURL != nil {
 bookDescription += "\r\(supportURL!)"
 }
 
 bookDescription
 */

//★2강 - 8.3 optional

// if let
/*var title: String = "Storyboard Prototyping"
 var ratings:[Int]? = nil
 var supportURL: String? = nil
 
 supportURL = "www.codershigh.com"
 
 var bookDescription = "\(title)"
 if let theRatings = ratings {
 bookDescription += "\(theRatings.count)"
 }
 if let theURL =  supportURL {
 bookDescription += "\r\(theURL)"
 }
 
 bookDescription*/

//implicitly unwrapped optional. 이게 초기값은 어쩔 수 없이 nil이지만 애플리케이션이 동작하는 경우에는 반드시 값이 있을 때 사용하는 것. 처음 선언할때 !를 하는 것.
/*
 var title: String = "Storyboard Prototyping"
 var ratings:[Int]? = nil
 var supportURL:String! = nil
 
 supportURL = "www.codershigh.com"
 
 var bookDescription = "\(title)"
 if let theRatings = ratings {
 bookDescription += "\(theRatings.count)"
 }
 //if let theURL =  supportURL {
 //
 //}
 
 //bookDescription += "\r\(supportURL)"
 //bookDescription
 
 // 위처럼 할 경우 supportURL의 경우에는 암시적으로 unwrapping된 옵셔널이기 때문에, 만약 출력시 optional은 그대로 남게된다.(차이점은 암시적으로 언래핑된 경우, 크래쉬는 일어나지 않는다는 점이다. 그래서 여기서 선택할 수 있는 것은 다음의 경우 하나 뿐이다.
 
 bookDescription += "\r\(supportURL!)"
 bookDescription
 */

//★ 2강 - 9 function
/*
 //함수의 경우에는 매개변수(parameter뒤에 오는 친구)가 들어가고, return type이 나오는 형태
 var title: String = "Storyboard Prototyping"
 var ratings:[Double]? = nil
 var supportURL:String! = nil
 
 supportURL = "www.codershigh.com"
 ratings = [4.5, 3.0, 5.0, 2.5]
 
 func ratingRecord (history:[Double]) -> (average:Double, min: Double, max:Double) {
 var sum = 0.0, min = history[0], max = history[0]
 for value in history{
 if min > value {
 min = value
 }
 if max < value {
 max = value
 }
 sum += value
 }
 let average = sum / Double(history.count)
 return (average, min, max)
 }
 
 
 var bookDescription = "\(title)"
 if let theRatings = ratings {
 let record = ratingRecord(history: theRatings)
 bookDescription += " has \(theRatings.count) ratings, \r\n average is \(record.average), from\(record.min) to \(record.max)"
 }
 //if let theURL =  supportURL {
 //
 //}
 
 //bookDescription += "\r\(supportURL)"
 //bookDescription
 
 // 위처럼 할 경우 supportURL의 경우에는 암시적으로 unwrapping된 옵셔널이기 때문에, 만약 출력시 optional은 그대로 남게된다.(차이점은 암시적으로 언래핑된 경우, 크래쉬는 일어나지 않는다는 점이다. 그래서 여기서 선택할 수 있는 것은 다음의 경우 하나 뿐이다.
 
 bookDescription += "\r\(supportURL!)"
 bookDescription
 
 func myFunction () {
 
 }
 
 myFunction()
 */

//★2강 - 10 structure
/*
 //struct Task {
 //    var title:String?
 //  var time:Int?
 //}
 
 //var callTask = Task(title: "call To Randy", time: 10*60)
 //var reportTask = Task()
 //reportTask.title = "Report to Boss"
 
 //var todayTask:[Task] = [ ]
 //todayTask += [reportTask, callTask]
 
 struct Task {
 var title:String
 var time:Int?
 }
 
 var callTask = Task(title: "call To Randy", time: 10*60)
 var reportTask = Task(title: "Report to Boss", time: nil)
 
 
 var todayTask:[Task] = [ ]
 todayTask += [reportTask, callTask]
 
 print("today task = \(todayTask)")
 todayTask[1].time = 15*60
 
 callTask.title = "Call to Toby"
 
 print("today taks = \(todayTask), callTask = \(callTask)")
 //struct의 경우에는 값을 복사하기 때문에 값이 변경되지 않는다.
 */

//★ 2강 - 11 class

// object를 생성하는 친구가  class. 구조체로 만드는 것은 보통 오브젝트라고 하지 않음. 스위프트에서는 그러나 모두를 통칭하는 인스턴스라는 말을 더 많이 씀. 오브젝트의 제일 큰 특징은 참조된다는 사실이다. 단순히 복사되지 않고, 그 주소값만 복사된다는 이야기다.

/*struct Task {
 var title:String
 var time:Int?
 var owner:Employee
 var participant:Employee?
 }
 
 class Employee {
 var name:String?
 var phoneNumber:String?
 var boss:Employee?
 }
 
 let me:Employee = Employee()
 //me의 경우에는 let임에도 불구하고, 클래스의 값들이 var이기 때문에 수정이 가능한 것이다.
 me.name = "Alex"
 me.phoneNumber = "010-1234-5678"
 let toby:Employee = Employee()
 toby.phoneNumber = "011-5678-1234"
 var callTask = Task(title: "call To Randy", time: 10*60, owner: me, participant: toby )
 var reportTask = Task(title: "Report to Boss", time: nil, owner: me, participant: nil)
 
 callTask.participant?.phoneNumber = "010-5678-1234"
 print("\(toby.phoneNumber)")
 // 토비의 phoneNumber가 바뀐 것을 확인할 수 있다.
 
 var todayTask:[Task] = [ ]
 todayTask += [reportTask, callTask]
 
 print("today task = \(todayTask)")
 todayTask[1].time = 15*60
 
 callTask.title = "Call to Toby"
 
 print("today taks = \(todayTask), callTask = \(callTask)")*/

// ★2강 - 12 enum
/*
 //연관성 있는 값들의 그룹을 만들어 type-safe하게 만들자는 것이다.
 // raw value를 줄 필요가 없다.
 //1st-class type: 어디에나 사용가능. 매개변수나 리턴타입이나 컬렉션도 가능
 
 
 
 struct Task {
 var title:String
 var time:Int?
 var owner:Employee
 var participant:Employee?
 var type:TaskType
 
 enum TaskType {
 case Call
 case Report
 case Meet
 case Support
 
 //computed property를 사용할 수 있다!
 var typeTitle:String{
 get {
 let titleString:String
 switch self {
 case .Call:
 titleString = "Call"
 case .Meet:
 titleString = "Meet"
 case .Report:
 titleString = "Report"
 case .Support:
 titleString = "Support"
 
 
 }
 return titleString
 //이제 enum값을 설정하고, tasktype의 값에 따라서 값을 리턴할 것이다.
 }
 }
 }
 }
 
 class Employee {
 var name:String?
 var phoneNumber:String?
 var boss:Employee?
 }
 
 let me:Employee = Employee()
 //me의 경우에는 let임에도 불구하고, 클래스의 값들이 var이기 때문에 수정이 가능한 것이다.
 me.name = "Alex"
 me.phoneNumber = "010-1234-5678"
 let toby:Employee = Employee()
 toby.phoneNumber = "011-5678-1234"
 var callTask = Task(title: "call To Randy", time: 10*60, owner: me, participant: toby, type:.Call )
 var reportTask = Task(title: "Report to Boss", time: nil, owner: me, participant: nil, type: Task.TaskType.Report// full name으로 선언할 경우에는 이런 식으로 선언해주어야 한다.)
 
 callTask.participant?.phoneNumber = "010-5678-1234"
 print("\(toby.phoneNumber)")
 // 토비의 phoneNumber가 바뀐 것을 확인할 수 있다.
 
 var todayTask:[Task] = [ ]
 todayTask += [reportTask, callTask]
 
 print("today task = \(todayTask)")
 todayTask[1].time = 15*60
 
 callTask.title = "Call to Toby"
 
 print("today taks = \(todayTask), callTask = \(callTask)")
 */

//★ 2강 - 13 initializer

/*
 // 초기화 작업. stored property의 최초 값을 설정하는 작업을 의미한다. stored property는 일정 영역을 차지하는 프라퍼티. 반대 개념이 computed property.
 
 struct Task {
 var title:String
 var time:Int? // 이것들은 stored property. 보다시피 값이 없는데, 이들이 만들어질때 값을 주는 것을 초기화작업이라고 한다!
 var owner:Employee
 var participant:Employee?
 var type:TaskType
 
 enum TaskType {
 case Call
 case Report
 case Meet
 case Support
 
 //computed property를 사용할 수 있다!
 var typeTitle:String{ // 이 typetitle이 computed property
 get {
 let titleString:String
 switch self {
 case .Call:
 titleString = "Call"
 case .Meet:
 titleString = "Meet"
 case .Report:
 titleString = "Report"
 case .Support:
 titleString = "Support"
 
 
 }
 return titleString
 //이제 enum값을 설정하고, tasktype의 값에 따라서 값을 리턴할 것이다.
 }
 }
 }
 init(type:TaskType, owner:Employee) {
 self.type = type
 self.title = type.typeTitle
 self.owner = owner
 self.participant = nil
 self.time = nil
 }
 }
 
 class Employee {
 var name:String?
 var phoneNumber:String?
 var boss:Employee?
 
 init(name:String) {
 self.name = name
 }
 convenience init(name:String, phone:String) {
 self.init(name:name)
 self.phoneNumber = phone
 } // init이 앞에 선언되어 있고, 이것을 다시 불렀기 때문에 convenienc init이 됨
 }
 
 let me:Employee = Employee(name: "Alex", phone: "010-1234-5678")
 //me의 경우에는 let임에도 불구하고, 클래스의 값들이 var이기 때문에 수정이 가능한 것이다.
 //me.name = "Alex"
 //me.phoneNumber = "010-1234-5678"
 let toby:Employee = Employee(name: "Toby", phone: "010-5678-1234")
 //toby.phoneNumber = "011-5678-1234"
 var callTask = Task(type: .Call, owner: me)
 var reportTask = Task(type: .Report, owner: me)
 
 
 //var callTask = Task(title: "call To Randy", time: 10*60, owner: me, participant: toby, type:.Call )
 //var reportTask = Task(title: "Report to Boss", time: nil, owner: me, participant: nil, type: Task.TaskType.Report) // full name으로 선언할 경우에는 이런 식으로 선언해주어야 한다.)
 
 callTask.participant?.phoneNumber = "010-5678-1234"
 print("\(toby.phoneNumber)")
 // 토비의 phoneNumber가 바뀐 것을 확인할 수 있다.
 
 var todayTask:[Task] = [ ]
 todayTask += [reportTask, callTask]
 
 print("today task = \(todayTask)")
 todayTask[1].time = 15*60
 
 callTask.title = "Call to Toby"
 
 print("today taks = \(todayTask), callTask = \(callTask)")
 */

//★ 2장 - 14 method

// method: 타입에 종속된 함수. 클래스, 스트럭쳐, 이넘이 모두 인스턴스 메소드를 가리킬 수 있으며 self는 그 자신을 가리킨다.
struct Task {
    var title:String
    var time:Int? // 이것들은 stored property. 보다시피 값이 없는데, 이들이 만들어질때 값을 주는 것을 초기화작업이라고 한다!
    var owner:Employee
    //var participant:Employee?
    var type:TaskType
    
    enum TaskType {
        case Call(number:String)
        case Report(to:Employee, when:String)
        case Meet(to:Employee, location:String)
        case Support(who:Employee, duration:Int)
        
        //computed property를 사용할 수 있다!
        var typeTitle:String{ // 이 typetitle이 computed property
            get {
                let titleString:String
                switch self {
                case .Call:
                    titleString = "Call"
                case .Meet:
                    titleString = "Meet"
                case .Report:
                    titleString = "Report"
                case .Support:
                    titleString = "Support"
                    
                    
                }
                return titleString
                //이제 enum값을 설정하고, tasktype의 값에 따라서 값을 리턴할 것이다.
            }
        }
    }
    init(type:TaskType, owner:Employee) {
        self.type = type
        self.title = type.typeTitle
        self.owner = owner
        //self.participant = nil
        self.time = nil
    }
    func dobasicTask() -> String {
        let taskDescription:String
        switch type {
        case .Call(let number):
            taskDescription = "\(owner.name) make a call to \(number)"
        case .Report(let receiver, let time):
            taskDescription = "\(owner.name) report to \(receiver.name) at \(time)"
        case .Meet(let participant, let location):
            taskDescription = "\(owner.name) meet \(participant.name) at \(location)"
        case .Support(let taskOwner, let duration):
            taskDescription = "\(owner.name) support \(taskOwner.name) at \(duration) days"
        default:
            taskDescription = "Need more information for Task"
            
        }
        return taskDescription
    }
}

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
    init(name:String) {
        self.name = name
    }
    convenience init(name:String, phone:String) {
        self.init(name:name)
        self.phoneNumber = phone
    } // init이 앞에 선언되어 있고, 이것을 다시 불렀기 때문에 convenienc init이 됨
    func report() {
        if let myboss = boss {
            print ("\(name) reported to \(myboss.name)")
        } else {
            print("\(name) don't have boss")
        }
    }
    func callTaskToBoss() -> Task? {
        if let myBoss = boss, let callTo = myBoss.phoneNumber {
            var callTask = Task(type: .Call(number: callTo), owner: self)
            return callTask
        }
        return nil
    }
    
}


let me:Employee = Employee(name: "Alex", phone: "010-1234-5678")
//me의 경우에는 let임에도 불구하고, 클래스의 값들이 var이기 때문에 수정이 가능한 것이다.
//me.name = "Alex"
//me.phoneNumber = "010-1234-5678"
let toby:Employee = Employee(name: "Toby", phone: "010-5678-1234")
//toby.phoneNumber = "011-5678-1234"
me.boss = toby
me.report()

var todayTask:[Task] = [ ]

var reportTask = Task(type: .Report(to:toby, when:"afternoon"), owner: me)
todayTask += [reportTask]
if let callTask = me.callTaskToBoss() {
    todayTask += [callTask]
}




//var callTask = Task(title: "call To Randy", time: 10*60, owner: me, participant: toby, type:.Call )
//var reportTask = Task(title: "Report to Boss", time: nil, owner: me, participant: nil, type: Task.TaskType.Report) // full name으로 선언할 경우에는 이런 식으로 선언해주어야 한다.)


print("\(toby.phoneNumber)")
// 토비의 phoneNumber가 바뀐 것을 확인할 수 있다.



print("today task = \(todayTask)")
todayTask[1].time = 15*60

reportTask.dobasicTask()




































