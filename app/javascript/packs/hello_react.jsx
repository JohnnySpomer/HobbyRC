import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'


{/* <li>
  Veiw the 
  <%= link_to prod.description, prod %>
  page.
</li> */}

const Hello = props => {
  let array = [];

  for (let i = 0; i < props.name.length; i++){
    let image = null;

    if (props.name[i].image.url != null) {
      image = props.name[i].image.url.toString()
    }

    array.push(
      <li>{ props.name[i].name }</li>,
      <p>View the { props.name[i].description }</p>,
      // <img src={image} />
    )
  }
  return array
}

Hello.defaultProps = {
  name: 'David'
}

Hello.propTypes = {
  name: PropTypes.array
}


document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('productsData')
  const data = JSON.parse(node.getAttribute('data'))
  ReactDOM.render(
    <Hello name={data} />,
    document.body.appendChild(document.createElement('div')),
  )
})