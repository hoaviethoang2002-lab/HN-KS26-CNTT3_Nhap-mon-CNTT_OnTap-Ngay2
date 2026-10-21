# BÀI LÀM – ÔN TẬP NGÀY 2

- **Họ tên: Hoa Việt Hoàng**
- **Lớp:CNTT3**
- **Link repository:**
- **Hệ điều hành (Windows/macOS): Window**

## Bài 1. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-Content logs/access.log | Select-String "ERROR" >.\logs\error_report.txt
Get-Content logs/error_report.txt
```

### 2 dòng lỗi đầu tiên trong error_report.txt

```text
2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
```

## Bài 2. Đếm bằng pipeline

### Lệnh

```shell
(Get-Content logs/access.log | Select-String "WARNING").count
(Get-Content logs/payment.log | Select-String "ERROR").count
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
WARNING trong access.log: 4
ERROR trong payment.log: 3
```

## Bài 3. Chạy script auto_warning (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
./auto_warning.ps1
```

### Nội dung file logs/warning_report.txt

```text
=== CANH BAO THANH TOAN ===

2025-10-18 09:19:13 [WARNING] Cong thanh toan phan hoi cham
2025-10-18 09:28:16 [WARNING] Nhieu lan nhap sai ma OTP
2025-10-18 09:43:01 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:46:22 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:49:43 [WARNING] So du vi gan bang hoc phi

```

## Bài 4. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
"=== TONG HOP ACCESS LOG ===" > logs/tong_hop_ngay2.txt
Get-Content logs/access.log | Select-String "ERROR" >> logs/tong_hop_ngay2.txt
(Get-Content ".\logs\payment.log" | Select-String "warning").count >> .\logs\tong_hop_ngay2.txt
```

### Nội dung file logs/tong_hop_ngay2.txt

```text
=== TONG HOP ACCESS LOG ===

2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:33:51 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:37:19 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:49:43 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:53:11 [ERROR] Het thoi gian cho (timeout)


5
```

## Bài 5. Câu hỏi ngắn

- **a)>: Ghi đè nội dung cũ của file hoặc tạo file mới nếu chưa tồn tại.
>>: Nối thêm nội dung vào cuối file, giữ nguyên nội dung đã có.**
- **b)File tong_hop_ngay2.txt sẽ bị ghi đè, khiến tiêu đề ban đầu bị mất và file chỉ còn các dòng ERROR được lọc ra.**
- **c)Đường dẫn tương đối giúp dự án dễ di chuyển và chạy trên máy khác mà không cần sửa đường dẫn theo tên người dùng hoặc vị trí thư mục cụ thể.**

## Tự chấm (điền sau khi có đáp án)

- **Điểm tự chấm:** ..../100
- **Lỗi mình đã mắc và cách sửa:**
