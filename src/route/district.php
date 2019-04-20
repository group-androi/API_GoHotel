<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

$app->get('/districts', function (Request $request, Response $response, array $args) {
    $db = $this->db->prepare("SELECT * FROM district ORDER BY name_district");
    $db->execute();
    $books = $db->fetchAll();
    return $this->response->withJson($books);
});

$app->post('/districtsAccordingToCityId', function (Request $request, Response $response) {
    $input = $request->getParsedBody();
    $sql = "SELECT * FROM district WHERE city_id = :cityId ORDER BY name_district";
    $db = $this->db->prepare($sql);
    $db->bindParam("cityId", $input['city_id']);
    $db->execute();
    $books = $db->fetchAll();
    return $this->response->withJson($books);
 });

$app->get('/districtsAccordingToCityId/[{city_id}]', function (Request $request, Response $response) {
    $sql = "SELECT * FROM district WHERE city_id = :cityId ORDER BY name_district";
    $db = $this->db->prepare($sql);
    $db->bindParam("cityId", $args['city_id']);
    $db->execute();
    $books = $db->fetchAll();
    return $this->response->withJson($books);
 });

$app->post('/districtsAccordingToCityName', function (Request $request, Response $response) {
    $input = $request->getParsedBody();
    $sql = "SELECT * FROM district WHERE city_id IN (SELECT id_city FROM city WHERE name_city like :cityName) ORDER BY name_district";
    $db = $this->db->prepare($sql);
    $db->bindParam("cityName", $input['city_name']);
    $db->execute();
    $books = $db->fetchAll();
    return $this->response->withJson($books);
 });

$app->get('/districtsAccordingToCityName/[{city_name}]', function (Request $request, Response $response) {
    $sql = "SELECT * FROM district WHERE city_id IN (SELECT id_city FROM city WHERE name_city like :cityName) ORDER BY name_district";
    $db = $this->db->prepare($sql);
    $db->bindParam("cityName", $args['city_name']);
    $db->execute();
    $books = $db->fetchAll();
    return $this->response->withJson($books);
 });

$app->get('/district/[{id}]', function (Request $request, Response $response, array $args) {
    $db = $this->db->prepare("SELECT * FROM district WHERE id_district = :id");
    $db->bindParam("id", $args['id']);
    $db->execute();
    $book = $db->fetchObject();
    return $this->response->withJson($book);
 });

$app->post('/district', function (Request $request, Response $response) {
    $input = $request->getParsedBody();
    $sql = "INSERT INTO `district`(`name_district`, `city_id`) VALUES (:districtName,:cityId)";
    $db = $this->db->prepare($sql);
    $db->bindParam("districtName", $input['name']);
    $db->bindParam("cityId", $input['city_id']);
    $db->execute();
    $input['id'] = $this->db->lastInsertId();
    return $this->response->withJson($input);
 });

$app->put('/district/[{id}]', function (Request $request, Response $response, array $args) {
    $input = $request->getParsedBody();
    $sql = "UPDATE `district` SET `name_district`=:name,`city_id`=:cityId WHERE `id_district`=:id";
    $db = $this->db->prepare($sql);
    $db->bindParam("name", $input['name']);
    $db->bindParam("cityId", $input['city_id']);
    $db->bindParam("id", $args['id']);
    $db->execute();
    $input['id'] = $args['id'];
    return $this->response->withJson($input);
 });

 $app->delete('/district/[{id}]', function (Request $request, Response $response, array $args) {
    $sth = $this->db->prepare("DELETE FROM district WHERE id_district=:id");
    $sth->bindParam("id", $args['id']);
    $sth->execute();
    return $this->response->withJson();
 });
 