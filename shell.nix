{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    protobuf
  ];

  PROTOC = "${pkgs.protobuf}/bin/protoc";
  PROTOC_INCLUDE = "${pkgs.protobuf}/include";
}
