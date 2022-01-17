import { LightningElement, wire,api } from 'lwc';
import getRandomAccs from '@salesforce/apex/RandomAccCreator.getRandomAccs';
//I'm in branch add-on


const columns = [
    {label:'Account Name', fieldName:'Name', type:'Name'},
    {label:'Account Number', fieldName:'AccountName', type:'Text'},
    {label:'Biling Address', fieldName:'BillingAddress', type:'Address'}
];

export default class Accountcomp extends LightningElement {
    @api lab = 'Chan'
    @api da = ''
    @api columns = columns
    @wire(getRandomAccs)
    randAccs({error, data}){
        if(error){
            console.log(error);
        }else{
            this.da = data;
        }
    }
}
