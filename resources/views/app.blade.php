<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link
            href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700,900&display=swap"
            rel="stylesheet"
        />
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">
        <title>\Stuff</title>
    </head>
    <body>
      <div id="root"></div>
      <script src="{{ asset('js/app.js') }}"></script>
    </body>
</html>
