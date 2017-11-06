//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//★ 5강 - 1 function type의 개념

// 함수의 경우에는 1st class citizen이라고 본다. 함수가 1등 시민인지에 대해서 효용을 의심하는 경우도 있지만, 나중되면 복잡한 문제를 해결하는데 이것이 더 효율적이라는 것을 깨닫게 될 것임 ㅇㅇ
//★ 5강 -2 funtion type 설정
/*
func addVAT(source:Double) -> Double {
    return source * 1.1
}

func couponDiscount(source:Double) -> Double {
    return source * 0.9
}

var additional:(Double) -> Double

let transaction032701 = 120.7
additional = addVAT

let price032701 = additional(transaction032701)

func finalPrice(source:Double, additional:(Double) -> Double) -> Double {
    
    let price = additional(source)
    return price
}

let price032702 = finalPrice(source: 350.0, additional: couponDiscount)
*/

//★ 5강 - 3 closure 소개

//클로저의 정의. 1등시민으로 사용가능한 독립적인 코드조각. 리턴타입, 매개변수, 할당 모두가 가능한 것이다. 클로저의 특성 중 한가지는 자신의 ㅌㅡㄱ성 값을 받은 후에 그냥 닫히는 것.
/*
let addVATClosure = { (source:Double) -> Double in
    return source*1.1
}
let couponDiscountClosure = {(source:Double) -> Double in
    return source * 0.9
}

let price032703 = addVATClosure(157.6)
 */

//★ 5강 - 4 closure 축약하기

/*
let addVATClosure = { (source:Double) -> Double in
    return source*1.1
}
let addVATClosure2 = { source in //type은 추론이 가능하기 때문에 생략하는 것이 가능하다.
    return source*1.1
}
let addVATClosure3 = { source in
    source*1.1 // 어차피 리턴할거니까 리턴도 생략이 가능하다.
}
let addVATClosure4 = { $0 * 1.1 //매개변수 어차피 들어올 거 아니까, 위치를 통해서 접근하는 것이다. 0번째 오는 매개변수에 *1.1을 해서 리턴한다는 것으로 바꾸는 것.
}

let couponDiscountClosure = {(source:Double) -> Double in
    return source * 0.9
}
let couponDiscountClosure2 = {source in //마찬가지로 타입은 추론이 가능하기 때문에 생략해주고
    return source * 0.9
}
let couponDiscountClosure3 = {source in
   source * 0.9 // 어차피 리턴해줄거 다 아니까 이것도 생략 가능하고
}
let couponDiscountClosure4 = {$0 * 0.9 //매개변수 들어오는거 어차피 다 아니까, 그냥 몇번째 매개변수랑 곱해주면 되는지만 정의해준다.
}


let price032703 = addVATClosure(157.6)
let price032704 = couponDiscountClosure4(200.0)
*/

//★ 5강 - 5 함수를 리턴하는 함수(Currying) // 함수를 매개변수로 받는 함수(고차함수)보다 활용도가 떨어지긴 함. 조금 어려움
/*
let addVATClosure = { (source:Double) -> Double in
    return source*1.1
}
let addVATClosure2 = { source in //type은 추론이 가능하기 때문에 생략하는 것이 가능하다.
    return source*1.1
}
let addVATClosure3 = { source in
    source*1.1 // 어차피 리턴할거니까 리턴도 생략이 가능하다.
}
let addVATClosure4 = { $0 * 1.1 //매개변수 어차피 들어올 거 아니까, 위치를 통해서 접근하는 것이다. 0번째 오는 매개변수에 *1.1을 해서 리턴한다는 것으로 바꾸는 것.
}

let couponDiscountClosure = {(source:Double) -> Double in
    return source * 0.9
}
let couponDiscountClosure2 = {source in //마찬가지로 타입은 추론이 가능하기 때문에 생략해주고
    return source * 0.9
}
let couponDiscountClosure3 = {source in
    source * 0.9 // 어차피 리턴해줄거 다 아니까 이것도 생략 가능하고
}
let couponDiscountClosure4 = {$0 * 0.9 //매개변수 들어오는거 어차피 다 아니까, 그냥 몇번째 매개변수랑 곱해주면 되는지만 정의해준다.
}


let price032703 = addVATClosure(157.6)
let price032704 = couponDiscountClosure4(200.0)

func makeAdder(x:Int) -> (Int) -> Int {
    func adder(a:Int) -> Int {
        return x + a
    }
    return adder
}

func makeAdder2(x:Int) -> (Int) -> Int {
    let adder:(Int) -> Int = {
       return $0 + x
    }
    return adder
}

func makeAdder3(x:Int) -> (Int) -> Int {
    return {
        return $0 + x
    }
   
}



let add5 = makeAdder2(x: 5)
let add10 = makeAdder(x: 10)

print(add5(2))
print(add10(2))
print(makeAdder3(x: 5)(2))
*/

//★ 5강 - 6 map 함수

//map 함수를 통해서 반복문을 대체해본다.


let addVATClosure = { (source:Double) -> Double in
    return source*1.1
}
let addVATClosure2 = { source in //type은 추론이 가능하기 때문에 생략하는 것이 가능하다.
    return source*1.1
}
let addVATClosure3 = { source in
    source*1.1 // 어차피 리턴할거니까 리턴도 생략이 가능하다.
}
let addVATClosure4 = { $0 * 1.1 //매개변수 어차피 들어올 거 아니까, 위치를 통해서 접근하는 것이다. 0번째 오는 매개변수에 *1.1을 해서 리턴한다는 것으로 바꾸는 것.
}

let couponDiscountClosure = {(source:Double) -> Double in
    return source * 0.9
}
let couponDiscountClosure2 = {source in //마찬가지로 타입은 추론이 가능하기 때문에 생략해주고
    return source * 0.9
}
let couponDiscountClosure3 = {source in
    source * 0.9 // 어차피 리턴해줄거 다 아니까 이것도 생략 가능하고
}
let couponDiscountClosure4 = {$0 * 0.9 //매개변수 들어오는거 어차피 다 아니까, 그냥 몇번째 매개변수랑 곱해주면 되는지만 정의해준다.
}


let price032703 = addVATClosure(157.6)
let price032704 = couponDiscountClosure4(200.0)

func makeAdder(x:Int) -> (Int) -> Int {
    func adder(a:Int) -> Int {
        return x + a
    }
    return adder
}

func makeAdder2(x:Int) -> (Int) -> Int {
    let adder:(Int) -> Int = {
        return $0 + x
    }
    return adder
}

func makeAdder3(x:Int) -> (Int) -> Int {
    return {
        return $0 + x
    }
    
}



let add5 = makeAdder2(x: 5)
let add10 = makeAdder(x: 10)

print(add5(2))
print(add10(2))
print(makeAdder3(x: 5)(2))

//새강의 스타트 포인트
let transactions = [560.0, 321.5, 190.0, 672.8, 1190.0, 450.0]
var vatPrices:[Double] = []

for transaction in transactions {
    vatPrices += [addVATClosure(transaction)]

}

let vatMapPrices = transactions.map({transaction -> Double in
    return transaction * 1.1
})

let vatMapPrices2 = transactions.map({$0 * 1.1})

//★ filter 함수
//조건이 있는 함수를 각각의 요소에 적용해서, 새로운 배열을 만들어내는 함수다.

var BigTransactions:[Double] = []

for price in vatPrices {
    if price >= 500{
        BigTransactions += [price]
    }
}

let bigFilterTransactions = vatPrices.filter({$0 >= 500})

var meetingRooms:[String:Int] = ["Bansky":4, "Rivera":8, "Kahlo":8, "Picasso":10, "Cezanne":20, "Matisse":30]

let members = 9
let available = meetingRooms.filter({$0.1 > members})
print(available) // 형태가 바뀜. 튜플이 아니더라도 이제 나올 수 있게 되었다.

//★ sort 함수

func ascendantSort (sort1:Double, sort2:Double) -> Bool {
    return sort1 > sort2
}

let sortedPrices = vatPrices.sorted(by: ascendantSort)

let sortedPrices2 = vatPrices.sorted(by: {sort1, sort2 in
    return sort1 > sort2})
let sortedPrices3 = vatPrices.sorted(by: {$0 > $1})

//sort는 여기서 한번 더 줄일 수 있다.
let sortedPrices4 = vatPrices.sorted(by: >)

let sortedMeetingRooms = meetingRooms.sorted(by: {$0.1 > $1.1})
print(sortedMeetingRooms)

//★ reduce
//reduce함수는 하나의 값으로 수렴시키는 함수이다.

func priceSum (base:Double, adder:Double) -> Double {
    return base + adder
}

var sum:Double = 0.0
for price in vatPrices{
    sum += priceSum(base: sum, adder: price)
}

var sum2:Double = 0.0
let sumReduce = vatPrices.reduce(sum2, priceSum)
let sumReduce2 = vatPrices.reduce(0.0, {base, adder in return base + adder})
let sumReduce3 = vatPrices.reduce(0.0, +)
//combine 할 오퍼레이터만 넘겨주면, 이렇게 만들어줌 ㅇㅇ
let pricesInString = vatPrices.reduce("", {"\($0)" + "\($1)\n"})
//클로저 기호를 계속 까먹는 실수를 하는 경향이 있음

let descriptionString = meetingRooms.reduce("we have meeting rooms: \n", {$0 + "\($1.0):\($1.1)"})


print(descriptionString)

let x = [10, 3, 20, 15, 4].sorted(by: {$0 < $1}).filter({ $0 > 5 }).map({ $0 * 100 })

let x2 = [10, 3, 20, 15, 4].sort(by: {$0 < $1})



