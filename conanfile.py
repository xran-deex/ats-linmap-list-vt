from atsconan import ATSConan

class ATSConan(ATSConan):
    name = "linmap-list-vt"
    version = "0.2"

    def package_info(self):
        super().package_info()
        self.cpp_info.libs = ["linmap-list-vt"]
