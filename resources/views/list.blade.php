<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

<body>
    <div class="container">
        <h1>8 san pham co gia cao nhat </h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Thumbnail</th>
                    <th scope="col">Author</th>
                    <th scope="col">Publisher</th>
                    <th scope="col">Publication</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Category</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($books as $book1)
                <tr>
                    <td>{{$book1->title}}</td>
                    <td><img src="{{$book1->thumbnail}}" alt="" width="120"></td>
                    <td>{{$book1->author}}</td>
                    <td>{{$book1->publisher}}</td>
                    <td>{{$book1->publication}}</td>
                    <td>{{$book1->price}}</td>
                    <td>{{$book1->quantity}}</td>
                    <td>{{$book1->name}}</td>
                    <td><a href="{{route('page.chitiet',$book1->id)}}">
                            <button class="btn btn-primary">Chi tiết</button>
                        </a></td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <h1>8 san pham co gia thap nhat </h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Thumbnail</th>
                    <th scope="col">Author</th>
                    <th scope="col">Publisher</th>
                    <th scope="col">Publication</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Category</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($bookASC as $book1)
                <tr>
                    <td>{{$book1->title}}</td>
                    <td><img src="{{$book1->thumbnail}}" alt="" width="120"></td>
                    <td>{{$book1->author}}</td>
                    <td>{{$book1->publisher}}</td>
                    <td>{{$book1->publication}}</td>
                    <td>{{$book1->price}}</td>
                    <td>{{$book1->quantity}}</td>
                    <td>{{$book1->name}}</td>
                    <td><a href="{{route('page.chitiet',$book1->id)}}">
                            <button class="btn btn-primary">Chi tiết</button>
                        </a></td>
                </tr>
                @endforeach
            </tbody>
        </table>


    </div>
</body>

</html>