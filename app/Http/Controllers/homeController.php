<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class homeController extends Controller
{
   public function list(){
      $books = DB::table('books')
      ->select('books.id','title','thumbnail','author','publisher','publication','price','quantity','categories.name')
      ->join('categories','categories.id','books.category_id')
      ->orderBy('price','desc')
      ->limit(8)
      ->get();

      $bookASC =  DB::table('books')
      ->orderBy('price','asc')
      ->select('books.id','title','thumbnail','author','publisher','publication','price','quantity','categories.name')
      ->limit(8)
      ->join('categories','categories.id','books.category_id')
      ->get();
      return view('list',compact('books','bookASC'));
   }
   public function chitiet($id){
        $books = DB::table('books')->where('id',$id)->first();

      //  dd($books);   
        return view('chitiet',compact('books'));
   }

   
}
