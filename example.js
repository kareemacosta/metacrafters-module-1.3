const example = new web3.eth.Contract(abi, address);

example.events.Event1({}, (error, event) => {
    console.log(event.returnValues.message);
});

example.events.Event2({}, (error, event) => {
    console.log(event.returnValues.from);
    console.log(event.returnValues.value);
});

example.events.Event3({}, (error, event) => {
    console.log(event.returnValues.success);
});
