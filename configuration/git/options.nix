{lib, ...}: {
  options.mao.git.userName = lib.mkOption {
    type = lib.types.str;
  };
  options.mao.git.userEmail = lib.mkOption {
    type = lib.types.str;
  };
}
