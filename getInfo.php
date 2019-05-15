﻿<?php
include_once('functions.php');
session_start();
?>
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN''http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>

<head>
    <title>Word Puzzle Maker</title>
    <link rel="icon" href="favico.ico">
    <link rel="stylesheet" href="style.css">
    <style type = "text/css">
        body{
            background: white;
            color: black;
        }

    </style>
<!--    <script src="solutionRectangles.js" type="text/javascript">var rectangles =[];</script>-->
</head>
<body resize="updateCSS()">
<div class="jumbotron" id="jumbos"></div>
<script type="text/javascript">
    var rectangles = [];
    // Browser configs
    var isOpera = !!window.opera || navigator.userAgent.indexOf(' OPR/') >= 0; var isFirefox = typeof InstallTrigger !== 'undefined';
    var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
    var isChrome = !!window.chrome && !isOpera;
    var isIE = /*@cc_on!@*/!!document.documentMode;

    function getPosition(element) {
        var xPosition = 0;
        var yPosition = 0;
        while (element) {
            xPosition += (element.offsetLeft + element.clientLeft);
            yPosition += (element.offsetTop + element.clientTop);
            element = element.offsetParent;
        }
        console.log(' Left: ' + xPosition + ' Top: ' + yPosition);
        return {x: xPosition, y: yPosition};
    }

    function changeCSS(element, elementRef, direction, length) {
        var myElementRef = document.getElementById(elementRef);
        var position = getPosition(document.getElementById(elementRef));
        var myElement = document.getElementById(element);
        document.getElementById(element).style.position = 'absolute';
        document.getElementById(element).style.left = position.x +'px';
        document.getElementById(element).style.top = position.y +'px';
        document.getElementById(element).style.width = length +'px';
        switch (direction) {
            case 0:
                document.getElementById(element).style.visibility = 'hidden';
                break;
            case 1:
                document.getElementById(element).style.msTransform = 'rotate(0deg)'; /* IE 9 */
                document.getElementById(element).style.WebkitTransform = 'rotate(0deg)';
                break;
            case 2:
                document.getElementById(element).style.msTransform = 'rotate(180deg)'; /* IE 9 */
                document.getElementById(element).style.WebkitTransform = 'rotate(180deg)';
                break;
            case 3:
                document.getElementById(element).style.msTransform = 'rotate(90deg)'; /* IE 9 */
                document.getElementById(element).style.WebkitTransform = 'rotate(90deg)';
                break;
            case 4:
                document.getElementById(element).style.msTransform = 'rotate(270deg)'; /* IE 9 */
                document.getElementById(element).style.WebkitTransform = 'rotate(270deg)';
                break;
            case 5:
                document.getElementById(element).style.msTransform = 'rotate(45deg)'; /* IE 9 */
                document.getElementById(element).style.WebkitTransform= 'rotate(45deg)';
                break;
            case 6:
                document.getElementById(element).style.msTransform = 'rotate(225deg)'; /* IE 9 */
                document.getElementById(element).style.WebkitTransform = 'rotate(225deg)';
                break;
            case 7:
                document.getElementById(element).style.msTransform = 'rotate(135deg)'; /* IE 9 */
                document.getElementById(element).style.WebkitTransform = 'rotate(135deg)';
                break;
            case 8:
                document.getElementById(element).style.msTransform = 'rotate(315deg)'; /* IE 9 */
                document.getElementById(element).style.WebkitTransform = 'rotate(315deg)';

        }
    }

    function updateCSS(){
        console.log ('ZOOM');
        for (var i=0; i < rectangles.length; i++) {
            console.log(rectangles[i]);
            var element = rectangles[i][0];
            var elementRef = rectangles[i][1];
            var direction = rectangles[i][2];
            var length = rectangles[i][3];
            var myElementRef = document.getElementById(elementRef);
            var position = getPosition(myElementRef);
            var myElement = document.getElementById(element);

            document.getElementById(element).style.position = 'absolute';
            document.getElementById(element).style.left = position.x +'px';
            document.getElementById(element).style.top = position.y +'px';
            document.getElementById(element).style.width = length +'px';


        }

    }

    function showSolution() {
        document.getElementById('answer').style.visibility = 'visible';
        var els = document.getElementsByClassName('rectangle');
        for (var i = 0, len = els.length; i < len; ++i) {
            els[i].style.visibility = 'visible';
        }
    }
	 function changeTest(obj){
        	var option = document.getElementById(obj).value;
		alert(obj.options[obj.selectedIndex].value);
  }
</script>
<?php
function addRectangle($rectID,$beginCoord,$direction,$length){

    echo "<div class='rectangle' id='" . $rectID . "'></div>";
    echo "<script type='text/javascript' >changeCSS('" . $rectID ."', '". $beginCoord ."', ". $direction .", ". $length .");";
    echo "var rect = ['" . $rectID ."', '" . $beginCoord ."', " . $direction .", " . $length . "];";
    echo "console.log(rect);";
    echo "rectangles.push(rect);</script>";

}
//if($_SESSION['language']=== "Telugu"){
//	$telugu=$_GET['fillerTypes'];
//$hindi=$_GET['Telugu'];
//$Gujarati=$_POST['Gujarati'];
//$Malayalam=$_POST['Malayalam'];
//$English=$_POST['English'];

//echo $telugu . "this". "<br>" ;
//echo $hindi . "that";
//$selected_val = getFiller();  // Storing Selected Value In Variable
//echo "You have selected :" .$telugu . "<br>";  // Displaying Selected Value
//}
//$te= $_GET['language'];
//echo "You have selected language:" .$te . "<br>";  // Displaying Selected Value
//if($te =="Telugu"){
//	$tel=$_POST['fillerTypes'];

//echo "You have selected filler :" .$tel . "<br>";  // Displaying Selected Value
//}

$_SESSION['jsRectangles'] = array();
$_SESSION['fillerTypes'] = $_GET['fillerTypes'];
global $solutionDirections;
$_SESSION['one_char_length'] = 0.5;
$_SESSION['length_multiplier'] = 55;
$_SESSION['length_increaser'] = 1.4;
$_SESSION['length_factor'] = 0.35;
$solutionDirections = array();
mb_internal_encoding("UTF-8");
// Incluce the functions to make the board
include_once("functions.php");
include_once("word_processor.php");
if((empty($_GET['puzzlename']))||(empty($_GET['puzzlewords']))){
    echo "<script type=\"text/javascript\">
            alert('Missing Puzzle Name or Word Bank Please Re-enter -- Close this window and add a name');
            </script>";
   //header("refresh:2;url=../index.html");
    die(0);
}

$_SESSION['puzzlename'] = $_GET['puzzlename'];

$_SESSION['language'] = $_GET['language'];
//var_dump($_SESSION['language']);

//Get the direction the words can be laid out in
// Default all
if((empty($_GET['word-direction']))){
    $_SESSION['direction'] = "all";
}else{
    $_SESSION['direction'] = $_GET['word-direction'];
}

//Get whether the words can share chars or not
// Default yes
if(empty($_GET['sharechars'])){
    $_SESSION['sharechars'] = true;
}else{
    $_SESSION['sharechars'] = $_GET['sharechars'];
}

global $answerPuzzle;
// WORD PUZZLE MAKER
// Generates a word search puzzle based on a word list
// entered by user. User can also specify the size of
// the puzzle and print out an answer key if desired
global $wordList;
$wordList= $_GET['puzzlewords'];



// త ల ్ ల ి
if($_SESSION['language']=== "English"){
$wordList = strtoupper($wordList);}
//get puzzle data from HTML form
$currentWord = explode("\n", $wordList);
//var_dump($currentWord);
$_SESSION['numWords'] = sizeof($currentWord);
$rawWordList = array();
$answerWordList = array();

foreach ($currentWord as $singleWord){
    //take out trailing newline characters
    $singleWord = rtrim($singleWord);
    if($_SESSION['language']=== "English"){
    $singleWord = strtoupper($singleWord);}
    // Remove double instances of words
    if(!in_array($singleWord,$rawWordList)){

        $wordProc = new wordProcessor($singleWord);
        // Get the logical chars for the word
        $logChars = $wordProc->parseToLogicalChars($singleWord,$_SESSION['language']);
        foreach($logChars as $singleChar){
            if($singleChar === " "){
                $singleChar = "";
            }
        }
        // Word List to be pushed into the array for the puzzle -- remove spaces
        array_push($rawWordList,$logChars);
        // Answer word list to be displayed
        array_push($answerWordList,$logChars);
    }
}
//              foreach($answerWordList as $v){
//              echo "the constant is " .  $v[0] . "<br>";
//              }
//foreach($rawWordList as $v){
//              echo "the constant is " .  $v[0] . "<br>";
//              }
global $answerKeyList;

//Answer Coordinates
global $answerCoordinates;
$answerCoordinates= array();


//$answerCoordinates = $answerCoordinates[0];


//Answerboard
global $answerBoard;
$answerBoard = "";

// The answer keys
$answerKeyList = $answerWordList;
$_SESSION['answerKeyList'] = $answerKeyList;
global $currentWord;
$currentWord = $rawWordList;
//check for a word list
if (empty($currentWord)){
    //make default puzzle
    print "Sorry, no data found";
} else {
    $width = $_GET["width"];
    $_SESSION['width'] = $width;
    $height = $_GET["height"];
    $_SESSION['height'] = $height;
    $boardData = array(
        "width" => $width,
        "height" => $height,
        "puzzlewords" => $currentWord
    );
}
//try to get a word list from user input
if (parseList() == TRUE){
    $legalBoard = FALSE;
    //keep trying to build a board until you get a legal result
    while ($legalBoard == FALSE){
        clearBoard();
        $legalBoard = fillBoard();
    } // end while
    //make the answer key
    $key = $board;
   // $keyPuzzle = makeBoard($key);
   // $_SESSION['keypuzzle'] = $keyPuzzle;
    //make the final puzzle
    addFoils();
    $puzzle = makeBoard($board);
    //print out the result page
    printPuzzle();
} // end parsed list if
//foreach($answerCoordinates as $wordCoord){
//    var_dump($wordCoord);
//    echo "\n";
//}
//?>
<script type="text/javascript">console.log(rectangles);</script>
</body>
</html>
