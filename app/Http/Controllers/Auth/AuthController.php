<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Validator;
use Illuminate\Support\Facades\Auth;
use RahulHaque\AdnSms\Facades\AdnSms;

class AuthController extends Controller
{
    public function create()
    {
    	if (Auth::check()) {
    		return redirect('/');
		}
    	return view('auth.create');
    }

    public function store(Request $request)
    {
    	$input = $request->all();
	    $rules = [
	    	'email' => 'required|numeric|digits_between:11,11',
	    	// 'phone_number' => 'required|numeric|digits_between:11,11',
	    	// The email must be between 11 and 11 digits.
	    ];
	    $messages = [
            'email.required' => 'The Mobile Number field is required.',
            // 'email.unique' => 'The Username already exist.',
            'email.digits_between' => 'The Mobile No. must be 11 digits.',
        ];
	    
    	$validator = Validator::make($input, $rules, $messages);
        if ($validator->fails()) {
        	flash()->error('Something Wrong!');
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }

        $password = rand(1111,9999);

        $exist = User::where('email', $request->email)->first();

        $response = AdnSms::otp($request->email)
            ->message($password . ' is your confirmation code from Motorsheba.')
            ->send();
        // dd($response->json());

        if($response['api_response_code'] == 200){
            if (isset($exist)) {
	            $exist->password = bcrypt($password);
	            $exist->name = $password;
	            $exist->save();
	            flash()->success('OTP sent successfully');
	    		// return redirect('login');
	    		return redirect()->route('login', ['phone_number' => $request->email]);
	        }

	        $regUser = new User;
	        $regUser->email = $request->email;
	        $regUser->password = bcrypt($password);
	        $regUser->name = $password;
	        $regUser->save();
	        flash()->success('OTP Sent Successfully');
	    	// return redirect('login');
	    	return redirect()->route('login', ['phone_number' => $request->email]);
        }else{
            flash()->error('Something Wrong!');
            return redirect()->back();
        }

	        
    }
}
