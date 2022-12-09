navigator.geolocation.getCurrentPosition(function onSuccess(position) {
       loadLocalContent(position);
       })
