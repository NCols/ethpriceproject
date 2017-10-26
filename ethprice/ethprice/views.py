from django.http import HttpResponse
from coinbase.wallet.client import Client

client = Client('yhKYHa8AkQaHXDMc','quspNs86vAvsRtyuGmE3nC5o9Nki2pqP')

def index(request):
    rates = client.get_exchange_rates(currency='ETH')
    eth_rate = rates['rates']['EUR']
    return HttpResponse("1 ETH = %s EUR" % eth_rate)

