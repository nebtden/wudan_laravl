
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>下单</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>

<div class="container">
    <form action="{{ route('order/create') }}" method="POST"  class="form-horizontal">
    {{ csrf_field() }}
        <div class="form-group">
            <label for="phone">手机号码</label>
            <input type="text" class="form-control" id="phone" aria-describedby="phone" placeholder="请输入你的手机号码，便于联系" name="phone">
           {{-- <small id="" class="form-text text-muted">We'll never share your email with anyone else.</small>--}}
        </div>
        <div class="form-group">
            <label for="location">地址</label>
            <input type="text" class="form-control" id="location" placeholder="请输入可联系的详细地址，比如星沙XX网吧">
            <small id="location_help" class="form-text text-muted">请注意，我们暂时只配送店面三公里内区域</small>
        </div>

               <button type="submit" class="btn btn-primary btn">提交</button>

    </form>

</div>


</body>
</html>
