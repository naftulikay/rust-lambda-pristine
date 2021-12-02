use lambda_runtime::{Context, Error};

use serde_json::Value as JsonValue;

#[tokio::main]
async fn main() -> Result<(), Error> {
    // consume events from lambda, do exactly nothing
    lambda_runtime::run(lambda_runtime::handler_fn(handler)).await
}

async fn handler(_event: JsonValue, _ctx: Context) -> Result<(), Error> {
    Ok(())
}
