<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

$app->get('/check/[{name}]', function (Request $request, Response $response, array $args) {
    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
});

require __DIR__ . '/route/city.php';
require __DIR__ . '/route/district.php';
require __DIR__ . '/route/hotel.php';
