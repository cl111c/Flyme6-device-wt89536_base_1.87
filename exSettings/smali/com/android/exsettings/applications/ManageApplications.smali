.class public Lcom/android/exsettings/applications/ManageApplications;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final FILTERS:[Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_LABELS:[I

.field private static isManageApps:Z


# instance fields
.field public mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/exsettings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field public mSearchTitle:Landroid/widget/TextView;

.field private mSearchView:Landroid/widget/LinearLayout;

.field private mSearchappEnabled:Z

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field public mTextView:Landroid/widget/EditText;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x3

    .line 109
    const-string v0, "ManageApplications"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettings/applications/ManageApplications;->DEBUG:Z

    .line 151
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/applications/ManageApplications;->FILTER_LABELS:[I

    .line 170
    new-array v0, v1, [Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/exsettings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    sget-object v4, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v4}, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_PERSONAL_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    sget-object v4, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v4}, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/exsettings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/exsettings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/exsettings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_NO_PEEK:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/exsettings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SENSITIVE:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/exsettings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/exsettings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/applications/ManageApplications;->FILTERS:[Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    return-void

    .line 151
    :array_0
    .array-data 4
        0x7f0c0b12
        0x7f0c0ad8
        0x7f0c0ad8
        0x7f0c0ad9
        0x7f0c0578
        0x7f0c0adc
        0x7f0c0add
        0x7f0c0adf
        0x7f0c0ade
        0x7f0c0ada
        0x7f0c0adb
        0x7f0c0ae0
        0x7f0c0ad8
        0x7f0c0b5a
        0x7f0c0b60
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 191
    const v0, 0x7f120340

    iput v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    .line 790
    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exsettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/exsettings/applications/ManageApplications;->isManageApps:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/applications/ManageApplications;)Lcom/android/exsettings/notification/NotificationBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mNotifBackend:Lcom/android/exsettings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method private createHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 380
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 381
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f12009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 382
    .local v1, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040013

    invoke-virtual {v2, v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    .line 384
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v3, 0x7f120022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 385
    new-instance v2, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/exsettings/applications/ManageApplications;)V

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    .line 386
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 387
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 388
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 390
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 391
    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v2, v4, :cond_1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 393
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 394
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 397
    :cond_1
    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v2, v4, :cond_2

    .line 398
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v6}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 399
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 400
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 401
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 403
    :cond_2
    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v2, v6, :cond_3

    .line 404
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v4}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 406
    :cond_3
    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 407
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    new-instance v3, Lcom/android/exsettingslib/applications/ApplicationsState$VolumeFilter;

    iget-object v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/exsettingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V

    .line 409
    :cond_4
    return-void
.end method

.method private getDefaultFilter()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 433
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 423
    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 425
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 427
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 429
    :pswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 431
    :pswitch_5
    const/16 v0, 0xe

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showInputmethod()V
    .locals 4

    .prologue
    .line 766
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mSearchView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mSearchView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 768
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 770
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 771
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/android/exsettings/applications/ManageApplications$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/applications/ManageApplications$2;-><init>(Lcom/android/exsettings/applications/ManageApplications;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 779
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 6
    .param p2, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/exsettings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    .line 570
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    .prologue
    .line 534
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 562
    const-class v0, Lcom/android/exsettings/applications/InstalledAppDetails;

    const v1, 0x7f0c054c

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 565
    :goto_0
    return-void

    .line 536
    :pswitch_0
    const-class v0, Lcom/android/exsettings/notification/AppNotificationSettings;

    const v1, 0x7f0c0a37

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 540
    :pswitch_1
    const-class v0, Lcom/android/exsettings/applications/AppLaunchSettings;

    const v1, 0x7f0c054e

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 543
    :pswitch_2
    const-class v0, Lcom/android/exsettings/applications/UsageAccessDetails;

    const v1, 0x7f0c0b02

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 546
    :pswitch_3
    const-class v0, Lcom/android/exsettings/applications/AppStorageSettings;

    const v1, 0x7f0c03d9

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 549
    :pswitch_4
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFinishAfterDialog:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/exsettings/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 553
    :pswitch_5
    const-class v0, Lcom/android/exsettings/applications/DrawOverlayDetails;

    const v1, 0x7f0c0b58

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 556
    :pswitch_6
    const-class v0, Lcom/android/exsettings/applications/WriteSettingsDetails;

    const v1, 0x7f0c0b62

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    const/16 v0, 0xdd

    .line 439
    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 457
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 441
    :pswitch_1
    const/16 v0, 0x41

    goto :goto_0

    .line 443
    :pswitch_2
    const/16 v0, 0x85

    goto :goto_0

    .line 445
    :pswitch_3
    const/16 v0, 0x8f

    goto :goto_0

    .line 447
    :pswitch_4
    const/16 v0, 0xb6

    goto :goto_0

    .line 449
    :pswitch_5
    const/16 v0, 0x5f

    goto :goto_0

    .line 451
    :pswitch_6
    const/16 v0, 0xb8

    goto :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 516
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 517
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/exsettings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 521
    :cond_2
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/exsettings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_0

    .line 527
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 252
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0, v4}, Lcom/android/exsettings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/exsettingslib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

    .line 258
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 259
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "className":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 262
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 264
    :cond_0
    const-class v3, Lcom/android/exsettings/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    iput-boolean v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    .line 266
    sput-boolean v4, Lcom/android/exsettings/applications/ManageApplications;->isManageApps:Z

    .line 298
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    .line 300
    if-eqz p1, :cond_1

    .line 301
    const-string v3, "sortOrder"

    iget v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    .line 302
    const-string v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0597

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 307
    new-instance v3, Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/exsettings/applications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    .line 308
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mSearchappEnabled:Z

    .line 310
    return-void

    .line 260
    .end local v1    # "className":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    .restart local v1    # "className":Ljava/lang/String;
    :cond_3
    const-class v3, Lcom/android/exsettings/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    iput v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 269
    new-instance v3, Lcom/android/exsettings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/exsettings/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mNotifBackend:Lcom/android/exsettings/notification/NotificationBackend;

    goto :goto_1

    .line 270
    :cond_4
    const-class v3, Lcom/android/exsettings/Settings$DomainsURLsAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 271
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    goto :goto_1

    .line 272
    :cond_5
    const-class v3, Lcom/android/exsettings/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 273
    if-eqz v0, :cond_6

    const-string v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 274
    const-string v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 275
    const-string v3, "volumeName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    .line 276
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 281
    :goto_2
    const v3, 0x7f120341

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_1

    .line 279
    :cond_6
    iput v5, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    goto :goto_2

    .line 282
    :cond_7
    const-class v3, Lcom/android/exsettings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 283
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 284
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c07ce

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 285
    :cond_8
    const-class v3, Lcom/android/exsettings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 286
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 288
    iput-boolean v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_1

    .line 289
    :cond_9
    const-class v3, Lcom/android/exsettings/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 290
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 291
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0b53

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 292
    :cond_a
    const-class v3, Lcom/android/exsettings/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 293
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 294
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0b61

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 296
    :cond_b
    iput v5, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 574
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 582
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_1

    const v0, 0x7f0c0982

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/android/exsettings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 579
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 580
    const v0, 0x7f140002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    goto :goto_0

    .line 577
    :cond_1
    const v0, 0x7f0c0981

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 317
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 319
    const v2, 0x7f04008b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 320
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f120120

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 321
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f120122

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mSearchView:Landroid/widget/LinearLayout;

    .line 324
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f120124

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    .line 325
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f120123

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mSearchTitle:Landroid/widget/TextView;

    .line 326
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/exsettings/applications/ManageApplications$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/applications/ManageApplications$1;-><init>(Lcom/android/exsettings/applications/ManageApplications;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f120125

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 343
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 345
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 346
    .local v0, "emptyView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 347
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 350
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 351
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 352
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 353
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 354
    iput-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 355
    new-instance v2, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/ManageApplications;I)V

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    .line 356
    if-eqz p3, :cond_1

    .line 357
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    const-string v3, "hasEntries"

    invoke-virtual {p3, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z
    invoke-static {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->access$002(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 361
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 363
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v2, v3, v6}, Lcom/android/exsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 368
    .end local v0    # "emptyView":Landroid/view/View;
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_2
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_3

    .line 369
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 372
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications;->createHeader()V

    .line 374
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {v2, p3}, Lcom/android/exsettings/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 376
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 592
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onDestroyView()V

    .line 507
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 510
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 511
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exsettings/applications/ManageApplications;->isManageApps:Z

    .line 512
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p3, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 656
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 657
    iget-object v1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    .line 658
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 660
    .end local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    .line 665
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    .line 666
    sget-boolean v0, Lcom/android/exsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 615
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 616
    .local v7, "menuId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v8, v1

    .line 647
    :goto_0
    return v8

    .line 619
    :pswitch_0
    iput v7, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    .line 620
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 646
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    goto :goto_0

    .line 626
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_1

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    .line 627
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 626
    goto :goto_2

    .line 630
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ResetAppsHelper;->buildResetDialog()V

    goto :goto_0

    .line 633
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    const-class v1, Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0ae3

    const/4 v6, 0x2

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 638
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mSearchappEnabled:Z

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications;->showInputmethod()V

    goto :goto_1

    .line 616
    :pswitch_data_0
    .packed-switch 0x7f12033c
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 491
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onPause()V

    .line 492
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 495
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 587
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 463
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 464
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateView()V

    .line 465
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 466
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 474
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    # invokes: Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->access$100(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)V

    .line 478
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 482
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 483
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 484
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    const-string v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 486
    const-string v0, "hasEntries"

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z
    invoke-static {v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->access$000(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 487
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onStop()V

    .line 500
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ResetAppsHelper;->stop()V

    .line 501
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 413
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 414
    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f12009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 416
    .local v0, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    invoke-static {v1, v3, v2, v3, v0}, Lcom/android/exsettings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 418
    .end local v0    # "pinnedHeader":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2
    .param p1, "hasDisabledApps"    # Z

    .prologue
    .line 682
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 686
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    goto :goto_0
.end method

.method updateOptionsMenu()V
    .locals 7

    .prologue
    const v6, 0x7f120340

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 611
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f12033d

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mSearchappEnabled:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 600
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f12033c

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 602
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    if-eq v0, v6, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 604
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f120341

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    const v4, 0x7f120341

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 607
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f12033e

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-eq v0, v5, :cond_4

    move v0, v1

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 609
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f12033f

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-eq v3, v5, :cond_5

    :goto_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 600
    goto :goto_1

    :cond_2
    move v0, v2

    .line 602
    goto :goto_2

    :cond_3
    move v0, v2

    .line 604
    goto :goto_3

    :cond_4
    move v0, v2

    .line 607
    goto :goto_4

    :cond_5
    move v1, v2

    .line 609
    goto :goto_5
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 675
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 676
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 679
    :cond_0
    return-void
.end method
