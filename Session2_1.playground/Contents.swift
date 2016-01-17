//: Playground - noun: a place where people can play

import UIKit

//: Session 2-2

let maxSpeed:Int = 200
//maxSpeed += 10

var currentSpeed:Int = 110
currentSpeed += 10
//currentSpeed += 20.5

//: Session 2-3

let name:String = "Seongkwan"
var greeting = "Hello"
greeting += " " + name

let characters = name.characters
let count = characters.count

let url = "www.codershigh.com"
let hasProtocol = url.hasPrefix("http://")

print("\(name)")
print("\(name) has \(count) characters")

//currentSpeed += Int(20.5)

let intMax = Int.max
let UintMax = UInt.max
let intMin = Int.min
let UintMin = UInt.min

let pi = 3.14
let divider = 2
//let halfPi = 3.14/divider
let halfPi = 3.14/Double(divider)


//: Session 2-4 튜플

let time1 = (9,0,48)
time1.0
let time2:(h:Int, m:Int, s:Int) = (11,51,5)
time2.h

let duration = (time1, time2)
let (start, end) = duration
let endHour = end.h

typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((9,10,23), (17,8,21))
print("We studied \(today.end.h - today.start.h) hours today")


//: Session 2-5 컬렉션
//:: Dictionary

var meetingRooms:Array<String> = ["Banksy", "Rivera", "Kahlo", "Picasso", "Cezanne", "Matisse"]
var groups:[Int] = [10, 8, 14, 9]

meetingRooms += ["Renoir"]


var speedHistory:[Int] = []
speedHistory += [currentSpeed]
let gpsSpeed0901 = 114.1
speedHistory.append(Int(gpsSpeed0901))

speedHistory[0]
speedHistory.last



let historyBackup = speedHistory
speedHistory += [150]
historyBackup

//: Session 2-6 컬렉션2 Dictionary
var roomCapacity:[String:Int] = ["Banksy":4, "Rivera":8, "Kahlo":8, "Picasso":10, "Cezanne":20, "Matisse":30]

//roomCapacity += ["Renoir":40]
roomCapacity["Renoir"] = 40
roomCapacity["Kahlo"]

//let roomNames = roomCapacity.keys
//let capacities = roomCapacity.values


let roomNames = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)

let total = capacities.reduce(0, combine: +)

//: Session 2-6 컬렉션2 Set
let subway2 :Set = ["시청", "을지로입구", "을지로3가", "을지로4가","동대문역사문화공원", "신당", "상왕십리", "왕십리", "한양대", "뚝섬", "성수", "건대입구", "구의", "강변", "잠실나루", "잠실", "신천", "종합운동장", "삼성", "선릉", "역삼", "강남", "교대", "서초", "방배", "사당", "낙성대", "서울대입구", "봉천", "신림", "신대방", "구로디지털단지", "대림", "신도림", "문래", "영등포구청", "당산", "합정", "홍대입구", "신촌", "이대", "아현", "충정로"]
subway2.count

let subway3 :Set = ["지축", "구파발", "연신내", "불광", "녹번", "홍제", "무악재", "독립문", "경복궁", "안국", "종로3가", "을지로3가", "충무로", "동대입구", "약수", "금호", "옥수", "압구정", "신사", "잠원", "고속터미널", "교대", "남부터미널", "양재", "매봉", "도곡", "대치", "학여울", "대청", "일원", "수서", "가락시장", "경찰병원", "오금"]
subway3.count

let transfer = subway2.intersect(subway3)
transfer.count
let notTransfer = subway2.subtract(subway3)
notTransfer.count

let union = subway2.union(subway3)
union.count
let exOR = subway2.exclusiveOr(subway3)
exOR.count

if transfer.count > 0 {
    print("환승역은 \(transfer) 입니다.")
} else {
    print("환승역은 없습니다.")
}

for station in subway2 {
    print("이번 역은 \(station)입니다.")
}

for i in 0...3 {
    print("\(i+1) 번째 회의실은 \(roomNames[i])입니다.")
}

for (roomName, capacity) in roomCapacity {
    "\(roomName)의 정원은 \(capacity)명입니다."
}


for (roomName, capacity) in roomCapacity {
    let roomDescription:String
    switch capacity {
    case 4:
        roomDescription = "\(roomName)은 스터디 룸이며 정원은 \(capacity)명입니다."
    case 5...10:
        roomDescription = "\(roomName)은 팀 세미나 룸이며 정원은 \(capacity)명입니다."
    case 11...30:
        roomDescription = "\(roomName)은 그룹 세미나 룸이며 정원은 \(capacity)명입니다."
    case let caseCapacity where caseCapacity > 30:
        roomDescription = "\(roomName)의 정원은 \(capacity)명이며 별도의 사용신청이 필요합니다."
    default:
        roomDescription = "\(roomName)의 정보를 다시 확인해 주세요"
    }
    print("\(roomDescription)")
}


//: Session 2-8 옵셔널

var title : String = "Storyboard Prototyping"
var ratings : [Int]? = nil
var supportURL : String? = nil

//print ("\(title) has \(ratings!.count) ratings. \r\nsupport web page : \(supportURL)")

//: Session 2-9 옵셔널
supportURL = "www.codershigh.com"

var bookDescription:String = "\(title)"
if ratings != nil {
    bookDescription += "has \(ratings!.count) ratings"
}
if supportURL != nil {
    bookDescription += "\r\nsupport web page: \(supportURL!)"
}

print("\(bookDescription)")

//: Session 2-10 옵셔널
if let theRatings = ratings {
    bookDescription += "has \(theRatings.count) ratings"
}
if let theURL = supportURL {
    bookDescription += "\r\nsupport web page: \(theURL)"
}

var supportingURL : String! = nil
supportingURL = "www.codershigh.com"
bookDescription += "\r\nsupport web page: \(supportingURL)"


//ratings = [4.5, 3.0, 5.0, 2.5]