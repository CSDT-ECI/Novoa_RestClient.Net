﻿using System.Collections;
using System.Collections.Generic;

namespace RestClient.Net.Abstractions
{
    public sealed class RequestHeadersCollection : IHeadersCollection
    {
        #region Fields
        private readonly IDictionary<string, IEnumerable<string>> _dictionary;
        #endregion

        public RequestHeadersCollection(IDictionary<string, IEnumerable<string>> dictionary) => _dictionary = dictionary;

        #region Public Properties
        IEnumerable<string> IHeadersCollection.this[string name] => _dictionary[name];
        public IEnumerable<string> Names => _dictionary.Keys;
        #endregion

        #region Public Methods
        public bool Contains(string name) => _dictionary.ContainsKey(name);

        public IEnumerator<KeyValuePair<string, IEnumerable<string>>> GetEnumerator() => _dictionary.GetEnumerator();

        IEnumerator IEnumerable.GetEnumerator() => _dictionary.GetEnumerator();
        #endregion
    }
}
