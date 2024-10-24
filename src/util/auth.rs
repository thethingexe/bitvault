// DISCLAIMER
// (c) 2024-05-27 Mario Stöckl - derived from the original Microbin Project by Daniel Szabo
use actix_web::dev::ServiceRequest;
use actix_web::{error, Error};
use actix_web_httpauth::extractors::basic::BasicAuth;

use crate::args::ARGS;

pub async fn auth_validator(
    req: ServiceRequest,
    credentials: BasicAuth,
) -> Result<ServiceRequest, (Error, ServiceRequest)> {
    // check if username matches
    if credentials.user_id() == ARGS.auth_basic_username.as_ref().unwrap() {
        return match ARGS.auth_basic_password.as_ref() {
            Some(cred_pass) => match credentials.password() {
                None => Err((error::ErrorUnauthorized("Invalid login details."), req)),
                Some(arg_pass) => {
                    if arg_pass == cred_pass {
                        Ok(req)
                    } else {
                        Err((error::ErrorUnauthorized("Invalid login details."), req))
                    }
                }
            },
            None => Ok(req),
        };
    }
    Err((error::ErrorUnauthorized("Invalid login details."), req))
}
