with import <nixpkgs> {};
let
  python_data_science = python311.withPackages(ps: with ps; [
    ipykernel
    jupyterlab
    numpy
    scipy
  ]);

  python_machine_learning = python311.withPackages(ps: with ps; [
    pytorch
  ]);

in mkShell {
  packages = [
    python_data_science
    # python_machine_learning
  ];
}
