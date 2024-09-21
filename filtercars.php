<?php
session_start();
unset($_SESSION['filtered_cars']);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "carsdetails";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$wheeldrive = $_POST['wheeldrive'] ?? '';
$vehicletype = $_POST['vehicletype'] ?? '';
$horsepowerrange = $_POST['horsepowerrange'] ?? '';
$drivingassist = $_POST['drivingassist'] ?? '';
$sql = "SELECT * FROM cars WHERE 1=1";

if (!empty($wheeldrive)) {
    $sql .= " AND `Wheel Drive` = '" . $conn->real_escape_string($wheeldrive) . "'";
}
if (!empty($vehicletype)) {
    $sql .= " AND `Vehicle Type` = '" . $conn->real_escape_string($vehicletype) . "'";
}
if (!empty($horsepowerrange)) {
    $sql .= " AND `Horsepower Range` = '" . $conn->real_escape_string($horsepowerrange) . "'";
}
if (!empty($drivingassist)) {
    $sql .= " AND `Driving Assist` = '" . $conn->real_escape_string($drivingassist) . "'";
}
$result = $conn->query($sql);

if ($result === false) {
    die("Error in SQL query: " . $conn->error);
}
$_SESSION['filtered_cars'] = $result->fetch_all(MYSQLI_ASSOC);
$_SESSION['filters'] = [
    'Wheel Drive' => $wheeldrive,
    'Vehicle Type' => $vehicletype,
    'Horsepower Range' => $horsepowerrange,
    'Driving Assist' => $drivingassist
];
$conn->close();
header("Location: results.php");
exit();
?>