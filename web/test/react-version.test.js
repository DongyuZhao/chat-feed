import test from 'node:test';
import assert from 'node:assert/strict';
import React from 'react';

const [major] = React.version.split('.');

test('uses React 19', () => {
  assert.equal(major, '19');
});
