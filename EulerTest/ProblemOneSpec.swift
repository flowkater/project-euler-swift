//
//  EulerTest.swift
//  EulerTest
//
//  Created by flowkater on 2015. 12. 17..
//  Copyright © 2015년 todait. All rights reserved.
//

//
//10보다 작은 자연수 중에서 3 또는 5의 배수는 3, 5, 6, 9 이고, 이것을 모두 더하면 23입니다.
//1000보다 작은 자연수 중에서 3 또는 5의 배수를 모두 더하면 얼마일까요?
//

import Quick
import Nimble

class ProblemOne {
    func getMultiplySum(n: Int) -> Int{
        return Array(1..<n)
            .filter{ threeOrFive($0) }
            .reduce(0){ $0 + $1 }
    }
    
    func threeOrFive(n: Int) -> Bool {
        return n % 3 == 0 || n % 5 == 0
    }
}

class ProblemOneSpec: QuickSpec {
    
    override func spec() {
        describe("First check"){
            var p: ProblemOne?
            
            beforeEach {
                p = ProblemOne()
            }
            
            it("getMultiplySum") {
                expect(p!.getMultiplySum(10)).to(equal(23))
                expect(p!.getMultiplySum(1000)).to(equal(233168))
            }
        }
    }
}
