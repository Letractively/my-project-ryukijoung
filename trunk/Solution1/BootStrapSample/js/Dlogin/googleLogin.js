var clientId = '817227218817.apps.googleusercontent.com';
var apiKey = 'AIzaSyDLPGrb0VrsVSaqhPERqfL_RbVrDn8rvzc';
var scopes = 'https://www.googleapis.com/auth/plus.me';
var google = false;


// Use a button to handle authentication the first time.
function handleClientLoad() {
    gapi.client.setApiKey(apiKey);
    checkAuth();
    //var x = setTimeout(checkAuth, 1000);
}

function checkAuth() {
    gapi.auth.authorize({ client_id: clientId, scope: scopes, immediate: true }, handleAuthResult);
}


function handleAuthResult(authResult) {

    if (authResult && !authResult.error) {
        makeApiCall();
    } 
}

function handleAuthClick(event) {
    //startWait();
    gapi.auth.authorize({ client_id: clientId, scope: scopes, immediate: false }, handleAuthResult);

    return false;
}

// Load the API and make an API call.  Display the results on the screen.
function makeApiCall() {
    gapi.client.load('plus', 'v1', function () {
        var request = gapi.client.plus.people.get({
            'userId': 'me'
        });

        request.execute(function (resp) {
            var info = resp.id;
            info += '\n' + resp.nickname;
            info += '\n' + resp.occupation;
            info += '\n' + resp.skills;
            info += '\n' + resp.birthday;
            info += '\n' + resp.gender;
            info += '\n' + resp.emails;
            info += '\n' + resp.objectType;
            info += '\n' + resp.displayName;
            info += '\n' + resp.name;
            info += '\n' + resp.tagline;
            info += '\n' + resp.braggingRights;
            info += '\n' + resp.aboutMe;
            info += '\n' + resp.currentLocation;
            info += '\n' + resp.relationshipStatus;
            info += '\n' + resp.url;

            alert(info);
            //Do Stuff
            //You have access to user id, name, display name, gender, emails, etc.
            //For more info visit https://developers.google.com/+/api/latest/people#resource
        });
    });
}

$(function () {
    var authorizeButton = document.getElementById('googlelogin');
    authorizeButton.onclick = handleAuthClick;
})