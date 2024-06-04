<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>조회 내역</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 800px;
            height: 700px;
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2> ${name} }</h2>
        <table>
            <thead>
                <tr>
                    <th>날짜</th>
                    <th>거래 내용</th>
                    <th>금액</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2024-06-01</td>
                    <td>ATM 인출</td>
                    <td>$100.00</td>
                </tr>
                <tr>
                    <td>2024-05-30</td>
                    <td>온라인 이체</td>
                    <td>$50.00</td>
                </tr>
                <tr>
                    <td>2024-05-28</td>
                    <td>매장 결제</td>
                    <td>$30.00</td>
                </tr>
                <!-- 추가적인 조회 내역은 이 부분에 추가할 수 있습니다. -->
            </tbody>
        </table>
    </div>
</body>
</html>