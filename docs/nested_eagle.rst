=================
Nested Eagle
=================

Provide brief overview of Nested-Eagle

Insert image of nested domain...

Training Data
------------------

Datasets:
- GFS convservatively regridded to 1-degree
- HRRR conservatively regridded to 15-km 

Time period:
- Training dataset: 2015-02-01T06 to 2023-01-31T18
- Validation dataset: 2023-02-01T06 to 2024-01-31T18

Variables:
- Prognostic: gh, u, v, w, t, q, sp, u10, v10, t2m, t_surface, sh2
- Diagnostic: u80, v80, accum_tp (use fhr 6)
- Forcing: lsm, orog, cos_latitude, sin_latitude, cos_longitude, sin_longitude, cos_julian_day, sin_julian_day, cos_local_time, sin_local_time, insolation
- Levels: 100, 150, 200, 250, 300, 400, 500, 600, 700, 850, 925, 1000

Model Architecture
------------------

- Encoder
    - GraphTransformer
- Processor
    - Transformer with 512 channels and a window size of 4320
- Decoder
    - GraphTransformer

Graph:
- Encoder-decoder only
