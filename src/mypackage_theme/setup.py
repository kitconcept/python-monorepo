import setuptools

setuptools.setup(
    name="mypackage_theme",
    version="1.2.0",
    url="https://github.com/borntyping/cookiecutter-pypackage-minimal",

    author="Timo Stollenwerk",
    author_email="stollenwerk@kitconcept.com",

    description="An opinionated, minimal cookiecutter template for Python packages",
    long_description=open('README.rst').read(),

    packages=setuptools.find_packages(),

    install_requires=[],

    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Programming Language :: Python',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
    ],
)
