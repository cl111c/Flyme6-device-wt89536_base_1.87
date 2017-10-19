.class public Lcom/android/exsettings/fuelgauge/PowerUsageDetail;
.super Lcom/android/exsettings/fuelgauge/PowerUsageBase;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/fuelgauge/PowerUsageDetail$4;
    }
.end annotation


# static fields
.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/preference/PreferenceCategory;

.field private mDetailsParent:Landroid/preference/PreferenceCategory;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHighPower:Landroid/preference/Preference;

.field mInstaller:Landroid/content/ComponentName;

.field private mMessagesParent:Landroid/preference/PreferenceCategory;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPackagesParent:Landroid/preference/PreferenceCategory;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mShowLocationButton:Z

.field private mStartTime:J

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    :array_0
    .array-data 4
        0x7f0c0721
        0x7f0c0722
        0x7f0c0720
        0x7f0c0728
        0x7f0c072a
        0x7f0c0724
        0x7f0c0726
        0x7f0c072d
        0x7f0c0731
        0x7f0c0732
        0x7f0c0734
        0x7f0c0725
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;-><init>()V

    .line 692
    new-instance v0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$3;-><init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/fuelgauge/PowerUsageDetail;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->doAction(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 2
    .param p1, "pageSummary"    # I
    .param p2, "actionTitle"    # I
    .param p3, "action"    # I

    .prologue
    .line 647
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 648
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 649
    const v1, 0x7f04007d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 650
    new-instance v1, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$2;

    invoke-direct {v1, p0, p3}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$2;-><init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;I)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 657
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 658
    return-void
.end method

.method private addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 578
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 579
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f04007d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 580
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 581
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 582
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 583
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 584
    return-void
.end method

.method private addMessage(I)V
    .locals 3
    .param p1, "message"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 675
    return-void
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 700
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 727
    :goto_0
    return-void

    .line 704
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 705
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 704
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 710
    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 713
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 714
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 722
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    const-string v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 717
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 710
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private createDetails()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 387
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 388
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 389
    .local v1, "context":Landroid/content/Context;
    const-string v4, "since"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 390
    const-string v4, "uid"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 391
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 392
    const-string v4, "drainType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper$DrainType;

    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 393
    const-string v4, "noCoverage"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 394
    const-string v4, "showLocationButton"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    .line 396
    const-string v4, "types"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 397
    const-string v4, "values"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 399
    const-string v4, "two_buttons"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/applications/LayoutPreference;

    .line 400
    .local v3, "twoButtons":Lcom/android/exsettings/applications/LayoutPreference;
    const v4, 0x7f12022f

    invoke-virtual {v3, v4}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 401
    const v4, 0x7f120231

    invoke-virtual {v3, v4}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 402
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    iget v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v7, 0x2710

    if-lt v4, v7, :cond_5

    .line 405
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v7, 0x7f0c0556

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 406
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 407
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v7, 0x1040376

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 409
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 410
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 414
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "send_action_app_error"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 424
    .local v2, "enabled":I
    if-eqz v2, :cond_3

    .line 425
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 426
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v6

    iget-object v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v1, v4, v7}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    .line 429
    :cond_0
    iget-object v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    :goto_2
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 435
    const-string v4, "high_power"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    .line 436
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    new-instance v5, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v5, p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 451
    .end local v2    # "enabled":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->refreshStats()V

    .line 453
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 454
    iget v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v4}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 455
    iget v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v4}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 456
    iget v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v4}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->fillMessagesSection(I)V

    .line 457
    return-void

    .line 419
    :cond_1
    const-string v4, "PowerUsageDetail"

    const-string v7, "No packages!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v2    # "enabled":I
    :cond_2
    move v4, v6

    .line 429
    goto :goto_1

    .line 431
    :cond_3
    const-string v4, "two_buttons"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 444
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    const-string v5, "high_power"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 447
    .end local v2    # "enabled":I
    :cond_5
    const-string v4, "two_buttons"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->removePreference(Ljava/lang/String;)V

    .line 448
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    const-string v5, "high_power"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 416
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 508
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    packed-switch p1, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 510
    :pswitch_0
    const-class v1, Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0355

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 514
    :pswitch_1
    const-class v1, Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0276

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 518
    :pswitch_2
    const-class v1, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c020d

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 522
    :pswitch_3
    const-class v1, Lcom/android/exsettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0149

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 526
    :pswitch_4
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    .line 529
    :pswitch_5
    const-class v1, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c017f

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 533
    :pswitch_6
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 536
    :pswitch_7
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 10
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 587
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 588
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 591
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 593
    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 595
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const/4 v4, 0x1

    .line 596
    .local v4, "removeHeader":Z
    sget-object v6, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$4;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 641
    :cond_0
    :goto_2
    :pswitch_0
    if-eqz v4, :cond_1

    .line 642
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 644
    :cond_1
    return-void

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :cond_2
    move-object v2, v5

    .line 591
    goto :goto_0

    :cond_3
    move-object v0, v5

    .line 593
    goto :goto_1

    .line 599
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "removeHeader":Z
    :pswitch_1
    if-eqz v1, :cond_4

    array-length v6, v1

    if-ne v6, v8, :cond_4

    .line 600
    const v6, 0x7f0c071b

    const v7, 0x7f0c072e

    const/4 v8, 0x5

    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 602
    const/4 v4, 0x0

    .line 608
    :cond_4
    iget-boolean v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    if-eqz v6, :cond_0

    .line 609
    const v6, 0x7f0c017f

    const v7, 0x7f0c072f

    const/4 v8, 0x6

    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 611
    const/4 v4, 0x0

    goto :goto_2

    .line 615
    :pswitch_2
    const v6, 0x7f0c0388

    const v7, 0x7f0c0727

    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 618
    const/4 v4, 0x0

    .line 619
    goto :goto_2

    .line 621
    :pswitch_3
    const v6, 0x7f0c0276

    const v7, 0x7f0c0729

    const/4 v8, 0x2

    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 624
    const/4 v4, 0x0

    .line 625
    goto :goto_2

    .line 627
    :pswitch_4
    const v6, 0x7f0c020d

    const v7, 0x7f0c072b

    const/4 v8, 0x3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 630
    const/4 v4, 0x0

    .line 631
    goto :goto_2

    .line 633
    :pswitch_5
    iget-wide v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 634
    const v6, 0x7f0c0149

    const v7, 0x7f0c0723

    const/4 v8, 0x4

    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 637
    const/4 v4, 0x0

    goto :goto_2

    .line 592
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :catch_0
    move-exception v6

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 542
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v6, :cond_1

    .line 543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 545
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 543
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v6, v6, v0

    invoke-virtual {p0, v6}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 548
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 569
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v8, v7, v0

    invoke-static {v6, v8, v9, v12}, Lcom/android/exsettings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v5

    .line 571
    :goto_3
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 553
    :pswitch_1
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    double-to-long v2, v6

    .line 554
    .local v2, "packets":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 555
    goto :goto_3

    .line 557
    .end local v2    # "packets":J
    :pswitch_2
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 558
    .local v4, "percentage":I
    invoke-static {v4}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    .line 559
    goto :goto_3

    .line 563
    .end local v4    # "percentage":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c0735

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v0

    double-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 564
    goto :goto_3

    .line 566
    :pswitch_4
    iput-boolean v12, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 574
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 548
    :pswitch_data_0
    .packed-switch 0x7f0c0709
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private fillMessagesSection(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 661
    const/4 v0, 0x1

    .line 662
    .local v0, "removeHeader":Z
    sget-object v1, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$4;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 668
    :goto_0
    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/preference/PreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 671
    :cond_0
    return-void

    .line 664
    :pswitch_0
    const v1, 0x7f0c0733

    invoke-direct {p0, v1}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addMessage(I)V

    .line 665
    const/4 v0, 0x0

    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 756
    const/4 v4, 0x1

    if-ge p1, v4, :cond_1

    .line 757
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 761
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    .line 765
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 767
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 769
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 770
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 771
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    .line 772
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 774
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 775
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private killProcesses()V
    .locals 5

    .prologue
    .line 682
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 690
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 685
    .local v0, "am":Landroid/app/ActivityManager;
    iget v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 686
    .local v2, "userId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 687
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 689
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removePackagesSection()V
    .locals 2

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 679
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 730
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 753
    :goto_0
    return-void

    .line 732
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 733
    .local v2, "report":Landroid/app/ApplicationErrorReport;
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 734
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 735
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 736
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 738
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 740
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 741
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 742
    .local v1, "batteryInfo":Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 743
    const-string v4, "duration"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 744
    const-string v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 745
    const-string v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 746
    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 748
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v3, "result":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 750
    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 751
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0, v3}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setupHeader()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 460
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 461
    .local v2, "args":Landroid/os/Bundle;
    const-string v7, "title"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "title":Ljava/lang/String;
    const-string v7, "iconPackage"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, "pkg":Ljava/lang/String;
    const-string v7, "iconId"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 464
    .local v3, "iconId":I
    const/4 v1, 0x0

    .line 466
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 469
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 470
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 479
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 483
    :cond_1
    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 484
    iget-object v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v7, v8

    .line 486
    :cond_2
    if-eqz v4, :cond_5

    invoke-static {p0, v4}, Lcom/android/exsettings/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    :goto_1
    iget-object v9, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v10, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v9, v10, :cond_3

    const v8, 0x106000b

    :cond_3
    invoke-static {p0, v1, v6, v7, v8}, Lcom/android/exsettings/AppHeader;->createAppHeader(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 489
    return-void

    .line 476
    :cond_4
    if-eqz v3, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 486
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 473
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 498
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 502
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c054c

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 504
    return-void
.end method

.method public static startBatteryDetailPage(Lcom/android/exsettings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/exsettings/fuelgauge/BatteryEntry;Z)V
    .locals 18
    .param p0, "caller"    # Lcom/android/exsettings/SettingsActivity;
    .param p1, "helper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "statsType"    # I
    .param p3, "entry"    # Lcom/android/exsettings/fuelgauge/BatteryEntry;
    .param p4, "showLocationButton"    # Z

    .prologue
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v12

    .line 92
    .local v12, "dischargeAmount":I
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v11, "args":Landroid/os/Bundle;
    const-string v2, "title"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "percent"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    int-to-double v8, v12

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v2, "gauge"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v2, "duration"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsPeriod()J

    move-result-wide v6

    invoke-virtual {v11, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 99
    const-string v2, "iconPackage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "iconId"

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v2, "noCoverage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v11, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 102
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    .line 103
    const-string v2, "uid"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    :cond_0
    const-string v2, "drainType"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 106
    const-string v2, "showLocationButton"

    move/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    .line 111
    .local v16, "userId":I
    sget-object v2, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$4;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 266
    const/4 v2, 0x2

    new-array v14, v2, [I

    fill-array-data v14, :array_0

    .line 270
    .local v14, "types":[I
    const/4 v2, 0x2

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 276
    .local v17, "values":[D
    :cond_1
    :goto_0
    const-string v2, "types"

    invoke-virtual {v11, v2, v14}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 277
    const-string v2, "values"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 279
    const-class v2, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0c06f8

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v5, p0

    move-object v7, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 281
    return-void

    .line 115
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_0
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v15, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 116
    .local v15, "uid":Landroid/os/BatteryStats$Uid;
    const/16 v2, 0xf

    new-array v14, v2, [I

    fill-array-data v14, :array_1

    .line 133
    .restart local v14    # "types":[I
    const/16 v2, 0xf

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0x9

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0xa

    const-wide/16 v6, 0x0

    aput-wide v6, v17, v2

    const/16 v2, 0xb

    const-wide/16 v6, 0x0

    aput-wide v6, v17, v2

    const/16 v2, 0xc

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0xd

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0xe

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 151
    .restart local v17    # "values":[D
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_1

    .line 152
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 153
    .local v13, "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v13, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 154
    .local v4, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    const-string v5, ""

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v6

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 156
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 157
    const-string v2, "report_details"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v13, Ljava/io/StringWriter;

    .end local v13    # "result":Ljava/io/Writer;
    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 160
    .restart local v13    # "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v13, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 161
    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v3

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V

    .line 163
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 164
    const-string v2, "report_checkin_details"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    goto/16 :goto_0

    .line 174
    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .end local v13    # "result":Ljava/io/Writer;
    .end local v14    # "types":[I
    .end local v15    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v17    # "values":[D
    :pswitch_1
    const/4 v2, 0x4

    new-array v14, v2, [I

    fill-array-data v14, :array_2

    .line 180
    .restart local v14    # "types":[I
    const/4 v2, 0x4

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 187
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 190
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_2
    const/16 v2, 0x9

    new-array v14, v2, [I

    fill-array-data v14, :array_3

    .line 201
    .restart local v14    # "types":[I
    const/16 v2, 0x9

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 212
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 215
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_3
    const/16 v2, 0x9

    new-array v14, v2, [I

    fill-array-data v14, :array_4

    .line 226
    .restart local v14    # "types":[I
    const/16 v2, 0x9

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 237
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 240
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_4
    const/4 v2, 0x3

    new-array v14, v2, [I

    fill-array-data v14, :array_5

    .line 245
    .restart local v14    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    aput-wide v6, v17, v2

    .line 250
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 253
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_5
    const/4 v2, 0x3

    new-array v14, v2, [I

    fill-array-data v14, :array_6

    .line 258
    .restart local v14    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    aput-wide v6, v17, v2

    .line 263
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 266
    :array_0
    .array-data 4
        0x7f0c0715
        0x7f0c0718
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0x7f0c0706
        0x7f0c0707
        0x7f0c0708
        0x7f0c0709
        0x7f0c070a
        0x7f0c070d
        0x7f0c070c
        0x7f0c070e
        0x7f0c0710
        0x7f0c070f
        0x7f0c0711
        0x7f0c0712
        0x7f0c0713
        0x7f0c0714
        0x7f0c0718
    .end array-data

    .line 174
    :array_2
    .array-data 4
        0x7f0c0715
        0x7f0c0716
        0x7f0c070e
        0x7f0c0718
    .end array-data

    .line 190
    :array_3
    .array-data 4
        0x7f0c070a
        0x7f0c0706
        0x7f0c0707
        0x7f0c0708
        0x7f0c070d
        0x7f0c070c
        0x7f0c0710
        0x7f0c070f
        0x7f0c0718
    .end array-data

    .line 215
    :array_4
    .array-data 4
        0x7f0c0715
        0x7f0c0706
        0x7f0c0707
        0x7f0c0708
        0x7f0c070d
        0x7f0c070c
        0x7f0c0710
        0x7f0c070f
        0x7f0c0718
    .end array-data

    .line 240
    :array_5
    .array-data 4
        0x7f0c0717
        0x7f0c0718
        0x7f0c0719
    .end array-data

    .line 253
    :array_6
    .array-data 4
        0x7f0c0717
        0x7f0c0718
        0x7f0c0719
    .end array-data
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 363
    const/16 v0, 0x35

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/exsettings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 493
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 350
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 352
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addPreferencesFromResource(I)V

    .line 353
    const-string v0, "details_parent"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/preference/PreferenceCategory;

    .line 354
    const-string v0, "controls_parent"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    .line 355
    const-string v0, "messages_parent"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/preference/PreferenceCategory;

    .line 356
    const-string v0, "packages_parent"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/preference/PreferenceCategory;

    .line 358
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 359
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 368
    invoke-super {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onResume()V

    .line 369
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 370
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 371
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/exsettings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->setupHeader()V

    .line 376
    return-void
.end method
