<?php
// // $servername = "localhost";
// // $username = "username";
// // $password = "password";
// // $dbname = "reservations_db";
// $db_host ='127.0.0.1';
// $db_user ='root';
// $db_pass ='j7213717';
// $db_name ='reservations';
// $db_port =3306;

// // 創建連接
// $conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

// // 檢查連接
// if ($conn->connect_error) {
//     die("連接失敗: " . $conn->connect_error);
// }

// require __DIR__ . '/db-connect.php';

// $keyword = isset($_GET['keyword']) ? trim($_GET['keyword']) : '';

// $keyword = '';
// if (isset($_POST['keyword'])) {
//     $keyword = $_POST['keyword'];
// }

// $sql = "SELECT * FROM reservations WHERE customer_name LIKE '%$keyword%' OR contact_number LIKE '%$keyword%' OR store LIKE '%$keyword%'";
// $result = $conn->query($sql);
?>

<!-- <!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="UTF-8">
    <title>Keyword Search and Filter</title>
</head>
<body>
    <form method="POST" action="search.php">
        <input type="text" name="keyword" placeholder="Enter Keyword" value="<?php echo htmlspecialchars($keyword); ?>">
        <button type="submit">Search</button>
    </form>

    <table>
        <tr>
            <th>reserve_id</th>
            <th>customer_name</th>
            <th>contact_number</th>
            <th>store</th>
            <th>date</th>
            <th>time</th>
            <th>count</th>
            <th>created_at</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['reserve_id']}</td>
                        <td>{$row['customer_name']}</td>
                        <td>{$row['contact_number']}</td>
                        <td>{$row['store']}</td>
                        <td>{$row['date']}</td>
                        <td>{$row['time']}</td>
                        <td>{$row['count']}</td>
                        <td>{$row['created_at']}</td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='8'>No results found</td></tr>";
        }
        ?>
    </table>
</body>
</html> -->

<?php
// $conn->close();
?>