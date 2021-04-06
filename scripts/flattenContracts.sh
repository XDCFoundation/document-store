npx sol-merger -a _me -c -p SPDXLicenseRemovePlugin "./contracts/*.sol" flattened_contracts

slither flattened_contracts --exclude-informational --exclude-low --exclude-optimization 2> >(tee slither.txt)
