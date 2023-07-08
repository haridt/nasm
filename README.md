
# I.Thanh ghi:
 ```
  A. Thanh ghi đa năng:
    - Thanh ghi dữ liệu
    - Thanh ghi con trỏ
    - Thanh ghi chỉ số
    1. Thanh ghi dữ liệu ( Data registers):
        Thanh ghi 64 bit(8 byte): RAX, BAX,CAX,DAX
        Thanh ghi 32 bit(4 byte): EAX, EBX, ECX, EDX 
        Thanh ghi 16 bit(2 byte): AX, BX, CX, DX
        Thanh ghi 8 bit cao(1 byte): AH,BH,CH,DH
        Thanh ghi 8 bit thấp(1 byte) : AL,BL, CL, DL
            - EAX( thanh ghi tích lũy): Thường được dùng để nhập xuất hàm và thực hiện các phép toán hạng ( vd hàm đọc: mov eax,4/ hàm nhập: mov eax,3) 
            - EBX( thanh ghi cơ sở): Thường được dùng để đánh dấu địa chỉ, lưu địa chỉ bắt đầu của 1 mảng
            - ECX( thanh ghi đếm):  Thường được dùng trong vòng lặp, đếm số lần lặp. Hoặc có thể sử dụng để lưu biến
            - EDX( thanh ghi dữ liệu): Được sử dụng trong đầu ra để lưu trữ các giá trị trung gian và kết quả của các phép toán số học
   2. Thanh ghi con trỏ ( Pointer registers):
          Thanh ghi 32 bit: EIP, ESP, EBP
          Thanh ghi 16 bit: IP, SP, BP 
            - IP(Instruction Pointer) IP kết hợp với thanh ghi CS (dưới dạng CS:IP) được sử dụng để lưu trữ địa chỉ của lệnh tiếp theo được thực thi trong chương trình
            - SP(Stack Pointer) SP kết hợp với thanh ghi SS (SS:SP) sử dụng để lưu trữ địa chỉ của đỉnh của ngăn xếp
            - BP(base pointer register) được sử dụng để lưu trữ địa chỉ của một vùng dữ liệu trên ngăn xếp.Địa chỉ trong thanh ghi SS được kết hợp với phần bù trong BP để lấy vị trí của tham số.BP cũng có thể được kết hợp với DI và SI làm thanh ghi cơ sở cho địa chỉ đặc biệt.
    3. Thanh ghi chỉ số ( Index registers):
          Thanh ghi 32 bit: ESI, EDI, 
          Thanh ghi 16 bit: SI, DI   
            - SI(source index register) được sử dụng để lưu trữ con trỏ đến dữ liệu nguồn trong bộ nhớ
            - DI( destination index register) được dử dụng để lưu trữ con trỏ đến dữ liệu đích trong bộ nhớ
  B. Thanh ghi điều khiển ( Control registers):
    * Có 4 thanh ghi điều khiển chính:
      - CR0(control register 0) chứa các cờ điều kiển trạng thái hệ thống như chế độ bảo vệ, cấp độ ưu tiên ngắt, bật/tắt phần trang, bật/tắt cache,.. Nó cũng chứa các cờ điều kiển bảo mật như cho phép hoặc cấm việc thực hiện ma ở mức đặc quyền cao hơn
      -  CR1(control register1) chứa địa chỉ trang gây lỗi trong chính quá trình phan trang(paying) của hệ thống. Khi xảy ra lỗi phân trang, bộ vi xử lý sẽ lưu địa chỉ của trang gây lỗi vào CR2 để có thể xác định nguyên nhân lỗi
      - CR2(control register2) chứa địa chỉ của thư mục của trang (page directory) được sử dụng trong quá trình phân trang
    * Các loại Flags:
      - Cờ tràn (Overflow Flag - OF) bằng 1 khi kết quả của phép toán có dấu lớn hơn so với kích thước của địa chỉ đích.
      - Cờ hướng (Direction Flag - DF) xác định hướng trái hay phải cho việc di chuyển hoặc so sánh chuỗi dữ liệu. Khi giá trị DF bằng 0, chuỗi hoạt động lấy từ trái qua phải và ngược lại khi DF bằng 1.
      - Cờ ngắt (Interupt Flag - IF) xác định khi nào các ngắt ngoài như nhập dữ liệu từ bàn phím được xử lý. Khi IF bằng 1 thì tín hiệu ngắt sẽ được xử lý, ngược lại thì bỏ qua.
      - Cờ dừng (Trap Flag - TF) hỗ trợ thực thi chương trình theo Single-step mode. Trình Debug chúng ta thường sử dụng sẽ đặt giá trị cho TF, nhờ đó chúng ta có thể thực thi từng lệnh một.
      - Cờ dấu (Sign Flag - SF) cho biết kết quả của phép toán số học là âm hay dương. Giá trị của SF tùy thuộc vào giá trị của bit ngoài cùng bên trái (High order bit - Most significant bit). SF bằng 1 nếu kết quả của phép toán số học là một giá trị âm.
      - Cờ không (Zero Flag - ZF) thể hiện kết quả của phép toán số học hoặc phép so sánh. Cờ dấu có giá trị bằng 1 khi kết quả của phép toán bằng 0, hoặc phép so sánh cho kết quả bằng nhau. Ngược lại, khi kết quả khác không hoặc so sánh cho kết quả là khác nhau thì ZF bằng 0.
      - Cờ nhớ (Carry Flag - CF) chứa giá trị nhớ (nhớ 0, hoặc nhớ 1) của MSB sau khi thực hiện phép toán số học. Ngoài ra, khi thực hiện lệnh dịch bit (shift) hoặc quay (rotate) thì giá trị của bit bị đẩy ra cuối cùng sẽ được lưu tại CF.
VD: giá trị 0000 1101 sau khi dịch phải 1 bit sẽ trở thành 0000 0110, bit 1 bị đẩy ra sẽ được lưu trong CF (CF = 1). Trong trường hợp nếu dịch phải 2 bit thì bit cuối cùng bị đẩy ra sẽ là bit 0, lúc này CF = 0. Tương tự với khi dịch trái.
      - Cờ nhớ phụ trợ (Auxiliary Carry Flag - AF) chứa giá trị nhớ khi chuyển từ bit có trọng số 3 lên bit có trọng số 4 (nhớ từ lower nibble sang high nibble) khi thực hiện phép toán số học.
      - Cờ chẵn lẻ (Parity Flag - PF) bằng 0 khi số lượng bit 1 trong trong kết quả của phép toán số học là một số chẵn, và bằng 1 khi số lượng bit 1 là một số lẻ. Trong một số trường hợp, PF còn được dùng để kiểm tra lỗi.
  *Trong các cờ trên thì DF, IF và TF là 3 cờ điều khiển. OF, SF, ZF, CF, AF và PF là 6 cờ trạng thái.
  C. Thanh ghi đoạn:
        Một chương trình Assembly được chia thành các đoạn (Segment) chứa dữ liệu, code và stack:
            - Code segment: chứa các mã lệnh thực thi. Thanh ghi đoạn code CS chứa địa chỉ bắt đầu của Code segment.
            - Data segment: chứa các biến, hằng số, dữ liệu của chương trình. Thanh ghi đoạn dữ liệu DS chứa địa chỉ bắt đầu của Data segment.
            - Stack segment: chứa dữ liệu và địa chỉ trả về của các chương trình con. Các dữ liệu này được lưu trữ theo cấu trúc Stack. Thanh ghi đoạn stack SS chứa địa chỉ bắt đầu của Stack segment.
    * Ngoài CS, DS và SS ra còn có các thanh ghi đoạn ES (Extra Segment Register), FS và GS cung cấp các phân đoạn bổ sung cho việc lưu trữ dữ liệu.
```
# II. Cấu trúc chung chương trình assembly ( NASM):
```
  Chương trình có 3 phần: data, bss, text
  ```
section .data ; khai báo dữ liệu khởi tạo, hằng
  {}
section .bss  ; khai báo biến chưa khởi tạo hoặc biến mặc định cho chương trình
  {}
section .text ; bắt đầu chương trình, khai báo biến toàn cục, thực hiện code 
  global _start
  _start :    ; để kernel biết đầu chương trình
    {}
```
```
![image](https://github.com/haridt/Code-C/assets/131541155/db1e94e8-416a-4b77-85c9-dc3b7f680610)
# III. Lời gọi của hệ thống Linux:

![image](https://github.com/haridt/Code-C/assets/131541155/34b5058b-b6c6-4827-8f2a-09bbe7da7d0f)
```
```
hiển thị màn hình : + eax: 4
                      + ebx: 1
  nhập từ bàn phím :  + eax: 3
                      + ebx: 2
  exit             :  + eax: 1
                      + ebx: 0
                      + int 80h
```
```
# IV. Đặc tả ( kiểu dữ liệu):

`` đặc tả thuộc `section .data` ``

![image](https://github.com/haridt/Code-C/assets/131541155/58a11a13-9077-4a96-a599-fe65f23fbc9a)

`` đặc tả thuộc `section .bss` ``

![image](https://github.com/haridt/Code-C/assets/131541155/1aa5d09d-168c-450a-9b2e-e0f07280894c)


# V. Điều kiện:
![image](https://github.com/haridt/Code-C/assets/131541155/7e5d777f-8a99-4f6e-a232-ae4a577befae)



![image](https://github.com/haridt/Code-C/assets/131541155/24082942-55fd-4697-8ee7-813b4f658d1e)



                                                              (source: https://www.cit.ctu.edu.vn/~dtnghi/cod/nasm.pdf)
        
