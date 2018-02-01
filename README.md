reactor_physics_playground
==========================
A place to collect input files and analyses for small reactor physics problems

`lwr_activity` branch
---------------------
This branch includes an MCNP6 input file to perform burnup calculation
of a typical LWR fuel pin in a water cell with reflective boundaries.

- Geometry
  - Cylindrical fuel: outer radius of 0.4095 cm, active height of 366 cm. total volume of 192.814 cm3.
  - Gap between fuel and cladding: thickness of 0.0082 cm. total volume of 7.80828 cm3.
  - Cladding: Outer radius of 0.47 cm (0.0523 cm thick), 0.0572 cm thick on top/bottom. total volume of 53.4643 cm3.
  - Water box: Width (pitch) of 1.25 cm. Reflective boundaries on sides, infinite on top/bottom.

- Material
  - Fuel: UO2 at 1000 K. density of 10.5 g/cm3. s(a, b) thermal treatment at 1000 K.
  - Water: H2O at 600 K. density of 0.7 g/cm3. s(a,b) thermal treatment at 600 K.
  - Cladding: Pure Zr at 600 K. density of 6.4 g/cm3.

- Burnup
  - Power: 3411 MWth / 193 assemblies / (17 X 17 - 25) rods = 6.69454e-2 MW
  - Fission product tier: Tier 3 (comprise fission products in ENDF/B-VII.0 that have CINDER90 yield information.)
  - Omitted isotopes: 6014, 7016, 8018, 9018.
  - Days to 50 GWd/MTU
    - Total mass of fuel: 192.814 cm3 X 10.5 g/cm3 = 2024.55 g
    - Total mass of U: 2024.55 g X (238 X 0.97 + 235 X 0.03)/(16 X 2 + 238 X 0.97 + 235 X 0.03) = 1784.52 g
    - D = 5e4 MWd/MTU X 1.78452e-3 MTU / 6.69452e-2 MW = 1332.82 days = 3.65 years