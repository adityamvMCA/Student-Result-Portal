<?php
error_reporting(0);
include 'DBController.php';
$db_handle = new DBController();
$productResult = $db_handle->runQuery(" SELECT tblresultreport.Class, tblresultreport.RollNo, tblresultreport.StudentName, tblresultreport.Percentage
FROM tblresultreport

");

if (isset($_POST["export"])) {
    $filename = "Export_excel.xls";
    header("Content-Type: application/vnd.ms-excel");
    header("Content-Disposition: attachment; filename=\"$filename\"");
    $isPrintHeader = false;
    if (! empty($productResult)) {
        foreach ($productResult as $row) {
            if (! $isPrintHeader) {
                echo implode("\t", array_keys($row)) . "\n";
                $isPrintHeader = true;
            }
            echo implode("\t", array_values($row)) . "\n";
        }
    }
    exit();
}
?>
<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="report.css"</link>
</head>
<div id="table-container">
    <table id="tab">
        <thead>
            
            <tr>
                <table>
                <th>Class</th>
                <th>RollNo</th>
                <th>StudentName</th>
                <th>Percentage</th>
            </table>
                <!-- <th width="20%">Average Rating</th> -->

            </tr>
        </thead>
        <tbody>
 
            <?php
            $query = $db_handle->runQuery("SELECT tblresultreport.Class, tblresultreport.RollNo, tblresultreport.StudentName, tblresultreport.Percentage
FROM tblresultreport

");
            if (! empty($productResult)) {
                foreach ($productResult as $key => $value) {
                    ?>
                 
                     <tr>
                        <table>
                <td><?php echo $productResult[$key]["Class"]; ?></td>
                <td><?php echo $productResult[$key]["RollNo"]; ?></td>
                <td><?php echo $productResult[$key]["StudentName"]; ?></td>
                <td><?php echo $productResult[$key]["Percentage"]; ?></td>
            </table>
            
               
            </tr>
             <?php
                }
            }
            ?>
      </tbody>
    </table>

    <div class="btn">
        <form action="" method="post">
            <button type="submit" id="btnExport" name='export'
                value="Export to Excel" class="btn btn-info">Export to
                excel</button>
        </form>
    </div>
</div>
