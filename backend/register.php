<?php
require 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first_name = trim($_POST['first_name']);
    $last_name = trim($_POST['last_name']);
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $phone = trim($_POST['phone']);
    $username = trim($_POST['username']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    if (!$first_name || !$last_name || !$email || !$phone || !$username || !$password) {
        echo json_encode(["status" => "error", "message" => "All fields are required"]);
        exit();
    }

    if (!$email) {
        echo json_encode(["status" => "error", "message" => "Invalid email format"]);
        exit();
    }

    // Check for duplicate email or username
    $stmt = $conn->prepare("SELECT user_id FROM users WHERE email = ? OR username = ?");
    $stmt->bind_param("ss", $email, $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        echo json_encode(["status" => "error", "message" => "Email or Username already exists"]);
        exit();
    }

    // Insert new user
    $stmt = $conn->prepare("INSERT INTO users (first_name, last_name, email, phone, username, password) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $first_name, $last_name, $email, $phone, $username, $password);
    if ($stmt->execute()) {
        echo json_encode(["status" => "success", "message" => "Registration successful"]);
    } else {
        echo json_encode(["status" => "error", "message" => "Registration failed"]);
    }
    $stmt->close();
}
