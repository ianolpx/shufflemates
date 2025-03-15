#!/bin/bash
# pip install setuptools wheel twine

echo "🔄 Cleaning previous builds..."
rm -rf dist build shufflemates.egg-info

echo "📦 Building package..."
python setup.py sdist bdist_wheel

echo "🚀 Uploading to PyPI..."
twine upload dist/*

echo "✅ Deployment complete!"