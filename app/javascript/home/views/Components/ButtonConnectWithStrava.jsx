import React from 'react';
import config from 'react-global-configuration';

import imgConnectWithStrava from './../../assets/img/btn_strava_connectwith_orange.png';

function ButtonConnectWithStrava() {
  const redirectUri = `${location.protocol}//${location.hostname}${location.port ? ':' + location.port : ''}`;
  const authUrl =
      'https://www.strava.com/oauth/authorize?client_id=' +
      config.get('app.stravaApiClientId') +
      '&response_type=code&redirect_uri=' +
      redirectUri +
      config.get('app.redirectUriPath') +
      '&approval_prompt=auto&scope=read_all,profile:read_all,activity:read_all';

  return (
      <a href={authUrl} title="Connect With Strava">
        <img alt="Connect With Strava" src={imgConnectWithStrava} />
      </a>
  );
}

export default ButtonConnectWithStrava;
