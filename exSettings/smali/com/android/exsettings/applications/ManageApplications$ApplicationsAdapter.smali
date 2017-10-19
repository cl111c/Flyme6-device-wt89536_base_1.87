.class Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

.field private mFilter:Landroid/widget/Filter;

.field private mFilterMode:I

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mLastSortMode:I

.field private final mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

.field private mOverrideFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResumed:Z

.field private final mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/exsettingslib/applications/ApplicationsState;

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/ManageApplications;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/exsettingslib/applications/ApplicationsState;
    .param p2, "manageApplications"    # Lcom/android/exsettings/applications/ManageApplications;
    .param p3, "filterMode"    # I

    .prologue
    .line 839
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 803
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 804
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 811
    new-instance v0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 840
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    .line 841
    invoke-virtual {p1, p0}, Lcom/android/exsettingslib/applications/ApplicationsState;->newSession(Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;)Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    .line 842
    iput-object p2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    .line 843
    invoke-virtual {p2}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 844
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 845
    iput p3, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 846
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 847
    new-instance v0, Lcom/android/exsettings/applications/AppStateNotificationBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mNotifBackend:Lcom/android/exsettings/notification/NotificationBackend;
    invoke-static {p2}, Lcom/android/exsettings/applications/ManageApplications;->access$700(Lcom/android/exsettings/applications/ManageApplications;)Lcom/android/exsettings/notification/NotificationBackend;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/exsettings/applications/AppStateNotificationBridge;-><init>(Landroid/content/pm/PackageManager;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;Lcom/android/exsettings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    .line 860
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 850
    new-instance v0, Lcom/android/exsettings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/exsettings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 852
    new-instance v0, Lcom/android/exsettings/applications/AppStatePowerBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, p0}, Lcom/android/exsettings/applications/AppStatePowerBridge;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 854
    new-instance v0, Lcom/android/exsettings/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/exsettings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 855
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 856
    new-instance v0, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 858
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 790
    iput-boolean p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/exsettings/applications/AppStateBaseBridge;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0c0aec

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1205
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 1206
    .local v0, "domainStatus":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1207
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1217
    :goto_0
    return-object v2

    .line 1211
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1}, Lcom/android/exsettings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 1212
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1213
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1214
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1215
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0aed

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1217
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0aee

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateLoading()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 981
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->access$1000(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->access$900(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/exsettings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 984
    return-void

    :cond_0
    move v0, v1

    .line 981
    goto :goto_0
.end method

.method private updateSummary(Lcom/android/exsettings/applications/AppViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/exsettings/applications/AppViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 1149
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 1187
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/exsettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 1190
    :goto_0
    return-void

    .line 1151
    :pswitch_1
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v1, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/exsettings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/exsettings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1155
    :cond_0
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1160
    :pswitch_2
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1164
    :pswitch_3
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1165
    iget-object v1, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    new-instance v2, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;

    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v2, v0}, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v2}, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0a94

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0a95

    goto :goto_1

    .line 1169
    :cond_2
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1174
    :pswitch_4
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/exsettings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1178
    :pswitch_5
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/exsettings/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1182
    :pswitch_6
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/exsettings/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move-object v2, p2

    .line 1002
    :cond_1
    return-object v2

    .line 991
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exsettingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 993
    .local v4, "prefixStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .local v2, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 996
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 997
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 998
    .local v3, "nlabel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 999
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1101
    const/4 v0, 0x0

    return v0
.end method

.method public getAppEntry(I)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1116
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/exsettings/applications/ManageApplications;->access$1300(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/exsettings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/exsettings/applications/AppViewHolder;

    move-result-object v1

    .line 1118
    .local v1, "holder":Lcom/android/exsettings/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/exsettings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 1121
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 1122
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 1123
    :try_start_0
    iput-object v0, v1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 1124
    iget-object v2, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1125
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/exsettingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)V

    .line 1128
    iget-object v2, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1129
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/exsettings/applications/AppViewHolder;)V

    .line 1132
    iget-object v2, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 1133
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1134
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0c057d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1141
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1143
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1145
    return-object p2

    .line 1135
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 1136
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1137
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0c057c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1141
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1139
    :cond_3
    :try_start_2
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 1106
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v2, v2, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return v1

    .line 1109
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 1110
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    invoke-static {}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    iget-object v3, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 1078
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v1, 0x7f120341

    if-ne v0, v1, :cond_0

    .line 1079
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1081
    :cond_0
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 1009
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1010
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .prologue
    .line 1071
    # getter for: Lcom/android/exsettings/applications/ManageApplications;->isManageApps:Z
    invoke-static {}, Lcom/android/exsettings/applications/ManageApplications;->access$1200()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->access$800(Lcom/android/exsettings/applications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1072
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1074
    :cond_1
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    .prologue
    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 1046
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1200
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 1041
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1035
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1050
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1051
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/AppViewHolder;

    .line 1052
    .local v0, "holder":Lcom/android/exsettings/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1053
    iget-object v3, v0, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 1054
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/exsettings/applications/AppViewHolder;)V

    .line 1055
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    iget-object v2, v0, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/exsettings/applications/ManageApplications;->access$1100(Lcom/android/exsettings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v3, 0x7f120341

    if-ne v2, v3, :cond_0

    .line 1062
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1067
    .end local v0    # "holder":Lcom/android/exsettings/applications/AppViewHolder;
    :cond_0
    return-void

    .line 1055
    .restart local v0    # "holder":Lcom/android/exsettings/applications/AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1050
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->access$1000(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->access$1000(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1022
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->access$900(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->access$900(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->access$1000(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 1028
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 1029
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 1030
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1015
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 890
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->pause()V

    .line 891
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppStateBaseBridge;->pause()V

    .line 895
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .prologue
    .line 905
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    iput p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 909
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 8
    .param p1, "eraseold"    # Z

    .prologue
    const/4 v7, 0x1

    .line 913
    iget-boolean v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-eqz v5, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    sget-boolean v5, Lcom/android/exsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ManageApplications"

    const-string v6, "Rebuilding app list..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 922
    .local v1, "emulated":Z
    if-eqz v1, :cond_7

    .line 923
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 927
    :goto_1
    sget-object v5, Lcom/android/exsettings/applications/ManageApplications;->FILTERS:[Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    iget v6, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    aget-object v3, v5, v6

    .line 928
    .local v3, "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    if-eqz v5, :cond_3

    .line 929
    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 931
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z
    invoke-static {v5}, Lcom/android/exsettings/applications/ManageApplications;->access$800(Lcom/android/exsettings/applications/ManageApplications;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 932
    new-instance v4, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v5, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v4, v3, v5}, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V

    .end local v3    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    .local v4, "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    move-object v3, v4

    .line 935
    .end local v4    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    .restart local v3    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    :cond_4
    iget v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v5, :pswitch_data_0

    .line 950
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 953
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v5, v3, v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 955
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_5

    if-eqz p1, :cond_0

    .line 959
    :cond_5
    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 960
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    .line 961
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v6}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 965
    :goto_3
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 967
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/exsettings/applications/ManageApplications;->access$900(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    .line 969
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/exsettings/applications/ManageApplications;->access$1000(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    # getter for: Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v6}, Lcom/android/exsettings/applications/ManageApplications;->access$900(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v6

    invoke-static {v5, v6, v7, v7}, Lcom/android/exsettings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 972
    :cond_6
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v5, v5, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 977
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget-object v6, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v6}, Lcom/android/exsettingslib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/exsettings/applications/ManageApplications;->setHasDisabled(Z)V

    goto/16 :goto_0

    .line 925
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    :cond_7
    iput v7, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 937
    .restart local v3    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    :pswitch_0
    iget v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v5, :pswitch_data_1

    .line 945
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 946
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 939
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_1
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 940
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 942
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_2
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 943
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 963
    .restart local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :cond_8
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_3

    .line 935
    :pswitch_data_0
    .packed-switch 0x7f120341
        :pswitch_0
    .end packed-switch

    .line 937
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->release()V

    .line 899
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppStateBaseBridge;->release()V

    .line 902
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 4
    .param p1, "sort"    # I

    .prologue
    const/4 v3, 0x1

    .line 873
    sget-boolean v0, Lcom/android/exsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    .line 875
    iput-boolean v3, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 876
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->resume()V

    .line 877
    iput p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 878
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppStateBaseBridge;->resume()V

    .line 881
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method

.method public setFilter(I)V
    .locals 1
    .param p1, "filter"    # I

    .prologue
    .line 868
    iput p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 869
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 870
    return-void
.end method

.method public setFilterPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 833
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 834
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 836
    return-void
.end method

.method public setOverrideFilter(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V
    .locals 1
    .param p1, "overrideFilter"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 864
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 865
    return-void
.end method
