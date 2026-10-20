from setuptools import setup, find_packages

setup(
    name='apiverve_airlinelookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Airline Lookup is an airline codes API that matches IATA codes and airline names to carrier profiles, returning the official title, callsign, registration country, and low-cost status. Paid tiers add three-letter ICAO code lookups and carrier logo URLs.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/airlinelookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
