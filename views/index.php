<!doctype html>
<html lang="en" style="height:100%">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8 ">
    <meta name="viewport " content="width=device-width, initial-scale=1 ">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css " rel="stylesheet " integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1 " crossorigin="anonymous ">
    <script type="text/javascript" src="/assets/js/JQuery-3_6_0.js"></script>
    <title>Short URL</title>
</head>

<body class="h-75">

    <div class="container col-lg-12 h-75">
        <div class="row col-lg-8 bg-warning mx-auto h-25">
            <div class="text-center text-success d-flex justify-content-center align-items-center">
                Link shortening service &nbsp;<span class="text-danger"> Short URL</span>
            </div>
        </div>
        <div class="row col-lg-8 mx-auto h-75 mt-5-70">

            <form action="/action/linlk_shortening.php" method="post" id="shortURL">
                <div id="result_send"></div>
                <label for=" inputPassword5 " class="form-label text-center text-success d-flex justify-content-center align-items-center">Add Link</label>
                <input type="url " id="inputUrl " class="form-control " name="LongLink" aria-describedby="urlHelpBlock ">
                <div class="col-lg-12 mx-auto w-100">
                    <button type="submit" class="btn btn-primary mt-5  col-lg-6 mx-auto text-center d-flex justify-content-center align-items-center">Submit</button>
                </div>
                <div id="urlHelpBlock " class="form-text ">

                </div>

            </form>
        </div>
    </div>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js " integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW " crossorigin="anonymous "></script>

    <script type="text/javascript" src="/assets/js/form.js"></script>
</body>

</html>