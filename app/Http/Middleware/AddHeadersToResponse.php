<?php

namespace App\Http\Middleware;

use Closure;

class AddHeadersToResponse
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        $response = $next($request);
        $response->headers->set('Expect-CT', 'max-age=604800, enforce');
        $response->headers->set('Feature-Policy', 'geolocation self');

        return $response;
    }
}
