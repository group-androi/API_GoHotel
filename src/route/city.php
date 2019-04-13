<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

$app->get('/citys', function (Request $request, Response $response, array $args) {
    $db = $this->db->prepare("SELECT * FROM `city`  ORDER BY name_city");
    $db->execute();
    $citys = $db->fetchAll();
    return $this->response->withJson($citys);
});

 $app->get('/city/[{id}]', function (Request $request, Response $response, array $args) {
    $db = $this->db->prepare("SELECT * FROM city WHERE id_city = :id");
    $db->bindParam("id", $args['id']);
    $db->execute();
    $book = $db->fetchObject();
    return $this->response->withJson($book);
 });

 $app->post('/city', function (Request $request, Response $response) {
    $input = $request->getParsedBody();
    $sql = "INSERT INTO `city`(`name_city`) VALUES (:cityName)";
    $db = $this->db->prepare($sql);
    $db->bindParam("cityName", $input['name']);
    $db->execute();
    $input['id'] = $this->db->lastInsertId();
    return $this->response->withJson($input);
 });

 $app->put('/city/[{id}]', function (Request $request, Response $response, array $args) {
    $input = $request->getParsedBody();
    $sql = "UPDATE `city` SET ,`name_city`= :name WHERE `id_city`=:id";
    $db = $this->db->prepare($sql);
    $db->bindParam("name", $input['city_name']);
    $db->bindParam("id", $args['id']);
    $db->execute();
    $input['id'] = $args['id'];
    return $this->response->withJson($input);
 });

 $app->delete('/city/[{id}]', function (Request $request, Response $response, array $args) {
    $sth = $this->db->prepare("DELETE FROM city WHERE id_city=:id");
    $sth->bindParam("id", $args['id']);
    $sth->execute();
    return $this->response->withJson();
 });
