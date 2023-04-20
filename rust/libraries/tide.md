# Tide

> Tide is a minimal and pragmactic Rust web application framework build for rapid development. It comes with a robust set of features that make building async web applications and APIs easier and more fun.
[source](https://docs.rs/tide/latest/tide/)

minimal dependencies : 
```toml
[dependencies]
tide = { version = "0.16.0" }
async-std = { version = "1.12.0", features = ["attributes"] }
serde = { version = "1.0", features = ["derive"] }
```

basic exemple : 

```rust
#[derive(serde::Deserialize)]
struct NameParams {
    pub name: String,
    pub age: u8,
}

#[async_std::main]
async fn main() -> tide::Result<()> {
    let mut app = tide::new();
    app.at("/").get(handle);
    app.listen("127.0.0.1:8000").await?;
    Ok(())
}

async fn handle(req: tide::Request<()>) -> tide::Result<String> {
    let name = req.query::<NameParams>()?.name;
    let age = req.query::<NameParams>()?.age;
    Ok(format!("Hello {}!\nYou are {} years old!", name, age))
}
```
