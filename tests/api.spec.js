import { test, expect } from '@playwright/test';
import fetch from 'node-fetch';

test('GET /', async () => {
  const response = await fetch('http://backend:3000/');
  expect(response.status).toBe(200);
});
