<?php 
// Post variables
$post_id = 0;
$isEditingPost = false;
$published = 0;
$title = "";
$post_slug = "";
$body = "";
$featured_image = "";
$post_topic = "";

//post functions//

// get all posts from DB
function getAllPosts()
{
	global $conn;
	
	// Admin can view all posts
	// Author can only view their posts
	if ($_SESSION['user']['role'] == "Admin")
    {
		$sql = "SELECT * FROM posts";
	} elseif ($_SESSION['user']['role'] == "Author") {
		$user_id = $_SESSION['user']['id'];
		$sql = "SELECT * FROM posts WHERE user_id=$user_id";
	}
	$result = mysqli_query($conn, $sql);
	$posts = mysqli_fetch_all($result, MYSQLI_ASSOC);

	$final_posts = array();
	foreach ($posts as $post) {
		$post['author'] = getPostAuthorById($post['user_id']);
		array_push($final_posts, $post);
	}
	return $final_posts;
}

//gets the username for posts
function getPostAuthorById($user_id)
{
	global $conn;
	$sql = "SELECT username FROM users WHERE id=$user_id";
	$result = mysqli_query($conn, $sql);
	if ($result) 
    {
		// return username
		return mysqli_fetch_assoc($result)['username'];
	} else {
		return null;
	}
}

//post actions//

//clicking the create post button
if (isset($_POST['create_post'])) 
{ 
    createPost($_POST); 
}
//clicking the edit post button
if (isset($_GET['edit-post'])) 
{
	$isEditingPost = true;
	$post_id = $_GET['edit-post'];
	editPost($post_id);
}
//clicking the update post button
if (isset($_POST['update_post'])) 
{
	updatePost($_POST);
}
//clicking the delete post button
if (isset($_GET['delete-post'])) 
{
	$post_id = $_GET['delete-post'];
	deletePost($post_id);
}

//post functions//

function createPost($request_values)
	{
		global $conn, $errors, $title, $featured_image, $topic_id, $body, $published;
		$title = esc($request_values['title']);
		$body = htmlentities(esc($request_values['body']));
		if (isset($request_values['topic_id']))
        {
			$topic_id = esc($request_values['topic_id']);
		}
		if (isset($request_values['publish'])) 
        {
			$published = esc($request_values['publish']);
		}
    
		//creates slug, if title is "Something Whatever", return "something-whatever" as slug
		$post_slug = makeSlug($title);
    
		//validates the form
		if (empty($title)) { array_push($errors, "Artikel titel is verplicht"); }
		if (empty($body)) { array_push($errors, "Artikel tekst is verplicht"); }
		if (empty($topic_id)) { array_push($errors, "Artikel onderwerp is verplicht"); }
    
		//gets image name
	  	$featured_image = $_FILES['featured_image']['name'];
	  	if (empty($featured_image)) { array_push($errors, "Image is verplicht"); }
    
	  	//image directory
	  	$target = "../static/images/" . basename($featured_image);
	  	if (!move_uploaded_file($_FILES['featured_image']['tmp_name'], $target)) 
        {
	  		array_push($errors, "Kon geen image uploaden. Controleer file-settings van de server");
	  	}
    
		//ensures that all posts are unique
		$post_check_query = "SELECT * FROM posts WHERE slug='$post_slug' LIMIT 1";
		$result = mysqli_query($conn, $post_check_query);

        //if the post already exists
		if (mysqli_num_rows($result) > 0) 
        { 
			array_push($errors, "Er bestaat al een artikel met die naam");
		}
    
		//creates a post if no errors are found in the form
		if (count($errors) == 0) {
			$query = "INSERT INTO posts (user_id, title, slug, image, body, published, created_at, updated_at) VALUES(1, '$title', '$post_slug', '$featured_image', '$body', $published, now(), now())";
            
            //if the post was succesfully created
			if(mysqli_query($conn, $query))
            { 
				$inserted_post_id = mysqli_insert_id($conn);
                
				//creates relationship between the post and the topic
				$sql = "INSERT INTO post_topic (post_id, topic_id) VALUES($inserted_post_id, $topic_id)";
				mysqli_query($conn, $sql);

				$_SESSION['message'] = "Artikel succesvol gemaakt";
				header('location: posts.php');
				exit(0);
			}
		}
	}

//fetches post from database//
//takes post id as parameter//
//sets post fields on form for editing//

	function editPost($role_id)
	{
		global $conn, $title, $post_slug, $body, $published, $isEditingPost, $post_id;
		$sql = "SELECT * FROM posts WHERE id=$role_id LIMIT 1";
		$result = mysqli_query($conn, $sql);
		$post = mysqli_fetch_assoc($result);
        
		//sets values on the form to be updated
		$title = $post['title'];
		$body = $post['body'];
		$published = $post['published'];
	}

	function updatePost($request_values)
	{
		global $conn, $errors, $post_id, $title, $featured_image, $topic_id, $body, $published;

		$title = esc($request_values['title']);
		$body = esc($request_values['body']);
		$post_id = esc($request_values['post_id']);
		if (isset($request_values['topic_id'])) {
			$topic_id = esc($request_values['topic_id']);
		}
		//creates slug, if title is "Something Whatever", return "something-whatever" as slug
		$post_slug = makeSlug($title);

		if (empty($title)) { array_push($errors, "Artikel titel is verplicht"); }
		if (empty($body)) { array_push($errors, "Artikel tekst is verplicht"); }
        
		//when a new image has been provided
		if (isset($_POST['featured_image'])) 
        {
			//gets the image name
		  	$featured_image = $_FILES['featured_image']['name'];
            
		  	//image directory
		  	$target = "../static/images/" . basename($featured_image);
		  	if (!move_uploaded_file($_FILES['featured_image']['tmp_name'], $target))
            {
		  		array_push($errors, "Kon geen image uploaden. Controleer file-settings van de server");
		  	}
		}

		//registers topic if no errors are found in the form
		if (count($errors) == 0) 
        {
			$query = "UPDATE posts SET title='$title', slug='$post_slug', views=0, image='$featured_image', body='$body', published=$published, updated_at=now() WHERE id=$post_id";
            
			//attaches topic to post in post_topic table//
            
            //if the post was succesfully created
			if(mysqli_query($conn, $query)){ 
				if (isset($topic_id)) {
					$inserted_post_id = mysqli_insert_id($conn);
                    
					//creates the relationship between post and topic
					$sql = "INSERT INTO post_topic (post_id, topic_id) VALUES($inserted_post_id, $topic_id)";
					mysqli_query($conn, $sql);
					$_SESSION['message'] = "Artikel succesvol gemaakt";
					header('location: posts.php');
					exit(0);
				}
			}
			$_SESSION['message'] = "Artikel succesvol aangepast";
			header('location: posts.php');
			exit(0);
		}
	}

	//deletes blog posts
	function deletePost($post_id)
	{
		global $conn;
		$sql = "DELETE FROM posts WHERE id=$post_id";
		if (mysqli_query($conn, $sql)) {
			$_SESSION['message'] = "Artikel succesvol verwijderd";
			header("location: posts.php");
			exit(0);
		}
	}

//if user clicks the publish post button
if (isset($_GET['publish']) || isset($_GET['unpublish'])) 
{
	$message = "";
	if (isset($_GET['publish'])) {
		$message = "Artikel succesvol gepubliceerd";
		$post_id = $_GET['publish'];
	} else if (isset($_GET['unpublish'])) {
		$message = "Artikel Succesvol weggehaald";
		$post_id = $_GET['unpublish'];
	}
	togglePublishPost($post_id, $message);
}

//deletes blog posts
function togglePublishPost($post_id, $message)
{
	global $conn;
	$sql = "UPDATE posts SET published=!published WHERE id=$post_id";
	
	if (mysqli_query($conn, $sql)) {
		$_SESSION['message'] = $message;
		header("location: posts.php");
		exit(0);
	}
}
?>

