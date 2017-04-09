<h1>Orders Processed So Far</h1>

<table class="table">
    <tr><th>Order #</th><th>Date/time</th><th>Amount</th></tr>
    {orders}
    <tr>
        <td><a href="/shopping/examine/{number}">{number}</a></td>
        <td>{datetime}</td>
        <td>{total}</td>
    </tr>
    {/orders}
</table>

<a class="btn btn-default" role="button" href="/shopping/neworder">Start a New Order</a>