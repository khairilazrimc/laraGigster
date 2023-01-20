<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ListingController extends Controller
{
    // show all listings
    public function index() {
        return view('listings.index', [
            'listings' => Listing::latest()->simplePaginate(6)
        ]);
    }

    // show filtered listings
    public function filtered() {
        return view('listings.filtered', [
            'listings' => Listing::latest()->filter(request(['tag', 'search']))->get()
        ]);
    }

    // show single listing
    public function show(Listing $listing) {
        return view('listings.show', [
            'listing' => $listing
        ]);
    }

    // show create new listing form
    public function create() {
        return view('listings.create');
    }

    // store new listing
    public function store(Request $request) {
        $formFields = $request->validate([
            'company'       => ['required', Rule::unique('listings', 'company')],
            'title'         => ['required'],
            'location'      => ['required'],
            'email'         => ['required', 'email', Rule::unique('listings', 'email')],
            'website'       => ['required'],
            'tags'          => ['required'],
            'description'   => ['required']
        ]);

        if($request->hasFile('logo')) {
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');
        }

        $formFields['user_id'] = auth()->id();

        Listing::create($formFields);

        return redirect('/')->with('message', 'Listing created successfully.');
    }

    // show edit existing listing form
    public function edit(Listing $listing) {
        return view('listings.edit', ['listing' => $listing]);
    }

    // update existing listing
    public function update(Request $request, Listing $listing) {

        // make sure logged in user is owner
        if($listing->user_id != auth()->id()) {
            abort(403, 'Unauthorized Action');
        }

        $formFields = $request->validate([
            'company' => 'required',
            'title' => 'required',
            'location' => 'required',
            'email' => ['required', 'email'],
            'website' => 'required',
            'tags' => 'required',
            'description' => 'required'
        ]);

        if($request->hasFile('logo')) {
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');
        }

        $listing->update($formFields);

        return redirect('/listings/' . $listing->id . '/')->with('message', 'Gig updated successfully.');
    }

    // destroy listing
    public function destroy(Listing $listing) {
        $listing->delete();
        return redirect('/')->with('message', 'Gig deleted successfully.');
    }

    // manage listings
    public function manage() {
        return view('listings.manage', ['listings' => auth()->user()->listings()->get()]);
    }

}
