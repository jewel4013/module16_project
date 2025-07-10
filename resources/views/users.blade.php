
@extends('partials.layout')
@section('title', 'Users Page')

@section('mainSection')
    @extends('partials.navbar')
    <!-- Page content-->
    <section class="py-2">
        <div class="container px-5">
            <!-- Contact form-->
            <div class="bg-light rounded-4 py-4 px-4 px-md-5">
                <div class="d-flex justify-content-between align-item-center">
                    <div class="">
                        <h2>Here is all users</h2>
                    </div>
                    <div class="">
                        <a href="{{route('user-create')}}" class="btn btn-primary">Add more user.</a>
                    </div>

                </div>
                <hr>
                {{-- All users showing in this table --}}
                <table class="table table-striped"> 
                    
                    @if ($userData->isEmpty())
                        <p>No data available</p> 
                    @else                   
                        <thead>
                            <tr>
                                <th>Sl</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Mobile</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($userData as $user )
                                <tr>                                    
                                    <td>{{$user->id}}</td>
                                    <td>{{$user->name}}</td>
                                    <td>{{$user->email}}</td>
                                    <td>{{$user->mobile}}</td>
                                </tr>
                            @endforeach 
                        </tbody>

                        
                    @endif
                </table>
                <div class="d-flex justify-content-center">
                    {{ $userData->links() }}
                </div>
            </div>
        </div>
    </section>
    
@endsection


