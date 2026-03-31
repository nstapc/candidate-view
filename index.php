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

// Map image-based column names to readable text
function get_column_label($field_name) {
    $map = [
        'Name.png' => 'Name',
        'Image.png' => 'Image',
        'BirthplaceandDate.png' => 'Birthplace & Date',
        'HomeState.png' => 'Home State',
        'EducationalGeneralBackground.png' => 'Education',
        'PoliticalBackground.png' => 'Political Background',
        'ReligiousViews.png' => 'Religious Views',
        'KeyStates.png' => 'Key States',
        'MainEndorsement.png' => 'Main Endorsement',
        'MainSupporters.png' => 'Main Supporters',
        'Taxes.png' => 'Taxes',
        'SocialSecurity.png' => 'Social Security',
        'MilitaryDefense.png' => 'Military & Defense',
        'HealthCare.png' => 'Health Care',
        'JobCreationEconomicRecovery.png' => 'Job Creation / Economy',
        'Environment.png' => 'Environment',
        'Energy.png' => 'Energy',
        'Immigration.png' => 'Immigration',
        'GunControl.png' => 'Gun Control',
        'Marriage.png' => 'Marriage',
    ];
    foreach ($map as $key => $label) {
        if (strpos($field_name, $key) !== false) return $label;
    }
    return $field_name;
}

// Build table headers and find Name/Image column indices
$fields = [];
$name_col = null;
$image_col = null;
for ($i = 0; $i < $result->field_count; $i++) {
    $field = $result->fetch_field();
    $fields[] = $field->name;
    if (strpos($field->name, 'Name.png') !== false) $name_col = $i;
    if (strpos($field->name, 'Image.png') !== false) $image_col = $i;
}

// Build table rows
$rows = [];
while ($row = $result->fetch_row()) {
    // If we have both Name and Image columns, merge them
    if ($name_col !== null && $image_col !== null) {
        $row[$name_col] = $row[$name_col] . '<br>' . $row[$image_col];
    }
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
            max-width: 95%;
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
        #data-table {
            font-size: 14px;
        }
        #data-table th {
            text-align: center;
            vertical-align: middle;
            padding: 8px;
            white-space: nowrap;
        }
        #data-table th img {
            max-width: 120px;
            height: auto;
        }
        #data-table td {
            vertical-align: top;
            padding: 8px;
            word-wrap: break-word;
            max-width: 300px;
        }
        #data-table td img {
            max-width: 150px;
            height: auto;
        }
        #data-table td a {
            color: #007bff;
        }
    </style>
</head>
<body>
    <h1>Candidate View: <?php echo htmlspecialchars($table); ?></h1>

    <div id="candidates-table">
        <table id="data-table" class="display" style="width:100%">
            <thead>
                <tr>
                    <?php foreach ($fields as $i => $field): ?>
                        <?php if ($image_col !== null && $i === $image_col) continue; ?>
                        <th><?php echo get_column_label($field); ?></th>
                    <?php endforeach; ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($rows as $row): ?>
                    <tr>
                        <?php foreach ($row as $i => $cell): ?>
                            <?php if ($image_col !== null && $i === $image_col) continue; ?>
                            <td><?php echo $cell; ?></td>
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