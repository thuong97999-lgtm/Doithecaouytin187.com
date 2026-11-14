<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>doithecaouytin915.com - Hệ Thống Đổi Thẻ Cào Tự Động</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            background-color: #f0f2f5;
            color: #333;
        }
        /* Header */
        header {
            background: linear-gradient(135deg, #0062cc, #0097e6);
            color: white;
            padding: 15px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .logo {
            font-size: 22px;
            font-weight: bold;
            letter-spacing: 0.5px;
        }
        .logo span {
            color: #fbc531;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-weight: 500;
            font-size: 15px;
        }
        nav a:hover {
            text-decoration: underline;
        }

        /* Main Container */
        .container {
            max-width: 1100px;
            margin: 25px auto;
            padding: 0 15px;
        }
        .alert-box {
            background-color: #fff3cd;
            color: #856404;
            border: 1px solid #ffeeba;
            padding: 12px 15px;
            border-radius: 6px;
            margin-bottom: 20px;
            font-size: 14px;
        }

        /* Grid Layout */
        .grid-2 {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }
        @media (max-width: 768px) {
            .grid-2 {
                grid-template-columns: 1fr;
            }
        }

        /* Card Box */
        .card {
            background: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.06);
            margin-bottom: 20px;
        }
        .card-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 2px solid #0097e6;
            color: #0062cc;
        }

        /* Form Elements */
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
            font-size: 14px;
        }
        .form-control {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
        }
        .form-control:focus {
            border-color: #0097e6;
            outline: none;
        }
        .btn-submit {
            width: 100%;
            padding: 12px;
            background-color: #0097e6;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }
        .btn-submit:hover {
            background-color: #0062cc;
        }

        /* Tables */
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #eee;
        }
        th {
            background-color: #f8f9fa;
            font-weight: 600;
            color: #444;
        }
        .badge-success {
            background-color: #d4edda;
            color: #155724;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: bold;
        }
        .badge-pending {
            background-color: #fff3cd;
            color: #856404;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: bold;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #2f3640;
            color: #dcdde1;
            font-size: 14px;
            margin-top: 30px;
        }
    </style>
</head>
<body>

    <header>
        <div class="logo">DOITHECAOUYTIN<span>915.COM</span></div>
        <nav>
            <a href="#">Trang chủ</a>
            <a href="#">Rút tiền</a>
            <a href="#">Lịch sử</a>
            <a href="#">Đăng nhập / Đăng ký</a>
        </nav>
    </header>

    <div class="container">
        <div class="alert-box">
            <strong>Thông báo:</strong> Hệ thống xử lý thẻ tự động 24/7 chỉ trong 5 - 15 giây. Vui lòng chọn đúng mệnh giá, sai mệnh giá sẽ bị trừ 50% hoặc mất thẻ theo quy định nhà mạng.
        </div>

        <div class="grid-2">
            <!-- Form Đổi Thẻ -->
            <div class="card">
                <div class="card-title">GỬI THẺ CÀO TỰ ĐỘNG</div>
                <form id="cardForm">
                    <div class="form-group">
                        <label for="telco">Loại thẻ:</label>
                        <select id="telco" class="form-control" required>
                            <option value="">-- Chọn nhà mạng --</option>
                            <option value="VIETTEL">Viettel (Chiết khấu 15%)</option>
                            <option value="VINAPHONE">Vinaphone (Chiết khấu 16%)</option>
                            <option value="MOBIFONE">Mobifone (Chiết khấu 18%)</option>
                            <option value="ZING">Zing (Chiết khấu 14%)</option>
                            <option value="GARENA">Garena (Chiết khấu 15%)</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="amount">Mệnh giá:</label>
                        <select id="amount" class="form-control" required>
                            <option value="">-- Chọn mệnh giá --</option>
                            <option value="10000">10.000 đ</option>
                            <option value="20000">20.000 đ</option>
                            <option value="50000">50.000 đ</option>
                            <option value="100000">100.000 đ</option>
                            <option value="200000">200.000 đ</option>
                            <option value="500000">500.000 đ</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="code">Mã thẻ:</label>
                        <input type="text" id="code" class="form-control" placeholder="Nhập mã số sau lớp bạc..." required>
                    </div>

                    <div class="form-group">
                        <label for="serial">Số Serial:</label>
                        <input type="text" id="serial" class="form-control" placeholder="Nhập số serial trên thẻ..." required>
                    </div>

                    <button type="submit" class="btn-submit">GỬI THẺ NGAY</button>
                </form>
            </div>

            <!-- Bảng Chiết Khấu -->
            <div class="card">
                <div class="card-title">BẢNG PHÍ ĐỔI THẺ CÀO</div>
                <table>
                    <thead>
                        <tr>
                            <th>Nhà mạng</th>
                            <th>10k - 30k</th>
                            <th>50k - 100k</th>
                            <th>200k - 500k</th>
                            <th>Trạng thái</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Viettel</strong></td>
                            <td>16%</td>
                            <td>15%</td>
                            <td>15%</td>
                            <td><span class="badge-success">Hoạt động</span></td>
                        </tr>
                        <tr>
                            <td><strong>Vinaphone</strong></td>
                            <td>17%</td>
                            <td>16%</td>
                            <td>16%</td>
                            <td><span class="badge-success">Hoạt động</span></td>
                        </tr>
                        <tr>
                            <td><strong>Mobifone</strong></td>
                            <td>19%</td>
                            <td>18%</td>
                            <td>18%</td>
                            <td><span class="badge-success">Hoạt động</span></td>
                        </tr>
                        <tr>
                            <td><strong>Zing</strong></td>
                            <td>15%</td>
                            <td>14%</td>
                            <td>14%</td>
                            <td><span class="badge-success">Hoạt động</span></td>
                        </tr>
                        <tr>
                            <td><strong>Garena</strong></td>
                            <td>16%</td>
                            <td>15%</td>
                            <td>15%</td>
                            <td><span class="badge-success">Hoạt động</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Lịch sử giao dịch -->
        <div class="card">
            <div class="card-title">LỊCH SỬ GỬI THẺ GẦN ĐÂY</div>
            <div style="overflow-x: auto;">
                <table id="historyTable">
                    <thead>
                        <tr>
                            <th>Nhà mạng</th>
                            <th>Mệnh giá</th>
                            <th>Thực nhận</th>
                            <th>Mã thẻ</th>
                            <th>Serial</th>
                            <th>Trạng thái</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Viettel</td>
                            <td>100.000 đ</td>
                            <td>85.000 đ</td>
                            <td>319482*******</td>
                            <td>1000482*******</td>
                            <td><span class="badge-success">Thành công</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2026 <strong>doithecaouytin915.com</strong> - Hệ thống đổi thẻ cào sang tiền mặt uy tín, tự động.
    </footer>

    <script>
        document.getElementById('cardForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const telco = document.getElementById('telco').value;
            const amount = parseInt(document.getElementById('amount').value);
            const code = document.getElementById('code').value;
            const serial = document.getElementById('serial').value;

            // Tính tiền thực nhận tạm tính (ví dụ chiết khấu 15%)
            const received = amount * 0.85;

            // Ẩn bớt mã thẻ và serial khi hiển thị
            const maskedCode = code.substring(0, 5) + '*******';
            const maskedSerial = serial.substring(0, 5) + '*******';

            // Thêm dòng mới vào bảng lịch sử
            const tableBody = document.querySelector('#historyTable tbody');
            const newRow = document.createElement('tr');
            newRow.innerHTML = `
                <td>${telco}</td>
                <td>${amount.toLocaleString('vi-VN')} đ</td>
                <td>${received.toLocaleString('vi-VN')} đ</td>
                <td>${maskedCode}</td>
                <td>${maskedSerial}</td>
                <td><span class="badge-pending">Đang xử lý...</span></td>
            `;
            tableBody.prepend(newRow);

            // Reset form
            this.reset();
            alert('Đã gửi thẻ lên hệ thống! Vui lòng chờ vài giây để kiểm tra.');
        });
    </script>

</body>
</html>
