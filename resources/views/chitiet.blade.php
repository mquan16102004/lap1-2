<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>chi tiet</h1>
    <p>{{$books->title}}</p>
    <img src="{{$books->thumbnail}}" alt="" >
    <p>{{$books->author}}</p>
    <p>{{$books->publisher}}</p>
    <p>{{$books->publication}}</p>
    <p>{{$books->price}}</p>
    <p>{{$books->quantity}}</p>
</body>
</html>