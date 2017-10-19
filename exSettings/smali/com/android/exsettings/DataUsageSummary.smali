.class public Lcom/android/exsettings/DataUsageSummary;
.super Lcom/android/exsettings/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DataUsageSummary$UidDetailTask;,
        Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/exsettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/exsettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/exsettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/exsettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/exsettings/DataUsageSummary$AppItem;,
        Lcom/android/exsettings/DataUsageSummary$CycleAdapter;,
        Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/exsettings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static mSelectLeft:[J

.field private static mSelectRight:[J

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrict:Landroid/widget/Switch;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private mBinding:Z

.field private mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/exsettings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/exsettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDetailedSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowDataUsage:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private final mMobileDataEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

.field private mShowAppImmediatePkg:Ljava/lang/String;

.field private mShowDataUsage:Z

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/exsettings/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 279
    new-array v0, v1, [J

    sput-object v0, Lcom/android/exsettings/DataUsageSummary;->mSelectLeft:[J

    .line 280
    new-array v0, v1, [J

    sput-object v0, Lcom/android/exsettings/DataUsageSummary;->mSelectRight:[J

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/exsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1709
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/exsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/exsettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    .line 2834
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$14;

    invoke-direct {v0}, Lcom/android/exsettings/DataUsageSummary$14;-><init>()V

    sput-object v0, Lcom/android/exsettings/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Lcom/android/exsettings/HighlightingFragment;-><init>()V

    .line 241
    iput v0, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    .line 281
    iput-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    .line 282
    iput-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    .line 283
    iput-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    .line 288
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;

    .line 294
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 295
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    .line 876
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$3;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 900
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$4;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1379
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$6;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1401
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$7;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1415
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$8;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1431
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$9;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1445
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$10;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1568
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$11;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1599
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$12;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1642
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$13;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mChartListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2553
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exsettings/DataUsageSummary;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/exsettings/DataUsageSummary;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/exsettings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exsettings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/exsettings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/net/ChartData;)Lcom/android/exsettings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/exsettings/net/ChartData;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAdapter:Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/exsettings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/exsettings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/exsettings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/DataUsageSummary$AppItem;)Lcom/android/exsettings/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/exsettings/DataUsageSummary$AppItem;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p0}, Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$600()[J
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/android/exsettings/DataUsageSummary;->mSelectLeft:[J

    return-object v0
.end method

.method static synthetic access$700()[J
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/android/exsettings/DataUsageSummary;->mSelectRight:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "isMultiSim"    # Z

    .prologue
    .line 2880
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2881
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2882
    if-eqz p3, :cond_1

    .line 2883
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2893
    :cond_0
    :goto_0
    return-void

    .line 2886
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v2, 0x7f0c08b6

    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 820
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 824
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 825
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/exsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2525
    const-string v3, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 2526
    .local v1, "template":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_1

    .line 2527
    const-string v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2529
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2545
    .end local v0    # "subId":I
    :cond_0
    :goto_0
    return-object v2

    .line 2535
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2541
    :pswitch_0
    const-string v2, "mobile"

    goto :goto_0

    .line 2537
    :pswitch_1
    const-string v2, "3g"

    goto :goto_0

    .line 2539
    :pswitch_2
    const-string v2, "4g"

    goto :goto_0

    .line 2543
    :pswitch_3
    const-string v2, "wifi"

    goto :goto_0

    .line 2535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-nez v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 810
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 811
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 813
    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 814
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 815
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 816
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 1713
    const v8, 0x10010

    .line 1715
    .local v8, "flags":I
    sget-object v9, Lcom/android/exsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 1716
    :try_start_0
    sget-object v0, Lcom/android/exsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1717
    sget-object v1, Lcom/android/exsettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 1719
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1628
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1629
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1630
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v3, "test.subscriberid"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1632
    .local v1, "retVal":Ljava/lang/String;
    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1636
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1637
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1227
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/exsettings/DataUsageSummary$AppItem;->key:I

    .line 1228
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1229
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSubId(Ljava/lang/String;)I
    .locals 6
    .param p1, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 2933
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 2934
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2935
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2936
    .local v2, "subId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2937
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2942
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "subId":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 2941
    :cond_1
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " non mobile tab called this function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2618
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2619
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 2621
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 2624
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 2641
    :goto_0
    return v9

    .line 2629
    :cond_0
    const/4 v2, 0x1

    .line 2630
    .local v2, "isReady":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2631
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v10, 0x5

    if-ne v7, v10, :cond_1

    move v7, v8

    :goto_2
    and-int/2addr v2, v7

    .line 2633
    goto :goto_1

    :cond_1
    move v7, v9

    .line 2631
    goto :goto_2

    .line 2634
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    move v3, v8

    .local v3, "retVal":Z
    :goto_3
    move v9, v3

    .line 2641
    goto :goto_0

    .end local v3    # "retVal":Z
    :cond_3
    move v3, v9

    .line 2634
    goto :goto_3
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2652
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2653
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 2654
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 2655
    .local v3, "slotId":I
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    move v1, v5

    .line 2657
    .local v1, "isReady":Z
    :goto_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    move v2, v5

    .line 2661
    .local v2, "retVal":Z
    :goto_1
    return v2

    .end local v1    # "isReady":Z
    .end local v2    # "retVal":Z
    :cond_0
    move v1, v6

    .line 2655
    goto :goto_0

    .restart local v1    # "isReady":Z
    :cond_1
    move v2, v6

    .line 2657
    goto :goto_1
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2692
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2693
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 2729
    const v2, 0x7f0400a1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2730
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2732
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2733
    return-object v0
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2916
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .line 2917
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2919
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2920
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 2921
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2922
    .local v2, "mobileTag":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2925
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mobileTag":Ljava/lang/String;
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 2799
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2800
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2804
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2805
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2806
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2808
    new-instance v3, Lcom/android/exsettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/exsettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2809
    new-instance v3, Lcom/android/exsettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/exsettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2810
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1214
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1217
    :goto_0
    return v1

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataAvailable(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1178
    const/4 v0, 0x0

    .line 1179
    .local v0, "isEnable":Z
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1187
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    :goto_0
    return v0

    .line 1190
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isMobileTab(Ljava/lang/String;)Z
    .locals 1
    .param p0, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 2929
    if-eqz p0, :cond_0

    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1208
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1234
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/exsettings/DataUsageSummary$AppItem;->key:I

    .line 1235
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1237
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1238
    return-void

    .line 1235
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1201
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1202
    .local v0, "dataSubId":I
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1203
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1205
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/exsettings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1174
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/exsettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1168
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 2826
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2827
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2828
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2829
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 2817
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2818
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2819
    return-void
.end method

.method private setSelectableDataUsageViewVisible(Z)V
    .locals 5
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2950
    if-eqz p1, :cond_0

    move v1, v2

    .line 2951
    .local v1, "visible":I
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v4, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->setDateSelectionSweepVisible(I)V

    .line 2952
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2953
    if-eqz p1, :cond_1

    move v0, v3

    .line 2954
    .local v0, "revertVisible":I
    :goto_1
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2955
    return-void

    .end local v0    # "revertVisible":I
    .end local v1    # "visible":I
    :cond_0
    move v1, v3

    .line 2950
    goto :goto_0

    .restart local v1    # "visible":I
    :cond_1
    move v0, v2

    .line 2953
    goto :goto_1
.end method

.method private showRequestedAppIfNeeded(Landroid/view/View;)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 551
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 572
    :goto_0
    return-void

    .line 555
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 557
    .local v4, "uid":I
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$AppItem;

    invoke-direct {v0, v4}, Lcom/android/exsettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 558
    .local v0, "app":Lcom/android/exsettings/DataUsageSummary$AppItem;
    invoke-virtual {v0, v4}, Lcom/android/exsettings/DataUsageSummary$AppItem;->addUid(I)V

    .line 560
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettings/net/UidDetailProvider;

    iget v6, v0, Lcom/android/exsettings/DataUsageSummary$AppItem;->key:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/exsettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/exsettings/net/UidDetail;

    move-result-object v1

    .line 563
    .local v1, "detail":Lcom/android/exsettings/net/UidDetail;
    const v5, 0x7f12009a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 564
    .local v3, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v1, Lcom/android/exsettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v1, Lcom/android/exsettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v3}, Lcom/android/exsettings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 565
    iget-object v5, v1, Lcom/android/exsettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x1

    invoke-static {p0, v0, v5, v6}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    .end local v0    # "app":Lcom/android/exsettings/DataUsageSummary$AppItem;
    .end local v1    # "detail":Lcom/android/exsettings/net/UidDetail;
    .end local v3    # "pinnedHeader":Landroid/widget/FrameLayout;
    .end local v4    # "uid":I
    :catch_0
    move-exception v2

    .line 567
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c0ae4

    invoke-virtual {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 570
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateAppDetail()V
    .locals 23

    .prologue
    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1057
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 1058
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1060
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/widget/ChartDataUsageView;->setVisibility(I)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/exsettings/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    .line 1079
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettings/net/UidDetailProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/exsettings/net/UidDetail;

    move-result-object v7

    .line 1080
    .local v7, "detail":Lcom/android/exsettings/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/exsettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1084
    const/16 v18, 0x0

    .line 1085
    .local v18, "title":Landroid/view/View;
    iget-object v0, v7, Lcom/android/exsettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1086
    iget-object v0, v7, Lcom/android/exsettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v14, v0

    .line 1087
    .local v14, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_2

    .line 1088
    iget-object v0, v7, Lcom/android/exsettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v11, v20, v8

    .line 1089
    .local v11, "label":Ljava/lang/CharSequence;
    iget-object v0, v7, Lcom/android/exsettings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v5, v20, v8

    .line 1090
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    const v20, 0x7f040049

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1091
    const v20, 0x7f120081

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1092
    .local v3, "appTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1087
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1065
    .end local v3    # "appTitle":Landroid/widget/TextView;
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    .end local v7    # "detail":Lcom/android/exsettings/net/UidDetail;
    .end local v8    # "i":I
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v14    # "n":I
    .end local v18    # "title":Landroid/view/View;
    .end local v19    # "uid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/widget/ChartDataUsageView;->setVisibility(I)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1162
    :goto_1
    return-void

    .line 1097
    .restart local v7    # "detail":Lcom/android/exsettings/net/UidDetail;
    .restart local v18    # "title":Landroid/view/View;
    .restart local v19    # "uid":I
    :cond_1
    const v20, 0x7f040049

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1098
    const v20, 0x7f120081

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1099
    .restart local v3    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/exsettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v0, v7, Lcom/android/exsettings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1105
    .end local v3    # "appTitle":Landroid/widget/TextView;
    :cond_2
    if-eqz v18, :cond_4

    .line 1106
    const v20, 0x7f120082

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 1112
    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 1113
    .local v16, "packageNames":[Ljava/lang/String;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 1114
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.DEFAULT"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    const/4 v13, 0x0

    .line 1119
    .local v13, "matchFound":Z
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v12, :cond_3

    aget-object v15, v4, v9

    .line 1120
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 1122
    const/4 v13, 0x1

    .line 1127
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/exsettings/DataUsageSummary$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/DataUsageSummary$5;-><init>(Lcom/android/exsettings/DataUsageSummary;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 1148
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V

    .line 1150
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {v6}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c08c1

    invoke-static/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c08c2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 1108
    .end local v16    # "packageNames":[Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 1119
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "matchFound":Z
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageNames":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1143
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 1160
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 24

    .prologue
    .line 921
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 924
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 925
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 926
    .local v14, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    .line 927
    .local v9, "currentTab":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v12, 0x1

    .line 929
    .local v12, "isOwner":Z
    :goto_1
    if-nez v9, :cond_2

    .line 930
    const-string v2, "DataUsage"

    const-string v3, "no tab selected; hiding body"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 927
    .end local v12    # "isOwner":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 934
    .restart local v12    # "isOwner":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 937
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 941
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 942
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 948
    invoke-static {v9}, Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c08bb

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v3, 0x7f0c08b0

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 952
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/exsettings/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 956
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v8, v2}, Lcom/android/exsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 994
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;

    invoke-virtual {v2}, Lcom/android/exsettings/net/NetworkPolicyEditor;->read()V

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v13

    .line 996
    .local v13, "policy":Landroid/net/NetworkPolicy;
    if-eqz v13, :cond_3

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 998
    .local v10, "currentTime":J
    invoke-static {v10, v11, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 999
    .local v4, "start":J
    move-wide v6, v10

    .line 1000
    .local v6, "end":J
    const-wide/16 v20, 0x0

    .line 1003
    .local v20, "totalBytes":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v3, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    .line 1008
    :goto_3
    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, v13, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c08a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1021
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v10    # "currentTime":J
    .end local v20    # "totalBytes":J
    :cond_3
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/exsettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/exsettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1025
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1027
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    .line 1029
    const v2, 0x7f0e0047

    invoke-virtual {v8, v2}, Landroid/content/Context;->getColor(I)I

    move-result v16

    .line 1030
    .local v16, "seriesColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "mobile"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v3, "mobile"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1033
    .local v18, "slotId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v17

    .line 1036
    .local v17, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v17, :cond_4

    .line 1037
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v16

    .line 1041
    .end local v17    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v18    # "slotId":I
    :cond_4
    const/16 v2, 0x7f

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v22

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    .line 1043
    .local v15, "secondaryColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    const/high16 v3, -0x1000000

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v15}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDetailedSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    const/high16 v3, -0x1000000

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v15}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    goto/16 :goto_0

    .line 961
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v15    # "secondaryColor":I
    .end local v16    # "seriesColor":I
    :cond_5
    const-string v2, "3g"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c08bc

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v3, 0x7f0c08b2

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 966
    invoke-static {v8}, Lcom/android/exsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 968
    :cond_6
    const-string v2, "4g"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c08bd

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v3, 0x7f0c08b1

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 973
    invoke-static {v8}, Lcom/android/exsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 975
    :cond_7
    const-string v2, "wifi"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 978
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 979
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 980
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 982
    :cond_8
    const-string v2, "ethernet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 985
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 986
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 987
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 991
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unknown tab: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1012
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v10    # "currentTime":J
    .restart local v13    # "policy":Landroid/net/NetworkPolicy;
    .restart local v20    # "totalBytes":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1014
    .local v19, "summary":Landroid/widget/TextView;
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1005
    .end local v19    # "summary":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 1004
    :catch_1
    move-exception v2

    goto/16 :goto_3
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 28
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .line 1291
    .local v26, "previousItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 1294
    .local v11, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 1296
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide v22, 0x7fffffffffffffffL

    .line 1297
    .local v22, "historyStart":J
    const-wide/high16 v20, -0x8000000000000000L

    .line 1298
    .local v20, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    if-eqz v4, :cond_0

    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v4, v4, Lcom/android/exsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v22

    .line 1300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v4, v4, Lcom/android/exsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v20

    .line 1303
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1304
    .local v24, "now":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v22, v4

    if-nez v4, :cond_1

    move-wide/from16 v22, v24

    .line 1305
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v20, v24, v4

    .line 1307
    :cond_2
    const/16 v18, 0x0

    .line 1308
    .local v18, "hasCycles":Z
    if-eqz p1, :cond_7

    .line 1310
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1313
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v22

    if-lez v4, :cond_6

    .line 1314
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1315
    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generating cs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " to ce="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " waiting for hs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    if-eqz v4, :cond_5

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v5, v4, Lcom/android/exsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1321
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_4

    const/16 v19, 0x1

    .line 1326
    .local v19, "includeCycle":Z
    :goto_1
    if-eqz v19, :cond_3

    .line 1327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/exsettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1328
    const/16 v18, 0x1

    .line 1330
    :cond_3
    move-wide v8, v6

    .line 1331
    goto :goto_0

    .line 1321
    .end local v19    # "includeCycle":Z
    :cond_4
    const/16 v19, 0x0

    goto :goto_1

    .line 1323
    :cond_5
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_1

    .line 1334
    .end local v6    # "cycleStart":J
    .end local v19    # "includeCycle":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/exsettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1337
    .end local v8    # "cycleEnd":J
    :cond_7
    if-nez v18, :cond_c

    .line 1339
    move-wide/from16 v8, v20

    .line 1340
    .restart local v8    # "cycleEnd":J
    :goto_2
    cmp-long v4, v8, v22

    if-lez v4, :cond_b

    .line 1341
    const-wide v4, 0x90321000L

    sub-long v6, v8, v4

    .line 1344
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    if-eqz v4, :cond_a

    .line 1345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v5, v4, Lcom/android/exsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1346
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_9

    const/16 v19, 0x1

    .line 1351
    .restart local v19    # "includeCycle":Z
    :goto_3
    if-eqz v19, :cond_8

    .line 1352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/exsettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1354
    :cond_8
    move-wide v8, v6

    .line 1355
    goto :goto_2

    .line 1346
    .end local v19    # "includeCycle":Z
    :cond_9
    const/16 v19, 0x0

    goto :goto_3

    .line 1348
    :cond_a
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_3

    .line 1357
    .end local v6    # "cycleStart":J
    .end local v19    # "includeCycle":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1361
    .end local v8    # "cycleEnd":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_e

    .line 1362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/exsettings/DataUsageSummary$CycleItem;)I

    move-result v15

    .line 1363
    .local v15, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v15}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .line 1368
    .local v27, "selectedItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-interface/range {v12 .. v17}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1377
    .end local v15    # "position":I
    .end local v27    # "selectedItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    :goto_4
    return-void

    .line 1372
    .restart local v15    # "position":I
    .restart local v27    # "selectedItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V

    goto :goto_4

    .line 1375
    .end local v15    # "position":I
    .end local v27    # "selectedItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V

    goto :goto_4
.end method

.method private updateDetailData()V
    .locals 35

    .prologue
    .line 1490
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    if-eqz v5, :cond_2

    .line 1491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectLeft()J

    move-result-wide v6

    .line 1492
    .local v6, "start":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectRight()J

    move-result-wide v8

    .line 1493
    .local v8, "end":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v31

    .line 1494
    .local v31, "tabIndex":I
    const-string v5, "DataUsage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set tabIndex--------"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    sget-object v5, Lcom/android/exsettings/DataUsageSummary;->mSelectLeft:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v13}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectLeft()J

    move-result-wide v14

    aput-wide v14, v5, v31

    .line 1496
    sget-object v5, Lcom/android/exsettings/DataUsageSummary;->mSelectRight:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v13}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectRight()J

    move-result-wide v14

    aput-wide v14, v5, v31

    .line 1497
    const-string v5, "DataUsage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "will get lefr and right data here:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    .end local v31    # "tabIndex":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1505
    .local v10, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1507
    .local v4, "context":Landroid/content/Context;
    const/4 v12, 0x0

    .line 1508
    .local v12, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v5, v5, Lcom/android/exsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v5, :cond_3

    .line 1510
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v5, v5, Lcom/android/exsettings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 1511
    iget-wide v14, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v16, v0

    add-long v22, v14, v16

    .line 1512
    .local v22, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v5, v5, Lcom/android/exsettings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 1513
    iget-wide v14, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v16, v0

    add-long v24, v14, v16

    .line 1514
    .local v24, "foregroundBytes":J
    add-long v32, v22, v24

    .line 1516
    .local v32, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 1517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v32

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v13, v5, Lcom/android/exsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v20, 0x0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v20}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1543
    .end local v22    # "defaultBytes":J
    .end local v24    # "foregroundBytes":J
    .end local v32    # "totalBytes":J
    :goto_1
    if-eqz v12, :cond_6

    iget-wide v14, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v16, v0

    add-long v32, v14, v16

    .line 1544
    .restart local v32    # "totalBytes":J
    :goto_2
    move-wide/from16 v0, v32

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 1545
    .local v34, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "3g"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "4g"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1549
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1550
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectLeft()J

    move-result-wide v26

    .line 1559
    .local v26, "left":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectRight()J

    move-result-wide v28

    .line 1560
    .local v28, "right":J
    const v30, 0x7f0c08da

    .line 1561
    .local v30, "summaryRes":I
    move-wide/from16 v0, v26

    move-wide/from16 v2, v28

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/exsettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v21

    .line 1562
    .local v21, "rangePhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const v13, 0x7f0c08da

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v34, v14, v15

    const/4 v15, 0x1

    aput-object v21, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/exsettings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1565
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1566
    return-void

    .line 1500
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "now":J
    .end local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v21    # "rangePhrase":Ljava/lang/String;
    .end local v26    # "left":J
    .end local v28    # "right":J
    .end local v30    # "summaryRes":I
    .end local v32    # "totalBytes":J
    .end local v34    # "totalPhrase":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v6

    .line 1501
    .restart local v6    # "start":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v8

    .restart local v8    # "end":J
    goto/16 :goto_0

    .line 1530
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v10    # "now":J
    .restart local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    if-eqz v5, :cond_4

    .line 1531
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v13, v5, Lcom/android/exsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v20, 0x0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v20}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 1534
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    if-nez v5, :cond_5

    .line 1535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1539
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v14, v6, v7, v8, v9}, Lcom/android/exsettings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v5, v13, v14, v15}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 1543
    :cond_6
    const-wide/16 v32, 0x0

    goto/16 :goto_2

    .line 1552
    .restart local v32    # "totalBytes":J
    .restart local v34    # "totalPhrase":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1555
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private updateMenuTitles()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0c089b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 696
    :goto_0
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0c089e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 702
    :goto_1
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowDataUsage:Landroid/view/MenuItem;

    const v1, 0x7f0c0b80

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 708
    :goto_2
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0c08a0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 713
    :goto_3
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0c089a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0c089d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowDataUsage:Landroid/view/MenuItem;

    const v1, 0x7f0c0b7f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0c089f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1245
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1246
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1248
    .local v1, "disableAtLimitVisible":Z
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1249
    const/4 v0, 0x0

    .line 1250
    const/4 v1, 0x0

    .line 1254
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1255
    iput-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    .line 1256
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/exsettings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1257
    iput-boolean v4, p0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    .line 1260
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/exsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 1262
    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v2}, Lcom/android/exsettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1263
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v2, :cond_4

    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1264
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1265
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v3, v2}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1274
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    if-eqz p1, :cond_3

    .line 1279
    invoke-direct {p0, v2}, Lcom/android/exsettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1281
    :cond_3
    return-void

    :cond_4
    move v3, v4

    .line 1263
    goto :goto_0

    .line 1270
    :cond_5
    const/4 v1, 0x0

    .line 1271
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1

    :cond_6
    move v3, v5

    .line 1274
    goto :goto_2

    :cond_7
    move v4, v5

    .line 1275
    goto :goto_3
.end method

.method private updateTabs()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 834
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 835
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 837
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 839
    .local v4, "simCount":I
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 840
    .local v6, "sirs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v6, :cond_1

    .line 841
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 842
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-le v4, v8, :cond_0

    move v7, v8

    :goto_1
    invoke-direct {p0, v0, v5, v7}, Lcom/android/exsettings/DataUsageSummary;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    goto :goto_0

    :cond_0
    move v7, v9

    goto :goto_1

    .line 846
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-boolean v7, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v7, :cond_2

    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 847
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "wifi"

    const v11, 0x7f0c08b4

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 850
    :cond_2
    iget-boolean v7, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 851
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "ethernet"

    const v11, 0x7f0c08b5

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 854
    :cond_3
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-nez v7, :cond_5

    move v3, v8

    .line 855
    .local v3, "noTabs":Z
    :goto_2
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-le v7, v8, :cond_6

    move v2, v8

    .line 856
    .local v2, "multipleTabs":Z
    :goto_3
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_7

    :goto_4
    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 857
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 858
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 860
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateBody()V

    .line 864
    :goto_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 871
    :cond_4
    :goto_6
    return-void

    .end local v2    # "multipleTabs":Z
    .end local v3    # "noTabs":Z
    :cond_5
    move v3, v9

    .line 854
    goto :goto_2

    .restart local v3    # "noTabs":Z
    :cond_6
    move v2, v9

    .line 855
    goto :goto_3

    .line 856
    .restart local v2    # "multipleTabs":Z
    :cond_7
    const/16 v9, 0x8

    goto :goto_4

    .line 862
    :cond_8
    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_5

    .line 865
    :cond_9
    if-eqz v3, :cond_4

    .line 867
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateBody()V

    goto :goto_6
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 322
    const/16 v0, 0x25

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2704
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2705
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2708
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2710
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2721
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2713
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 2714
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2717
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 2721
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/android/exsettings/HighlightingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 388
    .local v1, "activity":Landroid/app/Activity;
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 389
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v2, v3

    .line 391
    .local v2, "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 401
    .local v0, "actionBarHeight":I
    :goto_0
    return-void

    .line 394
    .end local v0    # "actionBarHeight":I
    .end local v2    # "titleTextSize":F
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v2, v3

    .line 396
    .restart local v2    # "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "actionBarHeight":I
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 327
    invoke-super {p0, p1}, Lcom/android/exsettings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 330
    .local v1, "context":Landroid/content/Context;
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 332
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 334
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 335
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 336
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 338
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "data_usage"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 340
    new-instance v3, Lcom/android/exsettings/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v3, v4}, Lcom/android/exsettings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;

    .line 341
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/exsettings/net/NetworkPolicyEditor;->read()V

    .line 343
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    .line 344
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DataUsageSummary;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    .line 347
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_wifi"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    .line 363
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_data_usage"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    .line 364
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_ethernet"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    .line 367
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 368
    iput-boolean v6, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    .line 369
    iput-boolean v6, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    .line 372
    :cond_1
    new-instance v3, Lcom/android/exsettings/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/exsettings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettings/net/UidDetailProvider;

    .line 374
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 375
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 376
    const-string v3, "showAppImmediatePkg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    .line 379
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 380
    return-void

    .line 351
    .end local v0    # "arguments":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 358
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 359
    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 623
    const v0, 0x7f140001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 624
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x7f120000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 430
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 431
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f040053

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 434
    .local v3, "view":Landroid/view/View;
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 435
    const v4, 0x7f120099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 436
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 437
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 441
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x2000000

    if-ne v4, v7, :cond_2

    move v1, v5

    .line 443
    .local v1, "shouldInset":Z
    :goto_0
    iput v6, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    .line 446
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v6}, Lcom/android/exsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 448
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 449
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 451
    const v4, 0x7f040051

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 452
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 454
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 455
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 456
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 458
    iget v4, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    .line 460
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/android/exsettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 461
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 466
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f120094

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 468
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f120095

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 470
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 471
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 472
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 473
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/exsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 474
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const-string v7, "data_usage_enable_mobile"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 476
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 477
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 478
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f10002f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 486
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 487
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 488
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/exsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 489
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const-string v7, "data_usage_disable_mobile_limit"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 491
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 492
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 493
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    const v4, 0x7f04004f

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 497
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const-string v7, "data_usage_cycle"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 498
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f12008d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 499
    new-instance v4, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    .line 500
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 501
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 502
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f12008e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 503
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    const v4, 0x7f120086

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    .line 505
    const v4, 0x7f120087

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDetailedSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    .line 508
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f120084

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    .line 509
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mChartListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/android/exsettings/widget/ChartDataUsageView;->setListener(Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 510
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v4, v10}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 514
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f12008f

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 515
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120011

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 516
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120090

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 517
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120091

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 518
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120092

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 519
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120093

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 521
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120013

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 523
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    .line 524
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 525
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-static {p1, v4, v6}, Lcom/android/exsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 527
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 528
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 529
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f120096

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 534
    iget-boolean v4, p0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    invoke-direct {p0, v4}, Lcom/android/exsettings/DataUsageSummary;->setSelectableDataUsageViewVisible(Z)V

    .line 536
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f120097

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 537
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 538
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f120098

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 540
    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 541
    .local v2, "um":Landroid/os/UserManager;
    new-instance v4, Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettings/net/UidDetailProvider;

    iget v6, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v2, v5, v6}, Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/exsettings/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAdapter:Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    .line 542
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 543
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAdapter:Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 545
    invoke-direct {p0, v3}, Lcom/android/exsettings/DataUsageSummary;->showRequestedAppIfNeeded(Landroid/view/View;)V

    .line 547
    return-object v3

    .end local v1    # "shouldInset":Z
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_2
    move v1, v6

    .line 441
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 786
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 787
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 789
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/exsettings/net/UidDetailProvider;->clearCache()V

    .line 790
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettings/net/UidDetailProvider;

    .line 792
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 794
    invoke-super {p0}, Lcom/android/exsettings/HighlightingFragment;->onDestroy()V

    .line 795
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 717
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v10, v6

    .line 781
    :goto_0
    :pswitch_0
    return v10

    .line 719
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    move v9, v10

    .line 720
    .local v9, "restrictBackground":Z
    :goto_1
    if-eqz v9, :cond_1

    .line 721
    invoke-static {p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    goto :goto_0

    .end local v9    # "restrictBackground":Z
    :cond_0
    move v9, v6

    .line 719
    goto :goto_1

    .line 724
    .restart local v9    # "restrictBackground":Z
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 729
    .end local v9    # "restrictBackground":Z
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    if-nez v1, :cond_2

    move v6, v10

    :cond_2
    iput-boolean v6, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    .line 730
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 731
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 732
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 736
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    if-nez v1, :cond_3

    move v6, v10

    :cond_3
    iput-boolean v6, p0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    .line 737
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_data_usage"

    iget-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 738
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 739
    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowDataUsage:Z

    invoke-direct {p0, v1}, Lcom/android/exsettings/DataUsageSummary;->setSelectableDataUsageViewVisible(Z)V

    .line 740
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V

    goto :goto_0

    .line 744
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    if-nez v1, :cond_4

    move v6, v10

    :cond_4
    iput-boolean v6, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    .line 745
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 746
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 747
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 755
    :pswitch_5
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v8, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 758
    invoke-virtual {p0, v8}, Lcom/android/exsettings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 762
    .end local v8    # "intent":Landroid/content/Intent;
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 763
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c08dc

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 769
    .end local v0    # "sa":Lcom/android/exsettings/SettingsActivity;
    :pswitch_7
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 770
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qti.appnetaccess"

    const-string v2, "com.qualcomm.qti.appnetaccess.NetworkControl"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v1, "android.intent.networkcontrol"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v8}, Lcom/android/exsettings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 775
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 776
    .local v7, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "DataUsage"

    const-string v2, "activity NetworkControl not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x7f120333
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 629
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 630
    .local v0, "appDetailMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-nez v10, :cond_2

    move v5, v8

    .line 632
    .local v5, "isOwner":Z
    :goto_0
    const v10, 0x7f120335

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 633
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 634
    iget-object v11, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_3

    move v10, v8

    :goto_1
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 639
    :goto_2
    const v10, 0x7f120337

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 640
    invoke-virtual {p0, v1}, Lcom/android/exsettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 641
    iget-object v11, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_5

    move v10, v8

    :goto_3
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 646
    :goto_4
    const v10, 0x7f120334

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 647
    iget-object v11, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    move v10, v8

    :goto_5
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 650
    const v10, 0x7f120338

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 651
    .local v6, "metered":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 652
    :cond_0
    if-nez v0, :cond_8

    move v10, v8

    :goto_6
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 658
    :goto_7
    const v10, 0x7f120339

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 659
    iget-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 661
    const v10, 0x7f12033a

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 662
    iget-object v11, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez v0, :cond_a

    if-eqz v5, :cond_a

    move v10, v8

    :goto_8
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    const v10, 0x7f12033b

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 667
    .local v3, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0989

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "helpUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 668
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v3, v4, v11}, Lcom/android/exsettings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    :goto_9
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100014

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 674
    .local v2, "dataSelectionEnable":Z
    const v10, 0x7f120336

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowDataUsage:Landroid/view/MenuItem;

    .line 675
    iget-object v11, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowDataUsage:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_1
    if-nez v0, :cond_c

    if-eqz v2, :cond_c

    move v10, v8

    :goto_a
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 678
    const v10, 0x7f120333

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 680
    .local v7, "networkaccess":Landroid/view/MenuItem;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100021

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 681
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 686
    :goto_b
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 687
    return-void

    .end local v2    # "dataSelectionEnable":Z
    .end local v3    # "help":Landroid/view/MenuItem;
    .end local v4    # "helpUrl":Ljava/lang/String;
    .end local v5    # "isOwner":Z
    .end local v6    # "metered":Landroid/view/MenuItem;
    .end local v7    # "networkaccess":Landroid/view/MenuItem;
    :cond_2
    move v5, v9

    .line 630
    goto/16 :goto_0

    .restart local v5    # "isOwner":Z
    :cond_3
    move v10, v9

    .line 634
    goto/16 :goto_1

    .line 636
    :cond_4
    iget-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    move v10, v9

    .line 641
    goto/16 :goto_3

    .line 643
    :cond_6
    iget-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_7
    move v10, v9

    .line 647
    goto/16 :goto_5

    .restart local v6    # "metered":Landroid/view/MenuItem;
    :cond_8
    move v10, v9

    .line 652
    goto/16 :goto_6

    .line 654
    :cond_9
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    :cond_a
    move v10, v9

    .line 662
    goto/16 :goto_8

    .line 670
    .restart local v3    # "help":Landroid/view/MenuItem;
    .restart local v4    # "helpUrl":Ljava/lang/String;
    :cond_b
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .restart local v2    # "dataSelectionEnable":Z
    :cond_c
    move v10, v9

    .line 675
    goto :goto_a

    .line 683
    .restart local v7    # "networkaccess":Landroid/view/MenuItem;
    :cond_d
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 589
    invoke-super {p0}, Lcom/android/exsettings/HighlightingFragment;->onResume()V

    .line 591
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/exsettings/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/DataUsageSummary$1;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 599
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$2;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 619
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 576
    invoke-super {p0, p1}, Lcom/android/exsettings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 580
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 584
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateTabs()V

    .line 585
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1223
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 1224
    return-void
.end method
