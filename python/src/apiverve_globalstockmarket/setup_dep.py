from setuptools import setup, find_packages

setup(
    name='apiverve_globalstockmarket',
    version='1.1.13',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Global Stock Market is a tool for comparing stock market performance across 36 countries. It returns a normalized share price index (2015=100) from OECD data, allowing you to compare market growth between countries over time.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/globalstockmarket?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
