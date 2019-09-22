@extends('layouts.app')

@section ('title','Contact')

@push('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">

@endpush

@section('content')

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    @include('layouts.partial.msg')
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title ">{{$contact->subject}}</h4>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                   <strong>Name: {{$contact->name}}</strong><br>
                                    <b> Email: {{$contact->email}}</b> <br>
                                    <strong> Message:</strong> <br>
                                    <p> {{$contact->message}}</p>
                                    <hr>


                                </div>
                            </div>
                            <a href="{{route('contact.index')}}" class="btn btn-danger"> Back</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

@endsection

@push('scripts')

@endpush
