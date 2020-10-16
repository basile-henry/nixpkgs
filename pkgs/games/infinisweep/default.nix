{ fetchFromGitHub, haskellPackages, stdenv
}:
with haskellPackages;
mkDerivation {
  pname = "infinisweep";
  version = "0.1.0.0";
  src = fetchFromGitHub {
    owner = "basile-henry";
    repo = "infinisweep";
    rev = "e6d571b3e65fd579df650783c3f698aab59d291e";
    sha256 = "059q710x4kkmmg4q3yyzj7y4rwafkvbz88qnqsicpx4abplpp2wj";
  };
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base hashable ncurses optparse-applicative random strict
  ];
  license = stdenv.lib.licenses.mit;
  description = "Minesweeper on an infinite grid";
  homepage = "https://github.com/basile-henry/infinisweep";
  maintainers = [ stdenv.lib.maintainers.basile-henry ];
}
