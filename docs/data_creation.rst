=================
Create Training Data
=================

We use ufs2arco to generate training, validation, and test datasets.

First, create a recipe.yaml. An example can be found here. Next, run the following:

```
ufs2arco recipe.yaml
```

For further information see the ufs2arco `github <https://ufs2arco.readthedocs.io/en/latest/>`_ or `documentation <https://ufs2arco.readthedocs.io/en/latest/>`_

Helpful quick tips for ufs2arco
------------------

Choosing Dates
~~~~~~~~~~~~~~~~~~~~~~
Update the dates you wish to include in your dataset by changing the below section in your recipe. 
These dates will include all data that you plan to use for training, validation, and testing.
The full dataset will be split into these individual sets later on.

```
start: 2022-01-01T06
end: 2022-12-31T18
freq: 6h
```

Then ensure that you have updated the statistics_period section to match:

```
start: 2022-01-01T06
end: 2022-10-31T18
```

Note: it is best practice to ensure that your statistics period only includes dates you plan to include in your training dataset.
