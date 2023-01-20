<!-- Hero -->
<section
    class="relative h-72 bg-laravel flex flex-col justify-center align-center text-center space-y-4 mb-4"
>
    <div
        class="absolute top-0 left-0 w-full h-full opacity-10 bg-no-repeat bg-center"
        style="background-image: url('{{ asset('images/laravel-logo.png') }}')"
    ></div>

    <div class="z-10">
        <h1 class="text-6xl font-bold uppercase text-white">
            Lara<span class="text-black">Gigster</span>
        </h1>
        <p class="text-2xl text-gray-200 font-bold my-4">
            Search Laravel Jobs & Projects
        </p>
        <div>
            <p class="inline-block text-white py-1 px-2 rounded-xl italic mt-2">
                
                @unless(request('search', request('tag')) == "" or request('search', request('tag')) == " ")
                
                Showing gig/s that contains the word "<b>{{ request('search', request('tag')) }}</b>"
                
                @else
                
                Showing all gigs

                @endunless
            </p>
        </div>
    </div>
</section>