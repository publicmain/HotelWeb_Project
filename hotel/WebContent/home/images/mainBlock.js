(function() {
  "use strict";
  var $, Backbone, CheckinCity, CheckinCityHotFixedView, CheckinCityHotView, CheckinCityModel, CheckinCitySuggestView, CheckinCityViewBase, PhotoSlider, TrackCompatibleMode, _, _func, _n, _stor, _vars;

  _ = this['_'];

  $ = this['jQuery'] || this['Zepto'];

  Backbone = this['Backbone'];

  this.N = this.ndoo || (this.ndoo = {});

  _n = this.ndoo;

  _vars = _n.vars;

  _func = _n.func;

  _stor = _n.storage;


  /*[ui.checkoutdate]{{{ */

  _n.block('ui.checkinDate', {
    maxCheckinDays: 60,
    convertDate: function(date) {
      var dateMatch;
      dateMatch = date.match(/^(\d{2,4})-(\d{1,2})-(\d{1,2})$/);
      return date = new Date(new Number(dateMatch[1]), new Number(dateMatch[2]) - 1, new Number(dateMatch[3]));
    },
    dateAddDay: function(date, add) {
      var dateObj;
      if (typeof date === 'string') {
        dateObj = this.convertDate(date);
      } else {
        dateObj = date;
      }
      return new Date(dateObj.getFullYear(), dateObj.getMonth(), dateObj.getDate() + add);
    },
    datepickerCheckDate: function(startDate, endDate) {
      var _self, absToMaxData, checkin, checkinMatch, checkout, currDate, fenge, frommaxDate, fromminDate, newcheckout, newcheckoutday, newcheckoutmonth, newcheckoutyear, tomaxDate, tominDate;
      _self = this;
      checkin = startDate.val();
      checkout = endDate.val();
      fromminDate = new Date();
      currDate = $(startDate).data('date');
      if (currDate) {
        fromminDate = _self.convertDate(currDate);
      }
      frommaxDate = _self.dateAddDay(fromminDate, 89);
      absToMaxData = _self.dateAddDay(fromminDate, 90);
      tominDate = _self.dateAddDay(fromminDate, 1);
      tomaxDate = _self.dateAddDay(fromminDate, _self.maxCheckinDays);
      if (checkin) {
        checkinMatch = checkin.match(/^(\d{2,4})-(\d{1,2})-(\d{1,2})$/);
        if (checkinMatch && checkinMatch.length) {
          tominDate = _self.dateAddDay(checkin, 1);
          tomaxDate = _self.dateAddDay(tominDate, _self.maxCheckinDays - 1);
        }
      }
      if (tomaxDate > absToMaxData) {
        tomaxDate = absToMaxData;
      }
      startDate.datepicker({
        numberOfMonths: 2,
        defaultDate: checkin,
        minDate: fromminDate,
        maxDate: frommaxDate,
        constrainInput: true,
        dateFormat: 'yy-mm-dd',
        showOn: 'button',
        buttonText: +checkinMatch[3],
        beforeShow: function(input, inst) {
          var iptOffset, timer;
          _n.trigger('clearActiveClassName', '.city,.checkOutDate');
          timer = null;
          iptOffset = $(this).siblings('button').offset();
          clearTimeout(timer);
          if ($(this).parents('.container').hasClass('newIndex')) {
            timer = setTimeout(function() {
              return inst.dpDiv.css({
                top: iptOffset.top + 83,
                left: iptOffset.left
              });
            }, 1);
          } else {
            timer = setTimeout(function() {
              return inst.dpDiv.css({
                top: iptOffset.top + 130,
                left: iptOffset.left
              });
            }, 1);
          }
          _n.trigger('hideCheckinCity');
          _self.checkindateDom.addClass('active');
          return _n.trigger('searchBindScroll', 'date');
        },
        onSelect: function(selectedDate) {
          var tomaxDate;
          var dateObj;
          $(endDate).datepicker('option', 'minDate', _self.dateAddDay(selectedDate, 1));
          tomaxDate = _self.dateAddDay(selectedDate, _self.maxCheckinDays);
          if (tomaxDate > absToMaxData) {
            tomaxDate = absToMaxData;
          }
          $(endDate).datepicker('option', 'maxDate', tomaxDate);
          dateObj = _self.convertDate(selectedDate);
          if ($(this).parents('.container').hasClass('newIndex')) {
            $(this).data('select', 'selected').siblings('button').text(selectedDate).parent().next('.month').text((dateObj.getMonth() + 1) + '月');
          } else {
            $(this).data('select', 'selected').siblings('button').text(dateObj.getDate()).parent().next('.month').text((dateObj.getMonth() + 1) + '月');
          }
        },
        onClose: function() {
          _n.trigger('clearActiveClassName');
          if ($(this).data('select') === 'selected') {
            $(endDate).next('.ui-datepicker-trigger').trigger('click');
            $(this).data('select', '');
          }
        }
      });
      endDate.datepicker({
        numberOfMonths: 2,
        minDate: tominDate,
        maxDate: tomaxDate,
        dateFormat: 'yy-mm-dd',
        constrainInput: true,
        showOn: 'button',
        buttonText: tominDate.getDate(),
        beforeShow: function(input, inst) {
          var _endDate, dateObj, iptOffset, timer;
          _endDate = $(input).val();
          dateObj = _self.convertDate(_endDate);
          _n.trigger('clearActiveClassName', '.city,.checkInDte');
          timer = null;
          iptOffset = $(this).siblings('button').text(dateObj.getDate()).offset();
          $(this).parent().next('.month').text((dateObj.getMonth() + 1) + '月');
          clearTimeout(timer);
          if ($(this).parents('.container').hasClass('newIndex')) {
            $(this).siblings('button').text(_endDate);
            timer = setTimeout(function() {
              return inst.dpDiv.css({
                top: iptOffset.top + 83,
                left: iptOffset.left
              });
            }, 1);
          } else {
            timer = setTimeout(function() {
              return inst.dpDiv.css({
                top: iptOffset.top + 130,
                left: iptOffset.left
              });
            }, 1);
          }
          _n.trigger('hideCheckinCity');
          _self.checkoutdateDom.addClass('active');
          return _n.trigger('searchBindScroll', 'date');
        },
        onSelect: function(selectedDate) {
          var dateObj;
          dateObj = _self.convertDate(selectedDate);
          if ($(this).parents('.container').hasClass('newIndex')) {
            return $(this).siblings('button').text(selectedDate).parent().next('.month').text((dateObj.getMonth() + 1) + '月');
          } else {
            return $(this).siblings('button').text(dateObj.getDate()).parent().next('.month').text((dateObj.getMonth() + 1) + '月');
          }
        },
        onClose: function() {
          _n.trigger('clearActiveClassName');
          return _n.trigger('checkoutdataChoice');
        }
      });
      if ($(startDate).parents('.container').hasClass('newIndex')) {
        startDate.datepicker('option', 'buttonText', checkin);
      }
      if ($(endDate).parents('.container').hasClass('newIndex')) {
        newcheckoutyear = tominDate.getFullYear();
        newcheckoutmonth = tominDate.getMonth() + 1 < 10 ? '0' + (tominDate.getMonth() + 1) : tominDate.getMonth() + 1;
        newcheckoutday = tominDate.getDate() < 10 ? '0' + tominDate.getDate() : tominDate.getDate();
        fenge = '-';
        newcheckout = newcheckoutyear + fenge + newcheckoutmonth + fenge + newcheckoutday;
        endDate.datepicker('option', 'buttonText', newcheckout);
      }
    },
    themes: function(brand) {
      var themeColor;
      themeColor = {
        xiyue: '60163e',
        manxin: '430098',
        quanji: '392e2c',
        xingcheng: '001f5b',
        hanting: '008fd0',
        ibis: 'e31d1a',
        elan: 'e63c2f',
        haiyou: '94c751',
        ibisstyles: '6ab023',
        novotel: '20255f',
        mercure: '5e2265',
        grandMercure: '7a6440',
        citigo: 'a10218',
        juzishuijing: '262537'
      };
      return $('<style>.ui-datepicker .ui-state-active{background-color:#' + themeColor[brand] + '!important;}</style>').appendTo($('head'));
    },
    depend: 'jquery.datepicker',
    init: function(elem, params) {
      var $elem, end, start;
      params = _func.formatUrlParam(params);
      params.brand && this.themes(params.brand);
      $elem = $(elem);
      this.checkindateDom = $elem.find('.checkInDate');
      this.checkoutdateDom = $elem.find('.checkOutDate');
      params.brand && (this.brand = params.brand);
      start = $elem.find('.checkindate');
      end = $elem.find('.checkoutdate');
      this.datepickerCheckDate(start, end);
    }
  });


  /*}}} */


  /*[ui.checkinCity]{{{ */

  CheckinCityModel = Backbone.Model.extend({
    defaults: {
      cityList: [],
      cityListOversea: [],
      groupCityList: null,
      groupCityListOversea: null,
      suggest: {}
    },

    /*[syncCityList] 同步城市列表{{{ */
    syncCityList: function(cityType) {
      var _self, juziOption;
      if (cityType == null) {
        cityType = '';
      }
      _self = this;
      juziOption = '';
      if (_vars.getCityListOption) {
        if (_vars.getCityListOption.data.HotelStyleList === '14,16') {
          juziOption = {
            "data": {
              "HotelStyleList": "16"
            }
          };
        }
        if (_vars.getCityListOption.data.HotelStyleList === '8,27') {
          juziOption = {
            "data": {
              "HotelStyleList": "27"
            }
          };
        }
      }
      if (cityType) {
        if (_vars.getCityListOption) {
          if (_vars.getCityListOption.data.HotelStyleList === 9) {
            _vars.getCityListOption.data.HotelStyleList = '513';
          }
        }
      }
      _func.getAjaxData(_vars['get' + cityType + 'CityListUrl'], function(xhr, status) {
        var data;
        if (_func.checkSuccessStatus(xhr.status)) {
          if (xhr.responseJSON) {
            data = xhr.responseJSON;
          } else if (xhr.responseText) {
            data = $.parseJSON(xhr.responseText);
          }
          if (!data) {
            data = {};
          }
          if (data.CityList && data.CityList.length) {
            _self.set('hotCityList' + cityType, data.HotCityList);
            _self.set('cityList' + cityType, data.CityList);
          } else {
            _self.trigger('NoCityList', cityType);
          }
        }
      }, juziOption ? juziOption : _vars.getCityListOption);
    },

    /*}}} */

    /*[getHotGroupCityList] 获取热门城市列表{{{ */
    getHotGroupCityList: function(cityType) {
      var hotCityList, hotGroupCityList;
      if (cityType == null) {
        cityType = '';
      }
      hotCityList = this.get('hotCityList' + cityType);
      if (!hotCityList || !hotCityList.length) {
        return false;
      }
      hotGroupCityList = [];
      hotGroupCityList.push({
        char: '',
        city: hotCityList
      });
      return hotGroupCityList;
    },

    /*}}} */

    /*[getGroupCityList] 获取城市分组后的数据{{{ */
    getGroupCityList: function(cityType) {
      var char, charCode, charGroup, cityList, groupCityList, groupData, groupIndex, hotGroupCityList, j;
      if (cityType == null) {
        cityType = '';
      }
      groupCityList = this.get('groupCityList' + cityType);
      if (!groupCityList) {
        cityList = this.get('cityList' + cityType);
        if (!cityList.length) {
          return false;
        }
        groupCityList = {
          cityList: []
        };
        charGroup = _.groupBy(cityList, 'Group');
        groupIndex = 0;
        groupData = [];
        for (charCode = j = 65; j <= 90; charCode = ++j) {
          char = String.fromCharCode(charCode);
          if (charGroup[char]) {
            if (!groupData[groupIndex]) {
              groupData[groupIndex] = {
                index: '',
                citys: []
              };
            }
            groupData[groupIndex]['index'] += char;
            groupData[groupIndex]['citys'].push({
              char: char,
              city: charGroup[char]
            });
            if (groupData[groupIndex]['citys'].length >= 4) {
              groupIndex++;
            }
          }
        }
        hotGroupCityList = this.getHotGroupCityList(cityType);
        if (hotGroupCityList.length) {
          groupData.unshift({
            index: '热门',
            citys: hotGroupCityList
          });
        }
        groupCityList.cityList = groupData;
        this.set('groupCityList' + cityType, groupCityList);
        return groupCityList;
      } else {
        return groupCityList;
      }
    },

    /*}}} */

    /*[getCityById] 根据id查找城市{{{ */
    getCityById: function(id, cityType) {
      var cityList, ret;
      if (cityType == null) {
        cityType = '';
      }
      cityList = this.get('cityList' + cityType);
      if (!_.isArray(id)) {
        ret = _.findWhere(cityList, {
          CityID: id
        });
      } else {
        ret = _.filter(cityList, function(city) {
          var i, j, len;
          for (j = 0, len = id.length; j < len; j++) {
            i = id[j];
            if (i === city.CityID) {
              return city;
            }
          }
        });
      }
      return ret;
    },

    /*}}} */

    /*[getCityByName] 根据名称查换城市{{{ */
    getCityByName: function(name, cityType) {
      var cityList, ret;
      if (cityType == null) {
        cityType = '';
      }
      cityList = this.get('cityList' + cityType);
      if (!_.isArray(name)) {
        ret = _.findWhere(cityList, {
          CityName: name
        });
      } else {
        ret = _.filter(cityList, function(city) {
          var j, len, n;
          for (j = 0, len = name.length; j < len; j++) {
            n = name[j];
            if (n === city.CityName) {
              return city;
            }
          }
        });
      }
      return ret;
    },

    /*}}} */

    /*[getCityUnionBy] 根据指定属性去重{{{ */
    getCityUnionBy: function(citys, attr) {
      var temp;
      temp = {};
      return _.filter(citys, function(city, index) {
        if (!temp['key_' + city[attr]]) {
          temp['key_' + city[attr]] = true;
          return city;
        }
      });
    },

    /*}}} */

    /*[suggestFilter] 搜索过滤 {{{ */
    suggestFilter: function(value, type, dataSource) {
      var city, cityList, index, isChar, j, k, l, len, len1, len2, ret;
      ret = [];
      isChar = value.match(/^[a-zA-Z]+$/);
      cityList = this.get('cityList');
      if (dataSource === 'fixed') {
        cityList = cityList.concat(this.get('cityListOversea'));
      }
      if (type === 'short' && isChar) {
        for (index = j = 0, len = cityList.length; j < len; index = ++j) {
          city = cityList[index];
          if (city.CityNameZhLetterInitial && city.CityNameZhLetterInitial.toUpperCase().indexOf(value.toUpperCase()) === 0) {
            ret.push(city);
          }
        }
      } else if (type === 'start') {
        for (index = k = 0, len1 = cityList.length; k < len1; index = ++k) {
          city = cityList[index];
          if (city.CityName && city.CityName.indexOf(value) === 0) {
            ret.push(city);
            continue;
          }
          if (isChar && city.CityNameZhSpell && city.CityNameZhSpell.toUpperCase().indexOf(value.toUpperCase()) === 0) {
            ret.push(city);
          }
        }
      } else if (type === 'any') {
        for (index = l = 0, len2 = cityList.length; l < len2; index = ++l) {
          city = cityList[index];
          if (city.CityName && city.CityName.indexOf(value) > 0) {
            ret.push(city);
            continue;
          }
          if (isChar && city.CityNameZhSpell && city.CityNameZhSpell.toUpperCase().indexOf(value.toUpperCase()) > 0) {
            ret.push(city);
          }
        }
      }
      if (ret.length) {
        ret = _.sortBy(ret, 'CityHotelCount').reverse();
      }
      return ret;
    },

    /*}}} */

    /*[searchSuggest] 搜索建议{{{ */
    searchSuggest: function(value, dataSource) {
      var anyMatch, citys, shortMatch, startMatch;
      citys = [];
      shortMatch = this.suggestFilter(value, 'short', dataSource);
      startMatch = this.suggestFilter(value, 'start', dataSource);
      anyMatch = this.suggestFilter(value, 'any', dataSource);
      citys = citys.concat(shortMatch, startMatch, anyMatch);
      citys = this.getCityUnionBy(citys, 'CityID');
      citys = citys.slice(0, 10);
      this.set('suggest', {
        search: value,
        citys: citys
      });
      this.trigger('updateSuggest');
    }

    /*}}} */
  });

  CheckinCityViewBase = Backbone.View.extend({
    hide: function() {
      if (this.$el && this.$el.length) {
        this.$el.hide();
      }
      return this.isShow = false;
    },

    /*根据当前元素设置城市 */
    setCityByEl: function(elem) {
      var $elem;
      $elem = $(elem);
      this.setCity($elem.data('cityId'), $elem.data('cityName'), $elem.data('citySource'));
    },

    /*根据当前元素设置城市 */
    setCity: function(cityId, cityName, citySource) {
      var $input;
      $input = this.$input;
      $input.data('cityId', cityId);
      $input.data('cityName', cityName);
      $input.data('citySource', citySource);
      return $input.val(cityName);
    }
  });

  CheckinCitySuggestView = CheckinCityViewBase.extend({
    setSelect: function(type) {
      var $curr, $next, $prev;
      $curr = this.$('.active');
      if (type === 'down') {
        $next = $curr.parent().next();
        if ($next.length) {
          $curr.removeClass('active');
          $next.find('a').addClass('active');
        } else {
          $curr.removeClass('active');
          $curr.parents('.list').find('a').first().addClass('active');
        }
      } else if (type === 'up') {
        $prev = $curr.parent().prev();
        if ($prev.length) {
          $curr.removeClass('active');
          $prev.find('a').addClass('active');
        } else {
          $curr.removeClass('active');
          $curr.parents('.list').find('a').last().addClass('active');
        }
      }
    },
    setCityByActive: function() {
      var $active;
      if (!this.$el.is(':visible')) {
        return false;
      }
      $active = this.$('.active');
      this.setCityByEl($active);
      this.hide();
    },
    render: function(data) {
      var $html, html;
      html = this.template(data);
      $html = $(html);
      $html.appendTo(this.$inputbox);
      this.el = this.$el = $html;
      this.suggestlist = this.el.find('.list li');
      this.delegateEvents();
    },
    update: function(data) {
      var html;
      html = this.template(data);
      this.$el.html($(html).html());
      this.suggestlist = this.el.find('.list li');
    },
    show: function(data) {
      if (this.$el.length) {
        this.update(data);
      } else {
        this.render(data);
      }
      return this.$el.show();
    },
    clickHandler: function(e) {
      var elem;
      elem = e.currentTarget;
      return this.setCityByEl(elem);
    },
    enterHandler: function(e) {
      var $self;
      $self = $(e.currentTarget);
      if (!$self.hasClass('active')) {
        $self.parents('.list').find('.active').removeClass('active');
        $self.addClass('active');
      }
    },
    events: {
      'click .sitem': 'clickHandler',
      'mouseenter .sitem': 'enterHandler'
    },
    updateSuggest: function() {
      var data;
      data = this.model.get('suggest');
      this.show(data);
    },
    constructor: function(option) {
      if (option) {
        _.extend(this, option);
      }
      this.listenTo(this.model, 'updateSuggest', this.updateSuggest);
      this.template = _func.getTemplate('CommonCheckinCitySuggestTemplate');
    }
  });

  CheckinCityHotView = CheckinCityViewBase.extend({
    hasData: false,
    isShow: false,
    dataChanged: function() {
      var hotbookcitys, hotbookhtml, hotcitylist;
      if (this.model.get('cityList').length > 0) {
        this.hasData = true;
        this.render();
        hotbookcitys = $('.hotBookCitys');
        if (hotbookcitys) {
          hotcitylist = this.model.get('hotCityList');
          if (hotcitylist.length > 0) {
            if ($('a', hotbookcitys).length > 0) {
              $('a', hotbookcitys).remove();
            }
            hotbookhtml = '';
            _.each(hotcitylist, function(hotcity, index) {
              hotbookhtml += '<a class="pure-u" href="' + _vars.HotelListUrl + '/city/' + hotcity.CityNameZhSpell.toLowerCase() + '">' + hotcity.CityName + '酒店预订</a>';
            });
            $(hotbookhtml).appendTo(hotbookcitys);
          }
        }
      }
    },
    render: function(type) {
      var groupCityList, html;
      if (this.hasData || type === 'noCity') {
        groupCityList = this.model.getGroupCityList();
        _.extend(groupCityList, {
          isShow: this.isShow
        });
        html = this.template(groupCityList);
        if (html) {
          html.replace(/\s+/g, '');
          if (this.$el && this.$el.length) {
            this.$el.remove();
          }
          this.el = this.$el = $(html);
          this.$el.appendTo(this.$inputbox);
          if (this.hasData) {
            this.$input.attr('readonly', null);
          }
          this.delegateEvents();
        }
      } else if (type === 'loading') {
        html = _func.getTemplate('CommonCheckinCityLoading')({
          loadUrl: _vars.ImgUrlPrefix + 'loading_80x34.gif'
        });
        this.el = this.$el = $(html);
        this.el.appendTo(this.$inputbox);
      }
    },
    show: function() {
      this.isShow = true;
      if (this.$el.length) {
        this.$el.show();
      } else if (this.hasData) {
        this.render();
      } else {
        this.render('loading');
      }
      _n.trigger('searchBindScroll', 'city', this.$el.outerHeight());
    },
    renderLessTwoCityTip: function() {
      this.undelegateEvents();
      return this.render('noCity');
    },
    clickHandler: function(e) {
      return false;
    },
    linkClickhandler: function(e) {
      var $self, $tabcontainer, $tabs, index;
      $self = $(e.currentTarget);
      $tabs = $self.parents('.tabs');
      $tabcontainer = $tabs.siblings('.tabcontainer');
      if (!$self.hasClass('active')) {
        index = $self.index();
        $self.siblings('.active').removeClass('active');
        $self.addClass('active');
        $tabcontainer.find('.tabcontent').hide().eq(index).show();
        _n.trigger('searchBindScroll', 'city', this.$el.outerHeight());
      }
    },
    cityClickhandler: function(e) {
      var elem;
      elem = e.currentTarget;
      this.setCityByEl(elem);
      this.hide();
    },
    events: {
      'click': 'clickHandler',
      'click a.link': 'linkClickhandler',
      'click .citylist a': 'cityClickhandler'
    },
    constructor: function(option) {
      if (option) {
        _.extend(this, option);
      }
      this.listenTo(this.model, 'change:cityList', this.dataChanged);
      this.listenTo(this.model, 'NoCityList', this.renderLessTwoCityTip);
      this.template = _func.getTemplate('CommonCheckinCityTemplate');
    }
  });


  /*[CheckinCityHotFixedView] 国内国际混合显示 {{{ */

  CheckinCityHotFixedView = CheckinCityHotView.extend({
    parseCityHotHtml: function(html) {
      return '<div class="Mcheckin_city ' + (this.isShow ? '' : 'Ldn') + '"><ul class="city_source"><li class="active item" data-source="0"><a href="javascript:;">国 内</a></li><li class="item" data-source="1"><a href="javascript:;">国 际</a></ul>' + html + '</div>';
    },
    events: {
      'click': 'clickHandler',
      'click a.link': 'linkClickhandler',
      'click .citylist a': 'cityClickhandler',
      'click .city_source .item': 'citySourceClickHandler'
    },
    syncCityOversea: function() {
      return this.model.syncCityList('Oversea');
    },
    renderCityOversea: function() {
      this.hasData = true;
      return this.renderCity('Oversea');
    },
    renderLessTwoCityTip: function(cityType) {
      return this.renderCity(cityType);
    },
    renderCity: function(cityType) {
      var groupCityList, html;
      if (cityType == null) {
        cityType = '';
      }
      groupCityList = this.model.getGroupCityList(cityType) || {};
      html = this.template(groupCityList);
      this.$el.find('.city_source_item').eq(cityType && 1 || 0).replaceWith(html);
      this.$el.find('.city_source_item').eq(this.showItemIndex).show();
      return this.hasData && this.$input.attr('readonly', null);
    },
    render: function(type) {
      var html;
      if (type === 'loading') {
        html = this.template({
          loadUrl: _vars.ImgUrlPrefix + 'loading_80x34.gif'
        });
        html += this.template({
          loadUrl: _vars.ImgUrlPrefix + 'loading_80x34.gif'
        });
        html = this.parseCityHotHtml(html);
        this.el = this.$el = $(html);
        this.$el.find('.city_source_item').eq(0).show();
        this.el.appendTo(this.$inputbox);
        return this.delegateEvents();
      } else {
        this.renderCity();
        return this.renderCityOversea();
      }
    },
    citySourceClickHandler: function(e) {
      var $current, _self, sourceInt, sourceItems;
      _self = this;
      $current = $(e.currentTarget);
      if ($current.hasClass('active')) {
        return;
      }
      sourceInt = $current.data('source');
      $current.addClass('active').siblings('.item').removeClass('active');
      sourceItems = this.$el.find('.city_source_item');
      if (+sourceInt === 0) {
        sourceItems.eq(0).show();
        sourceItems.eq(1).hide();
      } else {
        sourceItems.eq(1).show();
        sourceItems.eq(0).hide();
      }
      return this.showItemIndex = +sourceInt;
    },
    constructor: function(option) {
      this.showItemIndex = 0;
      if (option) {
        _.extend(this, option);
      }
      this.listenTo(this.model, 'change:cityList', this.dataChanged);
      this.listenTo(this.model, 'NoCityList', this.renderLessTwoCityTip);
      this.template = _func.getTemplate('CommonCheckinCityFixedTemplate');
      this.listenTo(this.model, 'change:cityListOversea', this.renderCityOversea);
      this.render('loading');
    }
  });


  /*}}} */

  CheckinCity = CheckinCityViewBase.extend({
    focusHandler: function(e) {
      this.$el.addClass('active focus');
      this.checkinCitySuggest.hide();
      this.checkinCityHot.show();
    },
    clickHandler: function(e) {
      var $self;
      $self = $(this);
      this.checkinCitySuggest.hide();
      return this.checkinCityHot.show();
    },
    inputHandler: function(e) {
      var $self, cityName, value;
      $self = $(e.currentTarget);
      value = $self.val();
      value = value.replace(/\<|\>/g, '');
      cityName = $self.data('cityName');
      if (value === cityName && value !== '') {
        return;
      }
      if (cityName && value !== cityName) {
        $self.data('cityName', '');
        $self.data('cityId', '');
      }
      if (value !== '') {
        this.checkinCityHot.hide();
        this.model.searchSuggest(value, this.params.view);
      } else {
        this.checkinCitySuggest.hide();
        this.checkinCityHot.show();
      }
    },
    keydownHandler: function(e) {
      var keyCode;
      keyCode = e.keyCode;
      if (keyCode === 38) {
        this.checkinCitySuggest.setSelect('up');
        e.preventDefault();
        e.stopPropagation();
      } else if (keyCode === 40) {
        this.checkinCitySuggest.setSelect('down');
        e.preventDefault();
        e.stopPropagation();
      } else if (keyCode === 13) {
        this.checkinCitySuggest.setCityByActive();
        e.stopPropagation();
      }
    },
    blurHandler: function(e) {
      var $self, city, cityId, cityName, value;
      $self = this.$input;
      value = $self.val();
      if (value.length) {
        value = value.replace(/^\s|\s$/g, '');
      }
      if (!value) {
        return;
      }
      cityName = $self.data('cityName');
      cityId = $self.data('cityId');
      if (value !== cityName || !cityId) {
        city = this.model.getCityByName(value);
        if (city && city.CityID) {
          this.setCity(city.CityID, city.CityName, city.CitySource);
        }
      }
    },
    initCity: function() {
      var city, cityId;
      cityId = this.$input.data('cityId');
      if (cityId) {
        city = this.model.getCityById(cityId.toString());
        if (city && city.CityID) {
          this.setCity(city.CityID, city.CityName, city.CitySource);
        }
      }
      this.hasInitCity = true;
    },
    events: {
      'focus .checkincity': 'focusHandler',
      'click .checkincity': 'clickHandler',
      'input .checkincity': 'inputHandler',
      'keydown .checkincity': 'keydownHandler',
      'blur .checkincity': 'blurHandler'
    },

    /*constructor {{{ */
    constructor: function(option) {
      var $inputbox, __CheckinCityHotView, _self;
      if (option) {
        _.extend(this, option);
      }
      this.delegateEvents();
      _self = this;
      if ($('html').hasClass('ltie9')) {
        this.$el.find('.checkincity').on('propertychange', function(e) {
          if (_self.hasInitCity) {
            return _self.inputHandler(e);
          }
        });
      }
      this.$input = this.$('.checkincity');
      $inputbox = this.$('.inputbox');
      __CheckinCityHotView = option.params.view === 'fixed' ? CheckinCityHotFixedView : CheckinCityHotView;
      this.checkinCityHot = new __CheckinCityHotView({
        el: this.$('.Mcheckin_city'),
        $el: this.$('.Mcheckin_city'),
        model: this.model,
        $input: this.$input,
        $inputbox: $inputbox
      });
      this.checkinCitySuggest = new CheckinCitySuggestView({
        el: this.$('.Mcheckin_citysuggest'),
        $el: this.$('.Mcheckin_citysuggest'),
        model: this.model,
        $input: this.$input,
        $inputbox: $inputbox
      });

      /*关闭 */
      $('body').on('click', (function(_this) {
        return function(e) {
          if (!_this.$input.filter(e.target || e.srcElement).length) {
            _this.checkinCityHot.hide();
            _this.checkinCitySuggest.hide();
            return _n.trigger('clearActiveClassName', '.city');
          }
        };
      })(this));
      _n.on('hideCheckinCity', _.bind(function() {
        this.checkinCityHot.hide();
        this.checkinCitySuggest.hide();
        return _n.trigger('clearActiveClassName');
      }, this));

      /*设置默认城市id */
      this.listenTo(this.model, 'change:cityList', this.initCity);
      this.model.syncCityList();
      if (option.params.view === 'fixed') {
        this.viewModel = 'fixed';
        this.model.syncCityList('Oversea');
      }
    }

    /*}}} */
  });

  CheckinCity.init = function(elem, params) {
    params = _func.formatUrlParam(params);
    new CheckinCity({
      el: elem,
      $el: $(elem),
      params: params,
      model: new CheckinCityModel(params)
    });
  };

  _n.block('ui.checkinCity', CheckinCity.init);


  /*}}} */


  /*[ui/wideScreenAdapter] ie下宽窄屏适配{{{ */

  _n.block('ui.wideScreen', function(elem, params) {
    var $elem, $html, resizeHandler, screenWidth;
    $elem = $(elem);
    screenWidth = screen.availWidth;
    if (screenWidth < 1200) {
      return;
    }
    $html = $('html');
    if (!$html.hasClass('ltie9')) {
      return;
    }
    resizeHandler = function(e) {
      var width;
      width = document.body.clientWidth;
      if (width < 1200) {
        $('html').addClass('Cslimscreen');
      } else {
        $('html').removeClass('Cslimscreen');
      }
    };
    resizeHandler();
    $(window).on('resize', resizeHandler);
  });


  /*}}} */


  /*[图片轮播]{{{ */


  /*[构造函数]{{{ */

  PhotoSlider = function(elem, params) {
    var conf, direction;
    this.elem = $(elem);
    direction = -1;
    this.slider = this.elem.find('.sliders');
    this.items = this.slider.find('.item');
    this.maxIdx = this.items.length - 1;
    this.curIdx = this.items.filter('.active').index();
    this.lastIdx = null;
    conf = _func.formatUrlParam(params);
    this.conf = {
      auto: conf.auto,
      type: conf.type,
      control: conf.control === 'false' ? false : true,
      time: conf.time || 3000
    };
    this.timer = null;
    if (this.conf.control) {
      this.createControl();
      this.controlEvent();
    }
    if (this.conf.auto) {
      this.play(direction, 'auto');
      this.mouseevents(direction);
    }
    this.stepevents();
    return this;
  };


  /*}}} */


  /*[动画帧]{{{ */

  PhotoSlider.prototype.step = function(direction, type) {
    var _d1, _d2, _left, _sleft, ms, self;
    ms = type === 'auto' ? 1000 : 500;
    self = this;
    _d1 = direction === 1 ? '-' : '+';
    _d2 = direction === 1 ? '+' : '-';
    if (this.conf.type === 'zIndex') {
      this.items.eq(self.curIdx).css({
        zIndex: 2,
        left: _d1 + '100%'
      }).stop(true, true).animate({
        left: 0
      }, ms);
      if (self.conf.control) {
        self.controlItem.filter('.active').removeClass('active');
        self.controlItem.eq(self.curIdx).addClass('active');
      }
      if (this.lastIdx >= 0) {
        return this.items.eq(this.lastIdx).css({
          zIndex: 3
        }).stop(true, true).animate({
          left: _d2 + '100%'
        }, ms, function() {
          return $(this).css('zIndex', -1);
        });
      }
    } else if (this.conf.type === 'float') {
      _sleft = parseFloat(self.slider.css('left')) - 6;
      if (_sleft <= -_n.vars.lWidth && direction < 0) {
        self.slider.css('left', 6);
      }
      if (direction > 0 && _sleft >= 0) {
        self.slider.css({
          left: -_n.vars.lWidth + 6
        });
      }
      _left = Math.floor((parseFloat(self.slider.css('left')) - 6) / _n.vars.iWidth) * _n.vars.iWidth + 6;
      return self.slider.stop(true, true).animate({
        left: _left + direction * _n.vars.iWidth
      }, ms);
    }
  };


  /*}}} */


  /*[停止动画]{{{ */

  PhotoSlider.prototype.stop = function() {
    var self;
    self = this;
    return clearInterval(self.timer);
  };


  /*}}} */


  /*[开启动画]{{{ */

  PhotoSlider.prototype.play = function(direction, type) {
    var self;
    self = this;
    self.stop();
    return self.timer = setInterval(function() {
      return self._step(direction, type);
    }, self.conf.time);
  };


  /*}}} */


  /*[鼠标事件]{{{ */

  PhotoSlider.prototype.mouseevents = function(direction) {
    var self;
    self = this;
    this.elem.on('mouseenter', function() {
      return self.stop();
    });
    return this.elem.on('mouseleave', function() {
      return self.play(direction, 'auto');
    });
  };


  /*}}} */


  /*[生成控制圆点]{{{ */

  PhotoSlider.prototype.createControl = function() {
    var $tabcontrol, controls, i;
    controls = [];
    i = 0;
    while (i <= this.maxIdx) {
      controls.push('<li' + (i === this.curIdx ? ' class="active"' : '') + '></li>');
      i++;
    }
    $tabcontrol = $('<ul class="tabcontrol">' + controls.join('') + '<ul>').appendTo(this.elem);
    return this.controlItem = $tabcontrol.find('li');
  };


  /*}}} */


  /*[label点击切换事件]{{{ */

  PhotoSlider.prototype.controlEvent = function() {
    var self;
    self = this;
    return $('.tabcontrol').on('click', 'li', function(e) {
      var direction, index;
      index = $(this).index();
      if (index === self.curIdx) {
        return;
      }
      direction = index > self.curIdx ? -1 : 1;
      self.lastIdx = self.curIdx;
      self.curIdx = index;
      return self.step(direction, 'control');
    });
  };


  /*}}} */


  /*[动画帧内部函数]{{{ */

  PhotoSlider.prototype._step = function(direction, type) {
    this.lastIdx = this.curIdx;
    if (direction < 0) {
      this.curIdx--;
      this.curIdx < 0 && (this.curIdx = this.maxIdx);
    } else {
      this.curIdx++;
      this.curIdx > this.maxIdx && (this.curIdx = 0);
    }
    return this.step(direction, type);
  };


  /*}}} */


  /*[动画控制函数]{{{ */

  PhotoSlider.prototype.stepevents = function() {
    var self;
    self = this;
    return this.elem.on('click', '.label', function() {
      return _.bind(self._step, self, +$(this).data('step'), 'label')();
    });
  };


  /*}}} */

  _n.block('ui.photoSlider', {
    init: function(elem, params) {
      return new PhotoSlider(elem, params);
    }
  });


  /*}}} */


  /*[ui.searchBar]{{{ */

  _n.block('ui.searchBar', {

    /*[获取查询参数]{{{ */
    getSearchUrl: function(cityID, checkInDate, checkOutDate, options, citySource, forceOtherUrl) {
      var _url, paramObj, paramStr;
      if (options == null) {
        options = {};
      }
      paramObj = {
        CityID: cityID,
        CheckInDate: checkInDate,
        CheckOutDate: checkOutDate
      };
      _url = _vars[+citySource === 1 ? 'HotelOverseaListUrl' : 'HotelListUrl'];
      if (+citySource === 1 && options.oversea) {
        if (options.oversea.TargetUrl && forceOtherUrl) {
          _url = options.oversea.TargetUrl;
          return _url;
        }
        _.extend(paramObj, options.oversea);
      } else {
        _.extend(paramObj, options.data);
      }
      paramStr = $.param(paramObj, true);
      _url += (_url.indexOf("?") < 0 ? "?" : "&");
      _url += paramStr;
      return _url;
    },

    /*}}} */

    /*[获取日期字符串]{{{ */
    getDateStr: function(date) {
      var dayText, monthText, ret;
      monthText = date.getMonth() + 1;
      if (monthText < 10) {
        monthText = "0" + monthText;
      }
      dayText = date.getDate();
      if (dayText < 10) {
        dayText = "0" + dayText;
      }
      ret = date.getFullYear() + "-" + monthText + "-" + dayText;
      return ret;
    },

    /*}}} */

    /*[初始化日历选择框]{{{ */
    initCheckCityAndCheckDate: function() {
      var $checkIn, $checkOut, checkInDate, checkInDateArr, checkOutDate, checkOutDateArr, currDate, dateReg;
      dateReg = /^(\d{4})\-(\d{2})\-(\d{2})$/;
      $checkIn = $(".checkindate");
      $checkOut = $(".checkoutdate");
      currDate = new Date();
      checkInDate = this.getDateStr(currDate);
      currDate.setDate(currDate.getDate() + 1);
      checkOutDate = this.getDateStr(currDate);
      checkInDateArr = dateReg.exec(checkInDate);
      checkOutDateArr = dateReg.exec(checkOutDate);
      $checkIn.val(checkInDate).parent().siblings().filter('.placeholder').remove().end().filter(".month").text(+checkInDateArr[2] + "月");
      $checkOut.val(checkOutDate).parent().siblings().filter('.placeholder').remove().end().filter(".month").text(+checkOutDateArr[2] + "月");
      return $('.city').click(function(e) {
        e.stopPropagation();
        return e.target.tagName !== 'INPUT' && $('.checkincity').trigger('focus');
      });
    },

    /*}}} */

    /*[点击搜索事件]{{{ */
    submitArg: function() {
      var self;
      self = this;
      this.$elem.on('click', '.search .Cbtn', function(e) {
        var $self, _url, checkInDate, checkOutDate, cityId, citySource, forceOtherUrl, isOversea;
        $self = $(this);
        isOversea = $self.hasClass('btnIntSearch');
        forceOtherUrl = $self.hasClass('btnIntSearch');
        cityId = isOversea ? 'V2996' : $(".checkincity").data("cityId");
        citySource = isOversea ? 1 : $(".checkincity").data("citySource");
        checkInDate = $(".checkindate").val();
        checkOutDate = $(".checkoutdate").val();
        if (cityId && checkInDate && checkOutDate) {
          try {
            if (isOversea && _vars.oldjuziLink) {
              if ($self.data('target') === '_blank') {
                window.open(_vars.oldjuziLink);
              } else {
                location.href = _vars.oldjuziLink;
              }
              return false;
            }
          } catch (error) {}
          _url = self.getSearchUrl(cityId, checkInDate, checkOutDate, _vars.getCityListOption, citySource, forceOtherUrl);
          if ($self.data('target') === '_blank') {
            return window.open(_url);
          } else {
            return location.href = _url;
          }
        } else {
          return alert("搜索条件不能为空，请检查！");
        }
      });
      return $('#btnSearchIntHotel').click(function() {});
    },

    /*}}} */

    /*[搜索栏动画]{{{ */
    animation: function() {
      var LOGOSRECTTOP, SearchBottom, body, container, popupHeightObj, search, searchAnimationItem, searchAnimationItemSelector, searchDom, searchHeight;
      searchAnimationItemSelector = '.city,.checkInDate,.checkOutDate';
      _n.on('clearActiveClassName', function(passClasName) {
        var selector;
        selector = passClasName || searchAnimationItemSelector;
        $(selector).removeClass('active focus');
        return $('.Mcheckin_city_disable_tip').hide();
      });
      searchAnimationItem = $(searchAnimationItemSelector);
      $('.condition').on('mouseenter', searchAnimationItemSelector, function() {
        if (!searchAnimationItem.hasClass('active')) {
          return $(this).addClass('active');
        }
      });
      $('.condition').on('mouseleave', searchAnimationItemSelector, function(e) {
        var toDom;
        toDom = $(e.relatedTarget);
        if (toDom.is('#ui-datepicker-div') || toDom.is('.Mcheckin_citysuggest') || toDom.is('.Mcheckin_city') || toDom.parents().is('#ui-datepicker-div') || $('#ui-datepicker-div,.Mcheckin_citysuggest,.Mcheckin_city').is(':visible')) {
          return;
        }
        return $(this).removeClass('active');
      });
      body = $('body');
      container = $('html,body');
      search = $('.Msearch');
      searchDom = search[0];
      searchHeight = search.height();
      LOGOSRECTTOP = 367;
      SearchBottom = 36;
      if (search.parents('.container').hasClass('newIndex')) {
        LOGOSRECTTOP = 167;
        SearchBottom = 3;
      }
      popupHeightObj = {
        city: 0,
        date: 248
      };
      return _n.on('searchBindScroll', function(type, height) {
        var _height, diff, distance;
        _vars.windowHeight = $(window).height();
        _height = popupHeightObj[type] || height;
        if ((diff = _vars.windowHeight - (searchHeight + searchDom.getBoundingClientRect().top + _height) - SearchBottom) < 0) {
          distance = Math.max(Math.abs(diff) + body.scrollTop(), LOGOSRECTTOP);
          return container.scrollTop(distance);
        }
      });
    },

    /*}}} */

    /*[初始化]{{{ */
    init: function(elem, params) {
      this.$elem = $(elem);
      this.initCheckCityAndCheckDate();
      this.submitArg();
      return this.animation();
    }

    /*}}} */
  });


  /*}}} */


  /*[block.trackCompatibleMode] {{{ */

  TrackCompatibleMode = (function() {
    TrackCompatibleMode.prototype.maxTryCount = 100;

    TrackCompatibleMode.prototype.tryTimeSpan = 100;

    TrackCompatibleMode.prototype.setTrackEvent = function() {
      if (this.count < this.maxTryCount) {
        this.count++;
        if (typeof wa_track_event === 'function') {
          if (this.compatibleMode) {
            return wa_track_event('开发者', '追踪兼容性视图', '兼容性视图', 1);
          } else {
            return wa_track_event('开发者', '追踪兼容性视图', '非兼容性视图', 1);
          }
        } else {
          return setTimeout(_.bind(this.setTrackEvent, this), this.tryTimeSpan);
        }
      }
    };

    function TrackCompatibleMode() {
      this.count = 0;
      if (document.documentMode && parseInt(document.documentMode) < 8) {
        this.compatibleMode = true;
      } else {
        this.compatibleMode = false;
      }
      this.setTrackEvent();
    }

    return TrackCompatibleMode;

  })();

  TrackCompatibleMode.init = function(elem, params) {
    return new TrackCompatibleMode();
  };

  _n.block('block.trackCompatibleMode', TrackCompatibleMode);


  /*}}} */

}).call(this);
