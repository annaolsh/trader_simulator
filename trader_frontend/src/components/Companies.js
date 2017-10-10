import React, { Component } from 'react';
import { fetchCompanies } from './apiCalls.js'

export default class Companies extends Component {
  constructor(){
    super()
    this.state={
      companies: [],
      companiesKeys: [],
      selectedCompany: ''
    }
  }

  componentDidMount(){
    fetchCompanies()
    .then(data => {
      this.setState({
        companies: data,
        selectedCompany: data[1]
      })
    this.props.handleSelectedCompany(data[1])
    })
  }

  handleSelectedCompany(selectedCompany){
    if(typeof selectedCompany === "string"){
      selectedCompany = this.state.companies.find((company) => company.name === selectedCompany)
    }
    this.props.stopPreviousGame()
    this.props.turnOnLoader()
    this.setState({
      selectedCompany: selectedCompany
    }, this.sendRequest)
  }

  sendRequest(){
    var companies = this.state.companies
    var selectedCompany = this.state.selectedCompany
    this.props.fetchLiveDataForCompany(selectedCompany)
  }

  render(){
    return(
      <div>
        {this.state.companies.map( (company, i) => {
          return(
            <div key={i} className="form-check form-check-inline">
              <label className="form-check-label">
                <input className="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value={company.name} onClick={ (e => this.handleSelectedCompany(e.target.value))}/>
                {` ${company.name} `}
              </label>
            </div>
          )

        })}
      </div>
    )
  }
}

//className="form-check form-check-inline"
