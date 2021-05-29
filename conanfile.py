from atsconan import ATSConan

class ATSConan(ATSConan):
    name = "linmap-list-vt"
    version = "0.1"
    settings = "os", "compiler", "build_type", "arch"
    options = {"shared": [True, False], "fPIC": [True, False]}
    default_options = {"shared": False, "fPIC": False}

    def package_info(self):
        super().package_info()
        self.cpp_info.libs = ["linmap-list-vt"]
