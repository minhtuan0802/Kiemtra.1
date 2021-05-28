//
//  main.swift
//  Kiemtra
//
//  Created by Ngô Minh Tuấn on 28/05/2021.
//

import Foundation

//1. (3đ) Vẽ hình chữ nhật rỗng (kích thước chiều dài, chiều rộng nhập từ bàn phím):
//* * * * * * *
//*             *
//*             *
//* * * * * * *


func hinhCN() {
    print("Nhập kích thước hình chữ nhật: ")
    let cao = Int(readLine()!)!
    let dai = Int(readLine()!)!
    for i in 1...cao {
        for j in 1...dai {
            if i == 1 || i == cao {
                print("*", terminator: " ")
            } else {
                if j == 1 || j == dai {
                    print("*", terminator: " ")
                } else {
                    print(" ", terminator: " ")
                }
            }
        }
        print()
    }

}
hinhCN()

//2. (3đ) Viết chương trình nhập ngày, tháng, năm (dữ liệu nhập từ bàn phím):
//–   Tháng có bao nhiêu ngày.
//–   Tìm ngày trước ngày vừa nhập.
//–   Tìm ngày sau ngày vừa nhập.


let ngay = Int(readLine()!)!
let thang = Int(readLine()!)!
let nam = Int(readLine()!)!
print("Nhập ngày, tháng, năm")
switch thang {
case 2:
    if (nam % 4 == 0 && nam % 100 != 0) || nam % 400 == 0 {
        if ngay == 29 {
            print("Tháng \(thang) năm \(nam) có 29 ngày")
            print("Ngày trước ngày vừa nhập: ngày \(ngay - 1) tháng \(thang) năm \(nam)")
            print("Ngày sau ngày vừa nhập: ngày 1 tháng \(thang + 1) năm \(nam)")
        } else if ngay == 1 {
            print("Tháng \(thang) năm \(nam) có 29 ngày")
            print("Ngày trước ngày vừa nhập: ngày 29 tháng \(thang - 1) năm \(nam)")
            print("Ngày sau ngày vừa nhập: ngày \(ngay + 1) tháng \(thang + 1) năm \(nam)")
        }

    } else {
        if ngay == 28 {
            print("Tháng \(thang) năm \(nam) có 28 ngày")
            print("Ngày trước ngày vừa nhập: ngày \(ngay - 1) tháng \(thang) năm \(nam)")
            print("Ngày sau ngày vừa nhập: ngày 1 tháng \(thang + 1) năm \(nam)")
        } else if ngay == 1 {
            print("Tháng \(thang) năm \(nam) có 28 ngày")
            print("Ngày trước ngày vừa nhập: ngày 28 tháng \(thang - 1) năm \(nam)")
            print("Ngày sau ngày vừa nhập: ngày \(ngay + 1) tháng \(thang + 1) năm \(nam)")
        }
    }
case 1,3,5,7,8,10:
    if ngay == 31 {
        print("Tháng \(thang) năm \(nam) có 31 ngày")
        print("Ngày trước ngày vừa nhập: ngày \(ngay - 1) tháng \(thang) năm \(nam)")
        print("Ngày sau ngày vừa nhập: ngày 1 tháng \(thang + 1) năm \(nam)")
    } else if ngay == 1 {
        print("Tháng \(thang) năm \(nam) có 31 ngày")
        print("Ngày trước ngày vừa nhập: ngày 31 tháng \(thang - 1) năm \(nam)")
        print("Ngày sau ngày vừa nhập: ngày \(ngay + 1) tháng \(thang + 1) năm \(nam)")
    }
case 4,6,9,11:
    if ngay == 30 {
        print("Tháng \(thang) năm \(nam) có 30 ngày")
        print("Ngày trước ngày vừa nhập: ngày \(ngay - 1) tháng \(thang) năm \(nam)")
        print("Ngày sau ngày vừa nhập: ngày 1 tháng \(thang + 1) năm \(nam)")
    } else if ngay == 1 {
        print("Tháng \(thang) năm \(nam) có 30 ngày")
        print("Ngày trước ngày vừa nhập: ngày 30 tháng \(thang - 1) năm \(nam)")
        print("Ngày sau ngày vừa nhập: ngày \(ngay + 1) tháng \(thang + 1) năm \(nam)")
    }
case 12:
    if ngay == 31 {
        print("Tháng \(thang) năm \(nam) có 31 ngày")
        print("Ngày trước ngày vừa nhập: ngày \(ngay - 1) tháng \(thang) năm \(nam)")
        print("Ngày sau ngày vừa nhập: ngày 1 tháng 1 năm \(nam + 1)")
    } else if ngay == 1 {
        print("Tháng \(thang) năm \(nam) có 31 ngày")
        print("Ngày trước ngày vừa nhập: ngày 31 tháng \(thang - 1) năm \(nam)")
        print("Ngày sau ngày vừa nhập: ngày \(ngay + 1) tháng \(thang + 1) năm \(nam)")
    }
default:
    print("Không hợp lệ")
}




//
//3. (4đ) Viết một minigame random các số từ 1 đến 100, cho người dùng đoán số nhập dữ liệu từ bàn phím:
//Gợi ý random từ 1 đến 100: Int.random(in: 1...100)
//- Nếu số nhập vào đúng với số được random thì in ra thông báo chúc mừng
//- Nếu số nhập vào bé hơn số được random thì in ra thông báo là bé quá
//- Nếu số nhập vào lớn hơn số được random thì in ra thông báo là lớn quá

func minigame() {
    print("Nhập số: ")
    let number = Int(readLine()!)!
    let random = Int.random(in: 1...100)
    if number == random {
        print("Chúc mừng bạn đã đoán đúng")
        minigame()
    } else if number < random {
        print("Số bé quá")
        minigame()
    } else {
        print("Số lớn quá")
        minigame()
    }
    
    
}
minigame()

