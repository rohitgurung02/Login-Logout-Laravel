<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/style.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
    
        <div class="login-system pt-4">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-md-5">
                <div class="login-content">
                  <h2 class="text-center color-info">Login</h2>

                @if($message = Session::get('error'))
                  <div class="alert alert-danger">
                    {{ $message }}
                  </div>
                @endif

                  <form action="{{ route('authenticate') }}" method="POST">
                    @csrf

                    <div class="mb-3">
                      <label for="name" class="form-label">Name</label>
                      <input type="text" class="form-control" name="name">
                      <span>@error('name') {{ $message }} @enderror</span>
                    </div>
                    <div class="mb-3">
                      <label for="" class="form-label">Password</label>
                      <input type="text" class="form-control" name="password">
                      <span>@error('password') {{ $message }} @enderror</span>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                </form>
                </div>
              </div>
            </div>
          </div>
        </div>

  </body>
</html>