@extends('partials.layout')
@section('title', 'Home Page')

@section('mainSection')
    @extends('partials.navbar')



    <!-- Page content-->
    <section class="py-2">
        <div class="container px-5">
            <!-- Contact form-->
            <div class="bg-light rounded-4 py-5 px-4 px-md-5">
                <div class="text-center mb-5">
                    {{-- <div class="feature bg-primary bg-gradient-primary-to-secondary text-white rounded-3 mb-3"><i
                            class="bi bi-envelope"></i></div> --}}
                    <h1 class="fw-bolder">Create a new user</h1>
                    <p class="lead fw-normal text-muted mb-0">Just lika a <b>'Registration'</b></p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6">
                        <form class="row g-3" action="{{route('user-store')}}" method="POST">
                            @csrf
                            <div class="col-md-6">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" name="name" class="form-control" id="name" value="{{old('name')}}">
                                @if ($errors->has('name'))                                    
                                    <span class="text-danger">{{$errors->first('name')}}</span>
                                @endif
                            </div>
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Email</label>
                                <input type="email" name="email" class="form-control" id="inputEmail4" value="{{old('email')}}">
                                @if ($errors->has('email'))                                    
                                    <span class="text-danger">{{$errors->first('email')}}</span>
                                @endif
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Password</label>
                                <input type="password" name="password" class="form-control" id="inputPassword4" value="{{old('password')}}">
                                @if ($errors->has('password'))                                    
                                    <span class="text-danger">{{$errors->first('password')}}</span>
                                @endif
                            </div>
                            <div class="col-md-6">
                                <label for="mobile" class="form-label">Mobile</label>
                                <input type="text" name="mobile" class="form-control" id="mobile" value="{{old('mobile')}}">
                                @if ($errors->has('mobile'))                                    
                                    <span class="text-danger">{{$errors->first('mobile')}}</span>
                                @endif
                            </div>
                            <div class="col-md-4">
                                <label for="inputCity" class="form-label">Someting</label>
                                <input type="text" name="" class="form-control" id="inputCity" disabled>
                            </div>
                            <div class="col-md-4">
                                <label for="inputState" class="form-label">Someting</label>
                                <select id="inputState" name="" class="form-select" disabled>
                                    <option selected>Choose...</option>
                                    <option>...</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="otp" class="form-label">OTP</label>
                                <input type="text" name="otp" class="form-control" id="otp" value="{{old('otp')}}">
                                @if ($errors->has('otp'))                                    
                                    <span class="text-danger">{{$errors->first('otp')}}</span>
                                @endif
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection