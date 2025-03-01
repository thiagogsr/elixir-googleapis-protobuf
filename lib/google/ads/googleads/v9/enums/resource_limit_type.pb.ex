defmodule Google.Ads.Googleads.V9.Enums.ResourceLimitTypeEnum.ResourceLimitType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CAMPAIGNS_PER_CUSTOMER
          | :BASE_CAMPAIGNS_PER_CUSTOMER
          | :EXPERIMENT_CAMPAIGNS_PER_CUSTOMER
          | :HOTEL_CAMPAIGNS_PER_CUSTOMER
          | :SMART_SHOPPING_CAMPAIGNS_PER_CUSTOMER
          | :AD_GROUPS_PER_CAMPAIGN
          | :AD_GROUPS_PER_SHOPPING_CAMPAIGN
          | :AD_GROUPS_PER_HOTEL_CAMPAIGN
          | :REPORTING_AD_GROUPS_PER_LOCAL_CAMPAIGN
          | :REPORTING_AD_GROUPS_PER_APP_CAMPAIGN
          | :MANAGED_AD_GROUPS_PER_SMART_CAMPAIGN
          | :AD_GROUP_CRITERIA_PER_CUSTOMER
          | :BASE_AD_GROUP_CRITERIA_PER_CUSTOMER
          | :EXPERIMENT_AD_GROUP_CRITERIA_PER_CUSTOMER
          | :AD_GROUP_CRITERIA_PER_CAMPAIGN
          | :CAMPAIGN_CRITERIA_PER_CUSTOMER
          | :BASE_CAMPAIGN_CRITERIA_PER_CUSTOMER
          | :EXPERIMENT_CAMPAIGN_CRITERIA_PER_CUSTOMER
          | :WEBPAGE_CRITERIA_PER_CUSTOMER
          | :BASE_WEBPAGE_CRITERIA_PER_CUSTOMER
          | :EXPERIMENT_WEBPAGE_CRITERIA_PER_CUSTOMER
          | :COMBINED_AUDIENCE_CRITERIA_PER_AD_GROUP
          | :CUSTOMER_NEGATIVE_PLACEMENT_CRITERIA_PER_CUSTOMER
          | :CUSTOMER_NEGATIVE_YOUTUBE_CHANNEL_CRITERIA_PER_CUSTOMER
          | :CRITERIA_PER_AD_GROUP
          | :LISTING_GROUPS_PER_AD_GROUP
          | :EXPLICITLY_SHARED_BUDGETS_PER_CUSTOMER
          | :IMPLICITLY_SHARED_BUDGETS_PER_CUSTOMER
          | :COMBINED_AUDIENCE_CRITERIA_PER_CAMPAIGN
          | :NEGATIVE_KEYWORDS_PER_CAMPAIGN
          | :NEGATIVE_PLACEMENTS_PER_CAMPAIGN
          | :GEO_TARGETS_PER_CAMPAIGN
          | :NEGATIVE_IP_BLOCKS_PER_CAMPAIGN
          | :PROXIMITIES_PER_CAMPAIGN
          | :LISTING_SCOPES_PER_SHOPPING_CAMPAIGN
          | :LISTING_SCOPES_PER_NON_SHOPPING_CAMPAIGN
          | :NEGATIVE_KEYWORDS_PER_SHARED_SET
          | :NEGATIVE_PLACEMENTS_PER_SHARED_SET
          | :SHARED_SETS_PER_CUSTOMER_FOR_TYPE_DEFAULT
          | :SHARED_SETS_PER_CUSTOMER_FOR_NEGATIVE_PLACEMENT_LIST_LOWER
          | :HOTEL_ADVANCE_BOOKING_WINDOW_BID_MODIFIERS_PER_AD_GROUP
          | :BIDDING_STRATEGIES_PER_CUSTOMER
          | :BASIC_USER_LISTS_PER_CUSTOMER
          | :LOGICAL_USER_LISTS_PER_CUSTOMER
          | :BASE_AD_GROUP_ADS_PER_CUSTOMER
          | :EXPERIMENT_AD_GROUP_ADS_PER_CUSTOMER
          | :AD_GROUP_ADS_PER_CAMPAIGN
          | :TEXT_AND_OTHER_ADS_PER_AD_GROUP
          | :IMAGE_ADS_PER_AD_GROUP
          | :SHOPPING_SMART_ADS_PER_AD_GROUP
          | :RESPONSIVE_SEARCH_ADS_PER_AD_GROUP
          | :APP_ADS_PER_AD_GROUP
          | :APP_ENGAGEMENT_ADS_PER_AD_GROUP
          | :LOCAL_ADS_PER_AD_GROUP
          | :VIDEO_ADS_PER_AD_GROUP
          | :LEAD_FORM_CAMPAIGN_ASSETS_PER_CAMPAIGN
          | :PROMOTION_CUSTOMER_ASSETS_PER_CUSTOMER
          | :PROMOTION_CAMPAIGN_ASSETS_PER_CAMPAIGN
          | :PROMOTION_AD_GROUP_ASSETS_PER_AD_GROUP
          | :CALLOUT_CUSTOMER_ASSETS_PER_CUSTOMER
          | :CALLOUT_CAMPAIGN_ASSETS_PER_CAMPAIGN
          | :CALLOUT_AD_GROUP_ASSETS_PER_AD_GROUP
          | :SITELINK_CUSTOMER_ASSETS_PER_CUSTOMER
          | :SITELINK_CAMPAIGN_ASSETS_PER_CAMPAIGN
          | :SITELINK_AD_GROUP_ASSETS_PER_AD_GROUP
          | :STRUCTURED_SNIPPET_CUSTOMER_ASSETS_PER_CUSTOMER
          | :STRUCTURED_SNIPPET_CAMPAIGN_ASSETS_PER_CAMPAIGN
          | :STRUCTURED_SNIPPET_AD_GROUP_ASSETS_PER_AD_GROUP
          | :MOBILE_APP_CUSTOMER_ASSETS_PER_CUSTOMER
          | :MOBILE_APP_CAMPAIGN_ASSETS_PER_CAMPAIGN
          | :MOBILE_APP_AD_GROUP_ASSETS_PER_AD_GROUP
          | :HOTEL_CALLOUT_CUSTOMER_ASSETS_PER_CUSTOMER
          | :HOTEL_CALLOUT_CAMPAIGN_ASSETS_PER_CAMPAIGN
          | :HOTEL_CALLOUT_AD_GROUP_ASSETS_PER_AD_GROUP
          | :CALL_CUSTOMER_ASSETS_PER_CUSTOMER
          | :CALL_CAMPAIGN_ASSETS_PER_CAMPAIGN
          | :CALL_AD_GROUP_ASSETS_PER_AD_GROUP
          | :PRICE_CUSTOMER_ASSETS_PER_CUSTOMER
          | :PRICE_CAMPAIGN_ASSETS_PER_CAMPAIGN
          | :PRICE_AD_GROUP_ASSETS_PER_AD_GROUP
          | :VERSIONS_PER_AD
          | :USER_FEEDS_PER_CUSTOMER
          | :SYSTEM_FEEDS_PER_CUSTOMER
          | :FEED_ATTRIBUTES_PER_FEED
          | :FEED_ITEMS_PER_CUSTOMER
          | :CAMPAIGN_FEEDS_PER_CUSTOMER
          | :BASE_CAMPAIGN_FEEDS_PER_CUSTOMER
          | :EXPERIMENT_CAMPAIGN_FEEDS_PER_CUSTOMER
          | :AD_GROUP_FEEDS_PER_CUSTOMER
          | :BASE_AD_GROUP_FEEDS_PER_CUSTOMER
          | :EXPERIMENT_AD_GROUP_FEEDS_PER_CUSTOMER
          | :AD_GROUP_FEEDS_PER_CAMPAIGN
          | :FEED_ITEM_SETS_PER_CUSTOMER
          | :FEED_ITEMS_PER_FEED_ITEM_SET
          | :CAMPAIGN_EXPERIMENTS_PER_CUSTOMER
          | :EXPERIMENT_ARMS_PER_VIDEO_EXPERIMENT
          | :OWNED_LABELS_PER_CUSTOMER
          | :LABELS_PER_CAMPAIGN
          | :LABELS_PER_AD_GROUP
          | :LABELS_PER_AD_GROUP_AD
          | :LABELS_PER_AD_GROUP_CRITERION
          | :TARGET_CUSTOMERS_PER_LABEL
          | :KEYWORD_PLANS_PER_USER_PER_CUSTOMER
          | :KEYWORD_PLAN_AD_GROUP_KEYWORDS_PER_KEYWORD_PLAN
          | :KEYWORD_PLAN_AD_GROUPS_PER_KEYWORD_PLAN
          | :KEYWORD_PLAN_NEGATIVE_KEYWORDS_PER_KEYWORD_PLAN
          | :KEYWORD_PLAN_CAMPAIGNS_PER_KEYWORD_PLAN
          | :CONVERSION_ACTIONS_PER_CUSTOMER
          | :BATCH_JOB_OPERATIONS_PER_JOB
          | :BATCH_JOBS_PER_CUSTOMER
          | :HOTEL_CHECK_IN_DATE_RANGE_BID_MODIFIERS_PER_AD_GROUP

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGNS_PER_CUSTOMER, 2
  field :BASE_CAMPAIGNS_PER_CUSTOMER, 3
  field :EXPERIMENT_CAMPAIGNS_PER_CUSTOMER, 105
  field :HOTEL_CAMPAIGNS_PER_CUSTOMER, 4
  field :SMART_SHOPPING_CAMPAIGNS_PER_CUSTOMER, 5
  field :AD_GROUPS_PER_CAMPAIGN, 6
  field :AD_GROUPS_PER_SHOPPING_CAMPAIGN, 8
  field :AD_GROUPS_PER_HOTEL_CAMPAIGN, 9
  field :REPORTING_AD_GROUPS_PER_LOCAL_CAMPAIGN, 10
  field :REPORTING_AD_GROUPS_PER_APP_CAMPAIGN, 11
  field :MANAGED_AD_GROUPS_PER_SMART_CAMPAIGN, 52
  field :AD_GROUP_CRITERIA_PER_CUSTOMER, 12
  field :BASE_AD_GROUP_CRITERIA_PER_CUSTOMER, 13
  field :EXPERIMENT_AD_GROUP_CRITERIA_PER_CUSTOMER, 107
  field :AD_GROUP_CRITERIA_PER_CAMPAIGN, 14
  field :CAMPAIGN_CRITERIA_PER_CUSTOMER, 15
  field :BASE_CAMPAIGN_CRITERIA_PER_CUSTOMER, 16
  field :EXPERIMENT_CAMPAIGN_CRITERIA_PER_CUSTOMER, 108
  field :WEBPAGE_CRITERIA_PER_CUSTOMER, 17
  field :BASE_WEBPAGE_CRITERIA_PER_CUSTOMER, 18
  field :EXPERIMENT_WEBPAGE_CRITERIA_PER_CUSTOMER, 19
  field :COMBINED_AUDIENCE_CRITERIA_PER_AD_GROUP, 20
  field :CUSTOMER_NEGATIVE_PLACEMENT_CRITERIA_PER_CUSTOMER, 21
  field :CUSTOMER_NEGATIVE_YOUTUBE_CHANNEL_CRITERIA_PER_CUSTOMER, 22
  field :CRITERIA_PER_AD_GROUP, 23
  field :LISTING_GROUPS_PER_AD_GROUP, 24
  field :EXPLICITLY_SHARED_BUDGETS_PER_CUSTOMER, 25
  field :IMPLICITLY_SHARED_BUDGETS_PER_CUSTOMER, 26
  field :COMBINED_AUDIENCE_CRITERIA_PER_CAMPAIGN, 27
  field :NEGATIVE_KEYWORDS_PER_CAMPAIGN, 28
  field :NEGATIVE_PLACEMENTS_PER_CAMPAIGN, 29
  field :GEO_TARGETS_PER_CAMPAIGN, 30
  field :NEGATIVE_IP_BLOCKS_PER_CAMPAIGN, 32
  field :PROXIMITIES_PER_CAMPAIGN, 33
  field :LISTING_SCOPES_PER_SHOPPING_CAMPAIGN, 34
  field :LISTING_SCOPES_PER_NON_SHOPPING_CAMPAIGN, 35
  field :NEGATIVE_KEYWORDS_PER_SHARED_SET, 36
  field :NEGATIVE_PLACEMENTS_PER_SHARED_SET, 37
  field :SHARED_SETS_PER_CUSTOMER_FOR_TYPE_DEFAULT, 40
  field :SHARED_SETS_PER_CUSTOMER_FOR_NEGATIVE_PLACEMENT_LIST_LOWER, 41
  field :HOTEL_ADVANCE_BOOKING_WINDOW_BID_MODIFIERS_PER_AD_GROUP, 44
  field :BIDDING_STRATEGIES_PER_CUSTOMER, 45
  field :BASIC_USER_LISTS_PER_CUSTOMER, 47
  field :LOGICAL_USER_LISTS_PER_CUSTOMER, 48
  field :BASE_AD_GROUP_ADS_PER_CUSTOMER, 53
  field :EXPERIMENT_AD_GROUP_ADS_PER_CUSTOMER, 54
  field :AD_GROUP_ADS_PER_CAMPAIGN, 55
  field :TEXT_AND_OTHER_ADS_PER_AD_GROUP, 56
  field :IMAGE_ADS_PER_AD_GROUP, 57
  field :SHOPPING_SMART_ADS_PER_AD_GROUP, 58
  field :RESPONSIVE_SEARCH_ADS_PER_AD_GROUP, 59
  field :APP_ADS_PER_AD_GROUP, 60
  field :APP_ENGAGEMENT_ADS_PER_AD_GROUP, 61
  field :LOCAL_ADS_PER_AD_GROUP, 62
  field :VIDEO_ADS_PER_AD_GROUP, 63
  field :LEAD_FORM_CAMPAIGN_ASSETS_PER_CAMPAIGN, 143
  field :PROMOTION_CUSTOMER_ASSETS_PER_CUSTOMER, 79
  field :PROMOTION_CAMPAIGN_ASSETS_PER_CAMPAIGN, 80
  field :PROMOTION_AD_GROUP_ASSETS_PER_AD_GROUP, 81
  field :CALLOUT_CUSTOMER_ASSETS_PER_CUSTOMER, 134
  field :CALLOUT_CAMPAIGN_ASSETS_PER_CAMPAIGN, 135
  field :CALLOUT_AD_GROUP_ASSETS_PER_AD_GROUP, 136
  field :SITELINK_CUSTOMER_ASSETS_PER_CUSTOMER, 137
  field :SITELINK_CAMPAIGN_ASSETS_PER_CAMPAIGN, 138
  field :SITELINK_AD_GROUP_ASSETS_PER_AD_GROUP, 139
  field :STRUCTURED_SNIPPET_CUSTOMER_ASSETS_PER_CUSTOMER, 140
  field :STRUCTURED_SNIPPET_CAMPAIGN_ASSETS_PER_CAMPAIGN, 141
  field :STRUCTURED_SNIPPET_AD_GROUP_ASSETS_PER_AD_GROUP, 142
  field :MOBILE_APP_CUSTOMER_ASSETS_PER_CUSTOMER, 144
  field :MOBILE_APP_CAMPAIGN_ASSETS_PER_CAMPAIGN, 145
  field :MOBILE_APP_AD_GROUP_ASSETS_PER_AD_GROUP, 146
  field :HOTEL_CALLOUT_CUSTOMER_ASSETS_PER_CUSTOMER, 147
  field :HOTEL_CALLOUT_CAMPAIGN_ASSETS_PER_CAMPAIGN, 148
  field :HOTEL_CALLOUT_AD_GROUP_ASSETS_PER_AD_GROUP, 149
  field :CALL_CUSTOMER_ASSETS_PER_CUSTOMER, 150
  field :CALL_CAMPAIGN_ASSETS_PER_CAMPAIGN, 151
  field :CALL_AD_GROUP_ASSETS_PER_AD_GROUP, 152
  field :PRICE_CUSTOMER_ASSETS_PER_CUSTOMER, 154
  field :PRICE_CAMPAIGN_ASSETS_PER_CAMPAIGN, 155
  field :PRICE_AD_GROUP_ASSETS_PER_AD_GROUP, 156
  field :VERSIONS_PER_AD, 82
  field :USER_FEEDS_PER_CUSTOMER, 90
  field :SYSTEM_FEEDS_PER_CUSTOMER, 91
  field :FEED_ATTRIBUTES_PER_FEED, 92
  field :FEED_ITEMS_PER_CUSTOMER, 94
  field :CAMPAIGN_FEEDS_PER_CUSTOMER, 95
  field :BASE_CAMPAIGN_FEEDS_PER_CUSTOMER, 96
  field :EXPERIMENT_CAMPAIGN_FEEDS_PER_CUSTOMER, 109
  field :AD_GROUP_FEEDS_PER_CUSTOMER, 97
  field :BASE_AD_GROUP_FEEDS_PER_CUSTOMER, 98
  field :EXPERIMENT_AD_GROUP_FEEDS_PER_CUSTOMER, 110
  field :AD_GROUP_FEEDS_PER_CAMPAIGN, 99
  field :FEED_ITEM_SETS_PER_CUSTOMER, 100
  field :FEED_ITEMS_PER_FEED_ITEM_SET, 101
  field :CAMPAIGN_EXPERIMENTS_PER_CUSTOMER, 112
  field :EXPERIMENT_ARMS_PER_VIDEO_EXPERIMENT, 113
  field :OWNED_LABELS_PER_CUSTOMER, 115
  field :LABELS_PER_CAMPAIGN, 117
  field :LABELS_PER_AD_GROUP, 118
  field :LABELS_PER_AD_GROUP_AD, 119
  field :LABELS_PER_AD_GROUP_CRITERION, 120
  field :TARGET_CUSTOMERS_PER_LABEL, 121
  field :KEYWORD_PLANS_PER_USER_PER_CUSTOMER, 122
  field :KEYWORD_PLAN_AD_GROUP_KEYWORDS_PER_KEYWORD_PLAN, 123
  field :KEYWORD_PLAN_AD_GROUPS_PER_KEYWORD_PLAN, 124
  field :KEYWORD_PLAN_NEGATIVE_KEYWORDS_PER_KEYWORD_PLAN, 125
  field :KEYWORD_PLAN_CAMPAIGNS_PER_KEYWORD_PLAN, 126
  field :CONVERSION_ACTIONS_PER_CUSTOMER, 128
  field :BATCH_JOB_OPERATIONS_PER_JOB, 130
  field :BATCH_JOBS_PER_CUSTOMER, 131
  field :HOTEL_CHECK_IN_DATE_RANGE_BID_MODIFIERS_PER_AD_GROUP, 132
end
defmodule Google.Ads.Googleads.V9.Enums.ResourceLimitTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
