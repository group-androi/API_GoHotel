<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

$app->get('/users', function (Request $request, Response $response, array $args) {
    $db = $this->db->prepare("SELECT `id_user`, `dob`, `phone`, `gender`, `lat`, `log` FROM `user`");
    $db->execute();
    $citys = $db->fetchAll();
    return $this->response->withJson($citys);
});

 $app->get('/user/[{id}]', function (Request $request, Response $response, array $args) {
    $db = $this->db->prepare("SELECT `id_user`, `dob`, `phone`, `gender`, `lat`, `log` FROM `user` WHERE `id_user` = :id");
    $db->bindParam("id", $args['id_user']);
    $db->execute();
    $book = $db->fetchObject();
    return $this->response->withJson($book);
 });

 $app->post('/login', function (Request $request, Response $response, array $args) {
    $input = $request->getParsedBody();
    $db = $this->db->prepare("SELECT `id_user`, `dob`, `phone`, `gender`, `lat`, `log` FROM `user` WHERE `id_user` like :id AND `password` like MD5(:password)";
    $db->bindParam("id", $input['username']);
    $db->bindParam("password", $input['password']);
    $db->execute();
    $book = $db->fetchObject();
    return $this->response->withJson($book);
 });

 $app->post('/user', function (Request $request, Response $response) {
    $input = $request->getParsedBody();
    $sql = "INSERT INTO `user`(`id_user`, `dob`, `phone`, `password`, `gender`, `lat`, `log`) VALUES (:id,:dateOfBirth,:phone,MD5(:password),:gender,:latitude,:longitude)";
    $db = $this->db->prepare($sql);
    $db->bindParam("id", $input['id']);
    $db->bindParam("dayOfBirthday", $input['birthday']);
    $db->bindParam("phone", $input['phone']);
    $db->bindParam("password", $input['password']);
    $db->bindParam("gender", $input['gender']);
    $db->bindParam("latitude", $input['latitude']);
    $db->bindParam("longitude", $input['longitude']);
    $db->execute();
    $input['id'] = $this->db->lastInsertId();
    return $this->response->withJson($input);
 });

 $app->put('/user/[{id}]', function (Request $request, Response $response, array $args) {
    $input = $request->getParsedBody();
    $sql = "UPDATE `user` SET `dob`=:dob,`phone`=:phone,`password`=:password,`gender`=:gender,`lat`=:latitude,`log`=:longitude WHERE `id_user`=:id";
    $db = $this->db->prepare($sql);
    $db->bindParam("dob", $input['birthday']);
    $db->bindParam("phone", $input['phone']);
    $db->bindParam("password", $input['password']);
    $db->bindParam("gender", $input['gender']);
    $db->bindParam("latitude", $input['latitude']);
    $db->bindParam("longitude", $input['longitude']);
    $db->bindParam("id", $args['id']);
    $db->execute();
    $input['id'] = $args['id'];
    return $this->response->withJson($input);
 });

 $app->delete('/user/[{id}]', function (Request $request, Response $response, array $args) {
    $sth = $this->db->prepare("DELETE FROM user WHERE id_user=:id");
    $sth->bindParam("id", $args['id']);
    $sth->execute();
    return $this->response->withJson();
 });

 $app->put('/userUpLocation/[{id}]', function (Request $request, Response $response, array $args) {
    $input = $request->getParsedBody();
    $sql = "UPDATE `user` SET `lat`=:latitude,`log`=:longitude WHERE `id_user`=:id";
    $db = $this->db->prepare($sql);
    $db->bindParam("latitude", $input['latitude']);
    $db->bindParam("longitude", $input['longitude']);
    $db->bindParam("id", $args['id']);
    $db->execute();
    $input['id'] = $args['id'];
    return $this->response->withJson($input);
 });
 