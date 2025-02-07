#let spreet = plugin("spreet.wasm")

#let decode(data) = {
  if sys.version < version(0, 13, 0) {
    cbor.decode(spreet.decode(data))
  } else {
    cbor(spreet.decode(data))
  }
}

#let file-decode(path) = {
  decode(read(path, encoding: none))
}
