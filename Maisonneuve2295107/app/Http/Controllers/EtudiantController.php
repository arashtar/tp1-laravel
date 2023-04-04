<?php

namespace App\Http\Controllers;
use App\Models\Ville;
use App\Models\Etudiant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $etudiants = Etudiant::all();

        return view('etudiant.index', ['etudiants' => $etudiants]);
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Etudiant $etudiant)
    {
       
     
        $villes = Ville::all();
        return view('etudiant.create', compact('etudiant', 'villes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        $etudiant = Etudiant::create([
            'nom' => $request->nom,
            'adresse' => $request->adresse,
            'phone' => $request->phone,
            'email' => $request->email,
            'date_de_naissance' => $request->date_de_naissance,
            'ville_id' => $request->ville_id
       ]);

    return redirect(route('etudiant.show', $etudiant->id))->withSuccess('Post inserted');
    }

    

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
        return view('etudiant.show',['etudiant'=>$etudiant]);
       // return view('etudiant.show', compact('etudiant'));
       //return $etudiant;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
    {
        $villes = Ville::all();
        return view('etudiant.edit', ['etudiant'=>$etudiant, 'villes' =>$villes]);
        //return view('etudiant.edit', compact('etudiant', 'villes'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $etudiant->update([
            'nom' => $request->nom,
            'adresse' => $request->adresse,
            'phone' => $request->phone,
            'email' => $request->email,
            'date_de_naissance' => $request->date_de_naissance,
            'ville_id' => $request->ville_id

        ]);

        $etudiant->ville_id = $request->input('ville_id');
        $etudiant->save();
    
        return redirect()->route('etudiant.show', $etudiant)->withSuccess('Etudiant updated successfully.');
    }
    

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        $etudiant->delete();
        return redirect(route('etudiant.index'))->withSuccess('etudiant Deleted');
    }

    // public function query() {
    //     return $etudiant;
    // }

    public function page(){
        $etudiants = Etudiant::select()
        ->paginate(5);

        return view('etudiant.page', ['etudiants' => $etudiants ]);

    }
}
