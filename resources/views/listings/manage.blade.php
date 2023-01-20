<x-layout>
  <div class="mx-4">
    <x-card class="p-10 max-w-xl mx-auto mt-24">
      
      <header class="text-center">
        <h2 class="text-2xl font-bold uppercase mb-7">
          Manage Gigs
        </h2>
      </header>

        <table class="w-full table-auto rounded-sm">
            <tbody>

              @unless($listings->isEmpty())
              @foreach($listings as $listing)

              <tr class="border-gray-300">
                <td class="px-4 py-8 border-t border-b border-gray-300 text-lg">
                  <a href="/listings/{{ $listing->id }}">
                    {{ $listing->title }}
                  </a>
                </td>
                <td class="px-4 py-8 border-t border-b border-gray-300 text-lg">
                  <a href="/listings/{{ $listing->id }}/edit/" class="text-blue-400 px-6 py-2 rounded-xl">
                    <i class="fa-solid fa-pen-to-square"></i>
                      Edit
                  </a>
                </td>
                <td class="px-4 py-8 border-t border-b border-gray-300 text-lg">
                  <form method="POST" action="/listings/{{ $listing->id }}/">
                    @csrf
                    @method('DELETE') 
                    <button class="text-red-500">
                      <i class="fa-solid fa-trash-can"></i> Delete
                    </button>
                  </form>
                </td>
              </tr>

              @endforeach
              @else

              <tr class="border-gray-300">
                <td class="px-4 py-8 border-t border-b border-gray-300">
                  <p class="text-center">
                    No listing found.
                  </p>
                </td>
              </tr>

              @endunless

            </tbody>
        </table>
    </x-card>
  </div>
</x-layout>