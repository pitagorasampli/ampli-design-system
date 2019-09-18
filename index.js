const StyleDictionary = require('style-dictionary').extend('./config.json');
const { camelCase } = require('lodash');

const isSize = prop => prop.attributes.category === 'size';

StyleDictionary.registerTransform({
  name: 'custom/name/ti/camel',
  type: 'name',
  transformer: (prop, options) => {
    const path = prop.path.slice(1);
    return camelCase([options.prefix].concat(path).join(' '));
  }
});

StyleDictionary.registerTransform({
  name: 'custom/size/number',
  type: 'value',
  matcher: isSize,
  transformer: prop => {
    return new Number(prop.value);
  }
});

StyleDictionary.buildAllPlatforms();
