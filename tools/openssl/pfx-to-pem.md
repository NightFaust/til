# How to generate a .pem file from a pfx file with OpenSSL

You can use the CLI tool from OpenSSL with the following cmd :
> On windows, you can find it on C:\Program Files\Git\usr\bin if you installed git.
You should add it to your path for ease of use

```bash
openssl pkcs12 -in <filename>.pfx -out <filename>.pem -clcerts
```

* -in filename: This specifies filename of the PKCS#12 file to be parsed. Standard input is used by default.
* -out filename: The filename to write certificates and private keys to, standard output by default. They are all writeen in PEM format.
* -cacerts: only output CA certificates (not client certificates).
* -clcerts: only output client certificates (not CA certificates).
* -nodes: don't encrypt the private keys at all.
* -nokeys: no private keys will be output.

You must provide the .pfx pass, then create and validate a pass for .pem.

> Notes: If none of the `-clcerts`, `-cacerts` or `-nocerts` options are present then all certificates will be output in the order they appear in the input PKCS#12 files. There is no guarantee that the first certificate present is the one corresponding to the private key. Certain software which requires a private key and certificate and assumes the first certificate in the file is the one corresponding to the private key: this may not always be the case. Using the `-clcerts` option will solve this problem by only outputting the certificate corresponding to the private key. If the CA certificates are required then they can be output to a separate file using the `-nokeys` `-cacerts` options to just output CA certificates.