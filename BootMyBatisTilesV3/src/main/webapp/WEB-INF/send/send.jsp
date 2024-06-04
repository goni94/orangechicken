<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body *{
            font-family: 'Jua';
        }
    .mb-3 {
        position: relative;
        left: 350px;
        width: 50%;
        top: 60px;
    }

    .mb-6 {
        position: relative;
        left: 350px;
        width: 50%;
        top: 100px;
    }

    .btn{
        position: relative;
        left: 600px;
        top: 110px;
    }
    
    
    </style>
</head>
<body>
     <div class="container">
       <h1 class="text-center mb-4">송금</h1>      
        <form action="./send1" method="post">
              <div class="mb-3">
                <label for="amount" class="form-label">송금할금액</label>
                <input type="number" class="form-control" id="amount" name="amount" placeholder="금액을 입력하세요" required>
                <br>
                <input type="number" class="form-control" id="account" name=account placeholder="계좌를 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-primary">송금 확인</button>

        </form>
    <script>
document.addEventListener('DOMContentLoaded', (event) => {
    const buttons = document.querySelectorAll('.btn');
    
    buttons.forEach(button => {
        button.addEventListener('click', (event) => {
            const bankName = event.target.getAttribute('data-bank');
            console.log(bankName); // This will log the bank name to the console
            sendBankNameToController(bankName);
        });
    });
});

function sendBankNameToController(bankName) {
	console.log("bankName="+bankName);
    fetch('/send/saveBank', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ "bank": bankName })
    })
    .then(response => response.json())
    .then(data => {
        console.log('Success:', data);
    })
    .catch((error) => {
        console.error('Error:', error);
    });
}
</script>
    </div>
</body>
</html>