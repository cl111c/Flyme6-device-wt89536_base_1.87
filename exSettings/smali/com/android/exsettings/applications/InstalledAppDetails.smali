.class public Lcom/android/exsettings/applications/InstalledAppDetails;
.super Lcom/android/exsettings/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/exsettings/applications/InstalledAppDetails$BatteryUpdater;,
        Lcom/android/exsettings/applications/InstalledAppDetails$MemoryUpdater;
    }
.end annotation


# instance fields
.field private final mBackend:Lcom/android/exsettings/notification/NotificationBackend;

.field private mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryPreference:Landroid/preference/Preference;

.field private mChartData:Lcom/android/exsettings/net/ChartData;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/exsettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPreference:Landroid/preference/Preference;

.field private mDisableAfterUninstall:Z

.field private mForceStopButton:Landroid/widget/Button;

.field private mHeader:Lcom/android/exsettings/applications/LayoutPreference;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mLaunchPreference:Landroid/preference/Preference;

.field private mMemoryPreference:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private final mPermissionCallback:Lcom/android/exsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mPermissionsPreference:Landroid/preference/Preference;

.field private mShowUninstalled:Z

.field private mSipper:Lcom/android/internal/os/BatterySipper;

.field protected mStats:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

.field protected mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStoragePreference:Landroid/preference/Preference;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppInfoBase;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 147
    new-instance v0, Lcom/android/exsettings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/exsettings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBackend:Lcom/android/exsettings/notification/NotificationBackend;

    .line 938
    new-instance v0, Lcom/android/exsettings/applications/InstalledAppDetails$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/InstalledAppDetails$5;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 972
    new-instance v0, Lcom/android/exsettings/applications/InstalledAppDetails$6;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/InstalledAppDetails$6;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 979
    new-instance v0, Lcom/android/exsettings/applications/InstalledAppDetails$7;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/InstalledAppDetails$7;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/exsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exsettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/exsettings/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/exsettings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/exsettings/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/exsettings/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/exsettings/applications/InstalledAppDetails;Lcom/android/exsettings/net/ChartData;)Lcom/android/exsettings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Lcom/android/exsettings/net/ChartData;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mChartData:Lcom/android/exsettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/exsettings/applications/InstalledAppDetails;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 667
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-direct {p0, v6}, Lcom/android/exsettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 683
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 673
    invoke-direct {p0, v5}, Lcom/android/exsettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 675
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 677
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 647
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 649
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 650
    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 651
    .local v1, "newEnt":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 652
    iput-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 655
    return-void
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mChartData:Lcom/android/exsettings/net/ChartData;

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v1, v1, Lcom/android/exsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v2

    .line 564
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 565
    const v1, 0x7f0c0b44

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    .end local v2    # "totalBytes":J
    :goto_0
    return-object v1

    .line 567
    .restart local v2    # "totalBytes":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 568
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0c0ac8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mChartData:Lcom/android/exsettings/net/ChartData;

    iget-object v6, v6, Lcom/android/exsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v6

    const v8, 0x10010

    invoke-static {v0, v6, v7, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v1, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 573
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "totalBytes":J
    :cond_1
    const v1, 0x7f0c0596

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNotificationSummary(Lcom/android/exsettings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "appRow"    # Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 818
    iget-boolean v1, p0, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v1, :cond_0

    .line 819
    const v1, 0x7f0c0ace

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 841
    :goto_0
    return-object v1

    .line 821
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v0, "notifSummary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-boolean v1, p0, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->priority:Z

    if-eqz v1, :cond_1

    .line 823
    const v1, 0x7f0c0ad0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_1
    iget-boolean v1, p0, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->sensitive:Z

    if-eqz v1, :cond_2

    .line 826
    const v1, 0x7f0c0acf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_2
    iget-boolean v1, p0, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->peekable:Z

    if-nez v1, :cond_3

    .line 829
    const v1, 0x7f0c0ad1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 841
    const v1, 0x7f0c0acd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 833
    :pswitch_0
    const v1, 0x7f0c0ad3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 836
    :pswitch_1
    const v1, 0x7f0c0ad2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 839
    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 831
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNotificationSummary(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/exsettings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "appEntry"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/exsettings/notification/NotificationBackend;

    .prologue
    .line 813
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v1, v2}, Lcom/android/exsettings/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 814
    .local v0, "appRow":Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    invoke-static {v0, p1}, Lcom/android/exsettings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/exsettings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 798
    invoke-static {p0}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 804
    :goto_0
    return-object v0

    .line 801
    :cond_0
    invoke-static {p0}, Lcom/android/exsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0

    .line 804
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f0c055f

    .line 163
    const/4 v0, 0x0

    .line 167
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/android/exsettings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 179
    :goto_0
    return v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 173
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    const v1, 0x7f0c0560

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleHeader()V
    .locals 3

    .prologue
    .line 362
    const-string v1, "header_view"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHeader:Lcom/android/exsettings/applications/LayoutPreference;

    .line 365
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHeader:Lcom/android/exsettings/applications/LayoutPreference;

    const v2, 0x7f120116

    invoke-virtual {v1, v2}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "btnPanel":Landroid/view/View;
    const v1, 0x7f120231

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 367
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v2, 0x7f0c0556

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 368
    const v1, 0x7f12022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 369
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 370
    return-void
.end method

.method private initUninstallButtons()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 188
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    move v3, v4

    .line 189
    .local v3, "isBundled":Z
    :goto_0
    const/4 v1, 0x1

    .line 190
    .local v1, "enabled":Z
    if-eqz v3, :cond_6

    .line 191
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/android/exsettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    .line 203
    :goto_1
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 207
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/exsettings/applications/InstalledAppDetails;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 208
    const/4 v1, 0x0

    .line 217
    :cond_1
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    if-eqz v3, :cond_8

    .line 219
    const/4 v1, 0x0

    .line 235
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v4, :cond_3

    .line 236
    const/4 v1, 0x0

    .line 239
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    if-eqz v1, :cond_4

    .line 242
    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_4
    return-void

    .end local v1    # "enabled":Z
    .end local v3    # "isBundled":Z
    :cond_5
    move v3, v5

    .line 188
    goto :goto_0

    .line 193
    .restart local v1    # "enabled":Z
    .restart local v3    # "isBundled":Z
    :cond_6
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_7

    .line 197
    const/4 v1, 0x0

    .line 199
    :cond_7
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v7, 0x7f0c055c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 221
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 223
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_a

    .line 226
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-le v6, v4, :cond_9

    move v1, v4

    :goto_3
    goto :goto_2

    :cond_9
    move v1, v5

    goto :goto_3

    .line 230
    :cond_a
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    move v1, v4

    :goto_4
    goto :goto_2

    :cond_b
    move v1, v5

    goto :goto_4
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileOrDeviceOwner(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 248
    iget-object v6, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 249
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 251
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    :goto_0
    return v5

    .line 254
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 255
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 256
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 260
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHeader:Lcom/android/exsettings/applications/LayoutPreference;

    const v2, 0x7f120015

    invoke-virtual {v1, v2}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "appSnippet":Landroid/view/View;
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)V

    .line 451
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2, v3, v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 453
    return-void

    .line 451
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "appSnippet"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "versionName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 776
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040138

    const v3, 0x1020018

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 779
    const v3, 0x1020006

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 780
    .local v1, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 783
    .local v2, "labelView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    const v3, 0x7f12026f

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 787
    .local v0, "appVersion":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 788
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 789
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0599

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 456
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 459
    .local v0, "match":I
    if-ltz v0, :cond_0

    .line 460
    const/4 v1, 0x1

    .line 467
    .end local v0    # "match":I
    :goto_0
    return v1

    .line 462
    :catch_0
    move-exception v1

    .line 467
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 7
    .param p2, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    .line 699
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 700
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v1, "uid"

    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    const-string v1, "hideInfoButton"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 704
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 705
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 706
    return-void
.end method

.method private startManagePermissionsActivity()V
    .locals 4

    .prologue
    .line 687
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const-string v2, "hideInfoButton"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 691
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "InstalledAppDetails"

    const-string v3, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 638
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 639
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 641
    iput-boolean p3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 642
    return-void
.end method

.method private updateBattery()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 548
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 550
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    .line 552
    .local v0, "dischargeAmount":I
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 554
    .local v1, "percentOfMax":I
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    const v3, 0x7f0c0b19

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 559
    .end local v0    # "dischargeAmount":I
    .end local v1    # "percentOfMax":I
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 557
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    const v3, 0x7f0c0b1a

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 664
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 7
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const v6, 0x7f0c05aa

    const v5, 0x7f0c0585

    const v4, 0x7f0c0586

    const/4 v0, 0x0

    .line 578
    packed-switch p1, :pswitch_data_0

    .line 632
    :goto_0
    return-object v0

    .line 580
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05ab

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/applications/InstalledAppDetails$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 594
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05ad

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/applications/InstalledAppDetails$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 607
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05a3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05a4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/applications/InstalledAppDetails$3;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/InstalledAppDetails$3;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 619
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c058a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c058b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/applications/InstalledAppDetails$4;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/InstalledAppDetails$4;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 287
    const/16 v0, 0x14

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 327
    iget-boolean v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->handleHeader()V

    .line 332
    const-string v0, "notification_settings"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    .line 333
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 334
    const-string v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    .line 335
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 336
    const-string v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    .line 337
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 338
    const-string v0, "data_settings"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    .line 339
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 342
    :cond_1
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    .line 343
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 345
    const-string v0, "memory"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    .line 346
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 348
    const-string v0, "preferred_settings"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    .line 349
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_3

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 425
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 426
    if-nez p1, :cond_1

    .line 427
    iget-boolean v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 428
    iput-boolean v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 433
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 434
    new-instance v2, Lcom/android/exsettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/exsettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    invoke-virtual {p0, v5, v5}, Lcom/android/exsettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 445
    :cond_1
    return-void

    .line 438
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 713
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_1

    .line 714
    invoke-virtual {p0, v3, v3}, Lcom/android/exsettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 718
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    .line 719
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 720
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 721
    iget-boolean v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_2

    .line 722
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 724
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 727
    :cond_3
    new-instance v2, Lcom/android/exsettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v1, v4}, Lcom/android/exsettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 731
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_5

    .line 732
    invoke-direct {p0, v0, v3, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 734
    :cond_5
    invoke-direct {p0, v0, v4, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 736
    :cond_6
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 737
    invoke-virtual {p0, v3, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 266
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 269
    const v2, 0x7f08002a

    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    .line 271
    invoke-static {}, Lcom/android/exsettings/Utils;->isBandwidthControlEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    .line 275
    .local v1, "statsService":Landroid/net/INetworkStatsService;
    :try_start_0
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :goto_0
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 283
    return-void

    .line 276
    .restart local v1    # "statsService":Landroid/net/INetworkStatsService;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :cond_0
    const-string v2, "data_settings"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    const/4 v0, 0x2

    const v1, 0x7f0c0562

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 376
    const v0, 0x7f0c055d

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 378
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 317
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    :cond_0
    invoke-super {p0}, Lcom/android/exsettings/applications/AppInfoBase;->onDestroy()V

    .line 323
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 420
    :goto_0
    return v0

    .line 414
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 417
    :pswitch_1
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 960
    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 961
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 962
    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 963
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v3, v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 964
    .local v0, "newEnt":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 965
    iput-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 967
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exsettings/applications/AppStorageSettings;->getSummary(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 969
    .end local v0    # "newEnt":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v2    # "userId":I
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 311
    invoke-super {p0}, Lcom/android/exsettings/applications/AppInfoBase;->onPause()V

    .line 312
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 744
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 745
    const-class v1, Lcom/android/exsettings/applications/AppStorageSettings;

    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/exsettings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 771
    :goto_0
    return v6

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 747
    const-class v1, Lcom/android/exsettings/notification/AppNotificationSettings;

    const v3, 0x7f0c0a37

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/exsettings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 750
    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    goto :goto_0

    .line 751
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_3

    .line 752
    const-class v1, Lcom/android/exsettings/applications/AppLaunchSettings;

    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/exsettings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 753
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_4

    .line 754
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/SettingsActivity;

    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/exsettings/applications/ProcStatsData;->getMemInfo()Lcom/android/exsettings/applications/ProcStatsData$MemInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStats:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    invoke-static {v1, v3, v4}, Lcom/android/exsettings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/exsettings/SettingsActivity;Lcom/android/exsettings/applications/ProcStatsData$MemInfo;Lcom/android/exsettings/applications/ProcStatsPackageEntry;)V

    goto :goto_0

    .line 756
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 757
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 758
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "showAppImmediatePkg"

    iget-object v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 762
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const v4, 0x7f0c0ac7

    invoke-virtual {p0, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 764
    .end local v0    # "sa":Lcom/android/exsettings/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_6

    .line 765
    new-instance v7, Lcom/android/exsettings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v8, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    invoke-direct {v7, v1, v4, v5, v8}, Lcom/android/exsettings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 766
    .local v7, "entry":Lcom/android/exsettings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/SettingsActivity;

    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {v1, v4, v3, v7, v6}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/exsettings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/exsettings/fuelgauge/BatteryEntry;Z)V

    goto/16 :goto_0

    .end local v7    # "entry":Lcom/android/exsettings/fuelgauge/BatteryEntry;
    :cond_6
    move v6, v3

    .line 769
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 382
    iget-boolean v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x1

    .line 386
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_2

    .line 387
    const/4 v0, 0x0

    .line 399
    :cond_1
    :goto_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_9

    .line 402
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 407
    :goto_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-nez v4, :cond_a

    :goto_4
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_3

    .line 389
    const/4 v0, 0x0

    goto :goto_1

    .line 390
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 391
    const/4 v0, 0x0

    goto :goto_1

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 393
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 394
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    const/4 v0, 0x0

    goto :goto_1

    .line 396
    :cond_7
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 397
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    move v1, v3

    .line 402
    goto :goto_2

    .line 404
    :cond_9
    iput-boolean v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    goto :goto_3

    :cond_a
    move v2, v3

    .line 407
    goto :goto_4
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 292
    invoke-super {p0}, Lcom/android/exsettings/applications/AppInfoBase;->onResume()V

    .line 293
    iget-boolean v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 297
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$AppItem;

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v1}, Lcom/android/exsettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 298
    .local v0, "app":Lcom/android/exsettings/DataUsageSummary$AppItem;
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DataUsageSummary$AppItem;->addUid(I)V

    .line 299
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/applications/InstalledAppDetails;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/exsettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/exsettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 304
    :cond_1
    new-instance v1, Lcom/android/exsettings/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v1, p0, v6}, Lcom/android/exsettings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;Lcom/android/exsettings/applications/InstalledAppDetails$1;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 305
    new-instance v1, Lcom/android/exsettings/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v1, p0, v6}, Lcom/android/exsettings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;Lcom/android/exsettings/applications/InstalledAppDetails$1;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected refreshUi()Z
    .locals 13

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 473
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_0

    .line 474
    const/4 v9, 0x0

    .line 544
    :goto_0
    return v9

    .line 477
    :cond_0
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v9, :cond_1

    .line 478
    const/4 v9, 0x0

    goto :goto_0

    .line 482
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v4, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 484
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 485
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 486
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 487
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 488
    .local v0, "activityPkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 492
    .local v7, "metadata":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 493
    const-string v9, "android.app.home.alternate"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 495
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v6    # "metaPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 500
    .end local v0    # "activityPkg":Ljava/lang/String;
    .end local v7    # "metadata":Landroid/os/Bundle;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 501
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v9}, Lcom/android/exsettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 502
    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 505
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 506
    .local v2, "context":Landroid/app/Activity;
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v10, v2}, Lcom/android/exsettings/applications/AppStorageSettings;->getSummary(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_4

    .line 508
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 510
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/exsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v9, v10, v11}, Lcom/android/exsettings/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/exsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v12, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v10, v11, v12, v2}, Lcom/android/exsettings/Utils;->getLaunchByDeafaultSummary(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mBackend:Lcom/android/exsettings/notification/NotificationBackend;

    invoke-static {v10, v2, v11}, Lcom/android/exsettings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/exsettings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-eqz v9, :cond_5

    .line 517
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 520
    :cond_5
    invoke-direct {p0}, Lcom/android/exsettings/applications/InstalledAppDetails;->updateBattery()V

    .line 522
    iget-boolean v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v9, :cond_8

    .line 524
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mInitialized:Z

    .line 525
    iget-object v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 544
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 525
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 530
    :cond_8
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2200

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 533
    .local v1, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v9, p0, Lcom/android/exsettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v9, :cond_6

    .line 537
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 539
    .end local v1    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 540
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    goto/16 :goto_0
.end method
