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
























 
