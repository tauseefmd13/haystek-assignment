<?php
require 'database.php';

$type = $_GET['type'] ?? '';

if ($type == "products_with_category_supplier") {
    $sql = "SELECT p.product_name, c.category_name, s.supplier_name 
            FROM products p 
            JOIN categories c ON p.category_id = c.category_id 
            JOIN suppliers s ON p.supplier_id = s.supplier_id";
} elseif ($type == "products_with_prices") {
    $sql = "SELECT p.product_name, COALESCE(pr.price, 'No Price') AS price 
            FROM products p 
            LEFT JOIN prices pr ON p.product_id = pr.product_id";
} elseif ($type == "products_with_category_supplier_price") {
    $sql = "SELECT p.product_name, c.category_name, s.supplier_name, pr.price 
            FROM products p 
            JOIN categories c ON p.category_id = c.category_id 
            JOIN suppliers s ON p.supplier_id = s.supplier_id 
            JOIN prices pr ON p.product_id = pr.product_id";
} elseif ($type == "total_products_avg_price_per_supplier") {
    $sql = "SELECT s.supplier_name, COUNT(p.product_id) AS total_products, 
                   ROUND(AVG(pr.price), 2) AS average_price
            FROM suppliers s
            LEFT JOIN products p ON s.supplier_id = p.supplier_id
            LEFT JOIN prices pr ON p.product_id = pr.product_id
            GROUP BY s.supplier_id";
} else {
    echo json_encode(["error" => "Invalid request"]);
    exit();
}

$result = $conn->query($sql);
$data = [];

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

// Format data for DataTables
$response = [
    "draw" => intval($_GET['draw'] ?? 1),
    "recordsTotal" => count($data),
    "recordsFiltered" => count($data),
    "data" => $data
];

echo json_encode($response);
