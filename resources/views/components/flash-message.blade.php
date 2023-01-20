@if(session()->has('message'))
<div x-data="{show: true}" x-init="setTimeout(() => show = false, 3000)" x-show="show" class="fixed top-0 left-1/2 transform -translate-x-1/2 bg-white p-5 text-laravel text-center">
  <p>
    {{ session('message') }}
  </p>
</div>
@endif