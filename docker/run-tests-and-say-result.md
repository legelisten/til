Running of the tests locally could take some time, so I don't want to stare at them running. To know that tests are finished without looking to command line, I run:

```
docker exec -it 2b7596baf89f rake && say "Allright! All tests finished successful" || say "Oh, no! Some tests failed"
```
