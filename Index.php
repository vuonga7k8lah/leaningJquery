<?php
require_once 'connect.php';
require_once "header.php";
if(isset($_GET['action'])){
    $action=$_GET['action'];
}else{
    $action="home";
}
include 'menu.php';
switch($action){
        case ($action==="DSHC"):
            $data=connect()->query("select * from province ORDER BY _name asc")->fetch_all();
            require_once 'views/views.php';
            break;
        case ($action==="home"):
            require_once 'views/home.php';
            break;   
        case ($action==="Upload"):
            require_once 'views/upload.php';
            break;    
}
require_once "footer.php";

//$data=file_get_contents(scandir(getcwd())[4]);




//
//
///**
// * Sample PHP code for youtube.search.list
// * See instructions for running these code samples locally:
// * https://developers.google.com/explorer-help/guides/code_samples#php
// */
//
//if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
//	throw new Exception(sprintf('Please run "composer require google/apiclient:~2.0" in "%s"', __DIR__));
//}
//require_once __DIR__ . '/vendor/autoload.php';
//
//$client = new Google_Client();
//$client->setApplicationName('API code samples');
//$client->setScopes([
//	'https://www.googleapis.com/auth/youtube.force-ssl',
//]);
//
//// TODO: For this request to work, you must replace
////       "YOUR_CLIENT_SECRET_FILE.json" with a pointer to your
////       client_secret.json file. For more information, see
////       https://cloud.google.com/iam/docs/creating-managing-service-account-keys
//$client->setAuthConfig('YOUR_CLIENT_SECRET_FILE.json');
//$client->setAccessType('offline');
//
//// Request authorization from the user.
//$authUrl = $client->createAuthUrl();
//printf("Open this link in your browser:\n%s\n", $authUrl);
//print('Enter verification code: ');
//$authCode = trim(fgets(STDIN));
//
//// Exchange authorization code for an access token.
//$accessToken = $client->fetchAccessTokenWithAuthCode($authCode);
//$client->setAccessToken($accessToken);
//
//// Define service object for making API requests.
//$service = new Google_Service_YouTube($client);
//
//$queryParams = [
//	'maxResults' => 10,
//	'order'      => 'viewCount',
//	'q'          => 'songs',
//	'type'       => 'video'
//];
//
//$response = $service->search->listSearch('Adata', $queryParams);
//print_r($response);
