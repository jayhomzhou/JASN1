//
//  PerformanceTest.swift
//  ASN1Tests
//
//  Created by Leif Ibsen on 12/12/2019.
//

import XCTest

class PerformanceTest: XCTestCase {

    static let x: Bytes =
    [48, 130, 5, 187, 48, 130, 3, 163, 160, 3, 2, 1, 2, 2, 8, 87, 10, 17, 151, 66, 196, 227, 204, 48, 13, 6, 9, 42, 134, 72, 134, 247, 13, 1, 1, 11, 5, 0, 48, 107, 49, 11, 48, 9, 6, 3, 85, 4, 6, 19, 2, 73, 84, 49, 14, 48, 12, 6, 3, 85, 4, 7, 12, 5, 77, 105, 108, 97, 110, 49, 35, 48, 33, 6, 3, 85, 4, 10, 12, 26, 65, 99, 116, 97, 108, 105, 115, 32, 83, 46, 112, 46, 65, 46, 47, 48, 51, 51, 53, 56, 53, 50, 48, 57, 54, 55, 49, 39, 48, 37, 6, 3, 85, 4, 3, 12, 30, 65, 99, 116, 97, 108, 105, 115, 32, 65, 117, 116, 104, 101, 110, 116, 105, 99, 97, 116, 105, 111, 110, 32, 82, 111, 111, 116, 32, 67, 65, 48, 30, 23, 13, 49, 49, 48, 57, 50, 50, 49, 49, 50, 50, 48, 50, 90, 23, 13, 51, 48, 48, 57, 50, 50, 49, 49, 50, 50, 48, 50, 90, 48, 107, 49, 11, 48, 9, 6, 3, 85, 4, 6, 19, 2, 73, 84, 49, 14, 48, 12, 6, 3, 85, 4, 7, 12, 5, 77, 105, 108, 97, 110, 49, 35, 48, 33, 6, 3, 85, 4, 10, 12, 26, 65, 99, 116, 97, 108, 105, 115, 32, 83, 46, 112, 46, 65, 46, 47, 48, 51, 51, 53, 56, 53, 50, 48, 57, 54, 55, 49, 39, 48, 37, 6, 3, 85, 4, 3, 12, 30, 65, 99, 116, 97, 108, 105, 115, 32, 65, 117, 116, 104, 101, 110, 116, 105, 99, 97, 116, 105, 111, 110, 32, 82, 111, 111, 116, 32, 67, 65, 48, 130, 2, 34, 48, 13, 6, 9, 42, 134, 72, 134, 247, 13, 1, 1, 1, 5, 0, 3, 130, 2, 15, 0, 48, 130, 2, 10, 2, 130, 2, 1, 0, 167, 198, 196, 165, 41, 164, 44, 239, 229, 24, 197, 176, 80, 163, 111, 81, 59, 159, 10, 90, 201, 194, 72, 56, 10, 194, 28, 160, 24, 127, 145, 181, 135, 185, 64, 63, 221, 29, 104, 31, 8, 131, 213, 45, 30, 136, 160, 248, 143, 86, 143, 109, 153, 2, 146, 144, 22, 213, 95, 8, 108, 137, 215, 225, 172, 188, 32, 194, 177, 224, 131, 81, 138, 105, 77, 0, 150, 90, 111, 47, 192, 68, 126, 163, 14, 228, 145, 205, 88, 238, 220, 251, 199, 30, 69, 71, 221, 39, 185, 8, 1, 159, 166, 33, 29, 245, 65, 45, 47, 76, 253, 40, 173, 224, 138, 173, 34, 180, 86, 101, 142, 134, 84, 143, 147, 67, 41, 222, 57, 70, 120, 163, 48, 35, 186, 205, 240, 125, 19, 87, 192, 93, 210, 131, 107, 72, 76, 196, 171, 159, 128, 90, 91, 58, 189, 201, 167, 34, 63, 128, 39, 51, 91, 14, 183, 138, 12, 93, 7, 55, 8, 203, 108, 210, 122, 71, 34, 68, 53, 197, 204, 204, 46, 142, 221, 42, 237, 183, 125, 102, 13, 95, 97, 81, 34, 85, 27, 227, 70, 227, 227, 61, 208, 53, 98, 154, 219, 175, 20, 200, 91, 161, 204, 137, 27, 225, 48, 38, 252, 160, 155, 31, 129, 167, 71, 31, 4, 235, 163, 57, 146, 6, 159, 153, 211, 191, 211, 234, 79, 80, 156, 25, 254, 150, 135, 30, 60, 101, 246, 163, 24, 36, 131, 134, 16, 231, 84, 62, 168, 58, 118, 36, 79, 129, 33, 197, 227, 15, 2, 248, 147, 148, 71, 32, 187, 254, 212, 14, 211, 104, 185, 221, 196, 122, 132, 130, 227, 83, 84, 121, 221, 219, 156, 210, 242, 7, 155, 46, 182, 188, 62, 237, 133, 109, 239, 37, 17, 242, 151, 26, 66, 97, 247, 74, 151, 232, 139, 177, 16, 7, 250, 101, 129, 178, 162, 57, 207, 247, 60, 255, 24, 251, 198, 241, 90, 139, 89, 226, 2, 172, 123, 146, 208, 78, 20, 79, 89, 69, 246, 12, 94, 40, 95, 176, 232, 63, 69, 207, 207, 175, 155, 111, 251, 132, 211, 119, 90, 149, 111, 172, 148, 132, 158, 238, 188, 192, 74, 143, 74, 147, 248, 68, 33, 226, 49, 69, 97, 80, 78, 16, 216, 227, 53, 124, 76, 25, 180, 222, 5, 191, 163, 6, 159, 200, 181, 205, 228, 31, 215, 23, 6, 13, 122, 149, 116, 85, 13, 104, 26, 252, 16, 27, 98, 100, 157, 109, 224, 149, 160, 195, 148, 7, 87, 13, 20, 230, 189, 5, 251, 184, 159, 230, 223, 139, 226, 198, 231, 126, 150, 246, 83, 197, 128, 52, 80, 40, 88, 240, 18, 80, 113, 23, 48, 186, 230, 120, 99, 188, 244, 178, 173, 155, 43, 178, 254, 225, 57, 140, 94, 186, 11, 32, 148, 222, 123, 131, 184, 255, 227, 86, 141, 183, 17, 233, 59, 140, 242, 177, 193, 93, 157, 164, 11, 76, 43, 217, 178, 24, 245, 181, 159, 75, 2, 3, 1, 0, 1, 163, 99, 48, 97, 48, 29, 6, 3, 85, 29, 14, 4, 22, 4, 20, 82, 216, 136, 58, 200, 159, 120, 102, 237, 137, 243, 123, 56, 112, 148, 201, 2, 2, 54, 208, 48, 15, 6, 3, 85, 29, 19, 1, 1, 255, 4, 5, 48, 3, 1, 1, 255, 48, 31, 6, 3, 85, 29, 35, 4, 24, 48, 22, 128, 20, 82, 216, 136, 58, 200, 159, 120, 102, 237, 137, 243, 123, 56, 112, 148, 201, 2, 2, 54, 208, 48, 14, 6, 3, 85, 29, 15, 1, 1, 255, 4, 4, 3, 2, 1, 6, 48, 13, 6, 9, 42, 134, 72, 134, 247, 13, 1, 1, 11, 5, 0, 3, 130, 2, 1, 0, 11, 123, 114, 135, 192, 96, 166, 73, 76, 136, 88, 230, 29, 136, 247, 20, 100, 72, 166, 216, 88, 10, 14, 79, 19, 53, 223, 53, 29, 212, 237, 6, 49, 200, 129, 62, 106, 213, 221, 59, 26, 50, 238, 144, 61, 17, 210, 46, 244, 142, 195, 99, 46, 35, 102, 176, 103, 190, 111, 182, 192, 19, 57, 96, 170, 162, 52, 37, 147, 117, 82, 222, 167, 157, 173, 14, 135, 137, 82, 113, 106, 22, 60, 25, 29, 131, 248, 154, 41, 101, 190, 244, 63, 154, 217, 240, 243, 90, 135, 33, 113, 128, 77, 203, 224, 56, 155, 63, 187, 250, 224, 48, 77, 207, 134, 211, 101, 16, 25, 24, 209, 151, 2, 177, 43, 114, 66, 104, 172, 160, 189, 78, 90, 218, 24, 191, 107, 152, 129, 208, 253, 154, 190, 94, 21, 72, 205, 17, 21, 185, 192, 41, 92, 180, 232, 136, 247, 62, 54, 174, 183, 98, 253, 30, 98, 222, 112, 120, 16, 28, 72, 91, 218, 188, 164, 56, 186, 103, 237, 85, 62, 94, 87, 223, 212, 3, 64, 76, 129, 164, 210, 79, 99, 167, 9, 66, 9, 20, 252, 0, 169, 194, 128, 115, 79, 46, 192, 64, 217, 17, 123, 72, 234, 122, 2, 192, 211, 235, 40, 1, 38, 88, 116, 193, 192, 115, 34, 109, 147, 149, 253, 57, 125, 187, 42, 227, 246, 130, 227, 44, 151, 95, 78, 31, 145, 148, 250, 254, 44, 163, 216, 118, 26, 184, 77, 178, 56, 79, 155, 250, 29, 72, 96, 121, 38, 226, 243, 253, 169, 208, 154, 232, 112, 143, 73, 122, 214, 229, 189, 10, 14, 219, 45, 243, 141, 191, 235, 227, 164, 125, 203, 199, 149, 113, 232, 218, 163, 124, 197, 194, 248, 116, 146, 4, 27, 134, 172, 164, 34, 83, 64, 182, 172, 254, 76, 118, 207, 251, 148, 50, 192, 53, 159, 118, 63, 110, 229, 144, 110, 160, 166, 38, 162, 184, 44, 190, 209, 43, 133, 253, 167, 104, 200, 186, 1, 43, 177, 108, 116, 29, 184, 115, 149, 231, 238, 183, 199, 37, 240, 0, 76, 0, 178, 126, 182, 11, 139, 28, 243, 192, 80, 158, 37, 185, 224, 8, 222, 54, 102, 255, 55, 165, 209, 187, 84, 100, 44, 201, 39, 181, 75, 146, 126, 101, 255, 211, 45, 225, 185, 78, 188, 127, 164, 65, 33, 144, 65, 119, 166, 57, 31, 234, 158, 227, 159, 208, 102, 111, 5, 236, 170, 118, 126, 191, 107, 22, 160, 235, 181, 199, 252, 146, 84, 47, 43, 17, 39, 37, 55, 120, 76, 81, 106, 176, 243, 204, 88, 93, 20, 241, 106, 72, 21, 255, 194, 7, 182, 177, 141, 15, 142, 92, 80, 70, 179, 61, 191, 1, 152, 79, 178, 89, 84, 71, 62, 52, 123, 120, 109, 86, 147, 46, 115, 234, 102, 40, 120, 205, 29, 20, 191, 160, 143, 47, 46, 184, 46, 142, 242, 20, 138, 204, 233, 181, 124, 251, 108, 157, 12, 165, 225, 150]

    func testDecode() {
        let N = 1000
        self.measure {
            do {
                for _ in 0 ..< N {
                    _ = try ASN1.build(PerformanceTest.x)
                }
            } catch {
                XCTFail("\(error)")
            }
        }
    }

    func testEncode() throws {
        let N = 1000
        let asn1 = try ASN1.build(PerformanceTest.x)
        var b: Bytes = []
        self.measure {
            for _ in 0 ..< N {
                b = asn1.encode()
            }
        }
        XCTAssertEqual(PerformanceTest.x, b)
    }

}