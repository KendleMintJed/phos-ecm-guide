{pkgs, ...}: {
  languages.python = {
    enable = true;
    package = pkgs.python3.withPackages (ps:
      with ps; [
        mkdocs-material
      ]);
  };

  processes.mkdocs.exec = "mkdocs serve";
}
