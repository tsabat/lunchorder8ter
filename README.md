This is a reference implementation of rails [session handling](http://guides.rubyonrails.org/security.html#sessions).

To set up:

```bash
git clone git@github.com:tsabat/lunchorder8ter.git
cd lunchorder8ter
bundle install
rake db:setup
```

To run:

```bash
bundle exec rails server
```

To see login happen:

* start the server
* navigate to [http://localhost:3000/signup](http://localhost:3000/signup)

You'll see the session cookie created in the Resources tab of chrome:

<img src="https://d1zjcuqflbd5k.cloudfront.net/files/acc_286188/13X0y?response-content-disposition=inline;%20filename=Screen%20Shot%202014-10-28%20at%2014.01.57.png&Expires=1414530183&Signature=NlYjZ7nasyjeWVtVmCxtFBMx5GemNlUBwLcywIGPritoccuXAndkQrvHxqPYbeFXTvvmiNG5ENW86rmp3WGSIuuibRNUczxwvdrLVfI-DVnXx0ZwFVTazljPR-NRvygk2m8Rr7ifNCVZyS5HUcxtM~SzPPcBDCRCaHM93wDiQS8_&Key-Pair-Id=APKAJTEIOJM3LSMN33SA" />
