# Example proto

This is an example protocol buffers repository for [python microservice template](https://github.com/sivakov512/python-microservice-template)

## How to compile directly

### Python
```bash
# if you want only proto messages
protoc -I. --python-out=. proto/**/*.proto

# if you want to compile some grpc too
find . -name "*.proto" | xargs -I {} python -m grpc_tools.protoc -I . --python_out=. --grpc_python_out=. {}
```

## How to compile when using as proto git submodule

### Python
```bash
# if you want only proto messages
protoc -Iproto --python-out=. proto/**/*.proto

# if you want to compile some grpc too
find . -name "*.proto" | xargs -I {} python -m grpc_tools.protoc -Iproto --python_out=. --grpc_python_out=. {}
```

### Rust
[tonic-build](https://docs.rs/tonic-build) example:
```rust
fn main() -> Result<(), Box<dyn std::error::Error>> {
    tonic_build::configure().format(false).compile(
        &["proto/proto/services/hello_world/service.proto"],
        &["proto/"],
    )?;
    Ok(())
}
```
