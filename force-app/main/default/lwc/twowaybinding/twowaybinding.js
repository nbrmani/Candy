import { LightningElement , track } from 'lwc';
export default class Twowaybinding extends LightningElement {

  @track name = '';

  handleNameChange(event) {
    this.name = event.target.value;
    
   console.debug('this is demo : '+this.name)
  }
}