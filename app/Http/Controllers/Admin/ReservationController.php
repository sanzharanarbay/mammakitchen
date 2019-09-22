<?php

namespace App\Http\Controllers\Admin;
use App\Notifications\ReservationConfirmed;
use App\Reservation;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Notification;

class ReservationController extends Controller
{
    public function index(){
      $reservations = Reservation::all();
      return view('admin.reservation.index',compact('reservations'));
    }
    public function status($id){
    $reservation = Reservation::findOrFail($id);
    $reservation->status = true;
    $reservation->save();
        Notification::route('mail', $reservation->email)
            ->notify(new ReservationConfirmed());
    Toastr::success('Reservation successfully confirmed','Success', ["positionClass" => "toast-top-right"]);
    return redirect()->back();
    }
    public function  destory($id){
     $reservation = Reservation::findOrFail($id);
     $reservation->delete();
        Toastr::success('Reservation successfully deleted','Success', ["positionClass" => "toast-top-right"]);
        return redirect()->back();
    }
}
