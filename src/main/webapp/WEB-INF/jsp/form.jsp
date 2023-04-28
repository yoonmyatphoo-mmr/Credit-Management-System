<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <title>Document</title>
</head>

<body>
    <div class="card col-md-8 offset-md-2 mt-5">
        <div class="card-header">
            Student Exam Record
        </div>
        <div class="card-body">
            <div class="col-md-6">
                <label for="studentId">Student ID</label>
                <input type="text" name="studentId" id="" class="form-control" placeholder="Enter Student ID...">
                <br>
                <label for="studentName">Student Name</label>
                <input type="text" name="studentName" class="form-control" placeholder="Enter Student Name..." disabled>
                <br>
                <label for="currentYear">Current Year</label>
                <input type="text" name="currentYear" class="form-control" placeholder="Enter Student Current Year..." disabled>
                <br>
                <label for="currentSem">Current Semaster</label>
                <input type="text" name="currentSem" class="form-control" placeholder="Enter Student Current Sem..." id="" disabled>
                <br>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Subject</th>
                            <th>Mark</th>
                            <th>Grade Point</th>
                            <th>Grade Score</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="text" name="subject" class="form-control" id=""></td>
                            <td><input type="number" name="mark" id="" min="0" max="100" class="form-control"></td>
                            <td><input type="number" name="gradePoint" class="form-control" min="0"></td>
                            <td><input type="text" name="gradeScore" class="form-control" id=""></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value="Submit" class="btn btn-dark">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

<!-- Bootstrap JS  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
    crossorigin="anonymous"></script>

</html>