<?php
/**
 * Candidate View
 *
 * Displays election data from a MySQL database in an interactive table
 * using DataTables (jQuery plugin).
 */

require_once __DIR__ . '/config.php';

$table = 'GOP_primary';

// Connect to database using mysqli
$con = new mysqli($db_config['host'], $db_config['user'], $db_config['pass'], $db_config['name']);
if ($con->connect_error) {
    die('Could not connect: ' . $con->connect_error);
}

// Query the table
$result = $con->query("SELECT * FROM `{$table}`");
if (!$result) {
    die("Query failed: " . $con->error);
}

// Build table headers
$fields = [];
for ($i = 0; $i < $result->field_count; $i++) {
    $field = $result->fetch_field();
    $fields[] = $field->name;
}

// Build table rows
$rows = [];
while ($row = $result->fetch_row()) {
    $rows[] = $row;
}

$result->free();
$con->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Candidate View</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        h1 {
            color: #333;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
        }
        #candidates-table {
            background: white;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <h1>Candidate View: <?php echo htmlspecialchars($table); ?></h1>

    <div id="candidates-table">
        <table id="data-table" class="display" style="width:100%">
            <thead>
                <tr>
                    <?php foreach ($fields as $field): ?>
                        <th><?php echo htmlspecialchars($field); ?></th>
                    <?php endforeach; ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($rows as $row): ?>
                    <tr>
                        <?php foreach ($row as $cell): ?>
                            <td><?php echo htmlspecialchars($cell); ?></td>
                        <?php endforeach; ?>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#data-table').DataTable();
        });
    </script>
</body>
</html>