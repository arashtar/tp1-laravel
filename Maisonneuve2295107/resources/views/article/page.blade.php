@extends('layouts.app')
@section('title', 'Article - Pagination')
@section('content')
    <div class="row">
        <div class="col-12 text-center pt-3">
            <h1 class="display-3 mt-3">
                {{ config('app.name')}}
            </h1>
        </div>
        <hr>
        <div class="col-12">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($articles as $article)
                    <tr>
                        <td>{{ $article->title}}</td>
                        <td>{{ $article->articleHasUser->name}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{$articles}}
        </div>
    </div>
@endsection