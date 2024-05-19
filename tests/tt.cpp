#include <gtest/gtest.h>
#include <iostream>

class Computer {
public:
    virtual void price() = 0;
    virtual void description() = 0;
    virtual ~Computer() {}
};

class Laptop : public Computer {
public:
    void price() override {
        std::cout << "4000$\n";
    }

    void description() override {
        std::cout << "Laptops are mobile, portable and multimedia\n";
    }
};

class Desktop : public Computer {
public:
    void price() override {
        std::cout << "5000$\n";
    }

    void description() override {
        std::cout << "Desktops are fixed\n";
    }
};

class ComputerFactory {
public:
    static Computer* NewComputer(const std::string& type) {
        if (type == "laptop") {
            return new Laptop();
        } else if (type == "desktop") {
            return new Desktop();
        }
        return nullptr;
    }
};

class ComputerMultiFactory {
public:
    Computer* NewMultiLaptop() {
        return new Laptop();
    }

    Computer* NewMultiDesktop() {
        return new Desktop();
    }
};

class ComputerStaticFactory {
public:
    static Computer* NewStaticLaptop() {
        return new Laptop();
    }

    static Computer* NewStaticDesktop() {
        return new Desktop();
    }
};

TEST(ComputerTest, LaptopTest) {
    Laptop laptop;
    testing::internal::CaptureStdout();
    laptop.price();
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "4000$\n");

    testing::internal::CaptureStdout();
    laptop.description();
    output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Laptops are mobile, portable and multimedia\n");
}

TEST(ComputerTest, DesktopTest) {
    Desktop desktop;
    testing::internal::CaptureStdout();
    desktop.price();
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "5000$\n");

    testing::internal::CaptureStdout();
    desktop.description();
    output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Desktops are fixed\n");
}

TEST(FactoryTest, LaptopFactoryTest) {
    Computer* computer = ComputerFactory::NewComputer("laptop");
    Laptop* laptop = dynamic_cast<Laptop*>(computer);
    ASSERT_TRUE(laptop != nullptr);
    delete computer;
}

TEST(FactoryTest, DesktopFactoryTest) {
    Computer* computer = ComputerFactory::NewComputer("desktop");
    Desktop* desktop = dynamic_cast<Desktop*>(computer);
    ASSERT_TRUE(desktop != nullptr);
    delete computer;
}

TEST(MultiFactoryTest, MultiLaptopFactoryTest) {
    ComputerMultiFactory factory;
    Computer* computer = factory.NewMultiLaptop();
    Laptop* laptop = dynamic_cast<Laptop*>(computer);
    ASSERT_TRUE(laptop != nullptr);
    delete computer;
}

TEST(MultiFactoryTest, MultiDesktopFactoryTest) {
    ComputerMultiFactory factory;
    Computer* computer = factory.NewMultiDesktop();
    Desktop* desktop = dynamic_cast<Desktop*>(computer);
    ASSERT_TRUE(desktop != nullptr);
    delete computer;
}

TEST(StaticFactoryTest, StaticLaptopFactoryTest) {
    Computer* computer = ComputerStaticFactory::NewStaticLaptop();
    Laptop* laptop = dynamic_cast<Laptop*>(computer);
    ASSERT_TRUE(laptop != nullptr);
    delete computer;
}

TEST(StaticFactoryTest, StaticDesktopFactoryTest) {
    Computer* computer = ComputerStaticFactory::NewStaticDesktop();
    Desktop* desktop = dynamic_cast<Desktop*>(computer);
    ASSERT_TRUE(desktop != nullptr);
    delete computer;
}

int main(int argc, char* argv[]) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

