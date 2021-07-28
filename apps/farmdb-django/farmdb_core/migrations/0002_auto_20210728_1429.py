# Generated by Django 3.2.5 on 2021-07-28 14:29

import address.models
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('farmdb_core', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='farm',
            name='farm_size_approx',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='field',
            name='farm',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, related_name='fields', to='farmdb_core.farm'),
        ),
        migrations.AlterField(
            model_name='organization',
            name='address',
            field=address.models.AddressField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='address.address'),
        ),
        migrations.AlterField(
            model_name='organization',
            name='description',
            field=models.TextField(blank=True, max_length=2048, null=True),
        ),
        migrations.AlterField(
            model_name='organization',
            name='website',
            field=models.URLField(blank=True, null=True),
        ),
    ]