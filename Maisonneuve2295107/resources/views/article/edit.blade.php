@extends('layouts.app')
@section('title', 'Article - Modifier')
@section('content')
        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-5">
                    Modifier un article
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <form method="post">
                    @csrf
                    @method('put')
                        <div class="card-header">
                            Formulaire
                        </div>
                        <div class="card-body">   
                                <div class="control-group col-12">
                                    <label for="title">Titre du message</label>
                                    <input type="text" id="title" name="title" class="form-control" value="{{ $article->title }}{{ $article->title_fr }}">
                                </div>
                                <div class="control-group col-12">
                                    <label for="message">Message</label>
                                    <textarea class="form-control" id="message" name="body">
                                        {{ $article->body }} {{ $article->body_fr }}
                                    </textarea>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="category">Category</label>
                                    <select id="category" name="categories_id" class="form-control">
                                       <option value="">Choisir une categorie</option>
                                        @foreach($categories as $category)
                                            <option value="{{ $category->id}}"  @if($category->id == $article->categories_id) selected @endif>{{ $category->category}} </option>
                                        @endforeach
                                    </select>
                                </div>
                        </div>
                        <div class="card-footer text-center">
                            <input type="submit" class="btn btn-success">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Modal -->
    <div class="modal" tabindex="-1" role="dialog
@endsection