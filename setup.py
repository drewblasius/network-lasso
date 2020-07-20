from setuptools import find_packages, setup

setup(
    author="Drew Blasius",
    author_email="drewblasius@gmail.com",
    name="network-lasso",
    version="0.1.0",
    packages=find_packages(include=["network_lasso", "network_lasso.*"]),
    license="MIT License",
    long_description=open("README.rst").read(),
)
