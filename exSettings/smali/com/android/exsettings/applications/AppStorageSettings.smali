.class public Lcom/android/exsettings/applications/AppStorageSettings;
.super Lcom/android/exsettings/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/AppStorageSettings$ClearUserDataObserver;,
        Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppSize:Landroid/preference/Preference;

.field private mCacheSize:Landroid/preference/Preference;

.field private mCanClearData:Z

.field private mCandidates:[Landroid/os/storage/VolumeInfo;

.field private mChangeStorageButton:Landroid/widget/Button;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/exsettings/applications/AppStorageSettings$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/preference/Preference;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mExternalCodeSize:Landroid/preference/Preference;

.field private mExternalDataSize:Landroid/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mStorageUsed:Landroid/preference/Preference;

.field private mTotalSize:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/exsettings/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 56
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppInfoWithHeader;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mCanClearData:Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mHaveSizes:Z

    .line 108
    iput-wide v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastCodeSize:J

    .line 109
    iput-wide v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastDataSize:J

    .line 110
    iput-wide v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastExternalCodeSize:J

    .line 111
    iput-wide v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastExternalDataSize:J

    .line 112
    iput-wide v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastCacheSize:J

    .line 113
    iput-wide v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastTotalSize:J

    .line 478
    new-instance v0, Lcom/android/exsettings/applications/AppStorageSettings$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/AppStorageSettings$4;-><init>(Lcom/android/exsettings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    .line 530
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/applications/AppStorageSettings;)Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/AppStorageSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/applications/AppStorageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/AppStorageSettings;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/applications/AppStorageSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/AppStorageSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/AppStorageSettings;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/AppStorageSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getSize(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "appEntry"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->size:J

    .line 511
    .local v0, "size":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 512
    const v2, 0x7f0c0597

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 514
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 232
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSummary(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "appEntry"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    iget-wide v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 498
    :cond_0
    const v1, 0x7f0c0596

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 504
    :goto_0
    return-object v1

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const v1, 0x7f0c0ac6

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "storageType":Ljava/lang/CharSequence;
    const v1, 0x7f0c0abf

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/android/exsettings/applications/AppStorageSettings;->getSize(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 500
    .end local v0    # "storageType":Ljava/lang/CharSequence;
    :cond_2
    const v1, 0x7f0c0ac5

    goto :goto_1
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0c0561

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 354
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 355
    iput-boolean v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mCanClearData:Z

    .line 365
    :goto_0
    iget-boolean v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppControlRestricted:Z

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 368
    :cond_1
    return-void

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0c0574

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 362
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveDialog()V
    .locals 10

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 372
    .local v1, "context":Landroid/content/Context;
    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 374
    .local v5, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    .line 376
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 377
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 379
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/CharSequence;

    .line 380
    .local v4, "labels":[Ljava/lang/CharSequence;
    const/4 v2, -0x1

    .line 381
    .local v2, "current":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 382
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, "volDescrip":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 384
    move v2, v3

    .line 386
    :cond_0
    aput-object v6, v4, v3

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    .end local v6    # "volDescrip":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/VolumeInfo;

    iput-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    .line 389
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c0acb

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0140

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 398
    .end local v2    # "current":I
    .end local v3    # "i":I
    .end local v4    # "labels":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 394
    :cond_2
    const-string v7, "storage_used"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    .line 395
    const-string v7, "change_storage_button"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    .line 396
    const-string v7, "storage_space"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 405
    iget-object v3, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    iget-object v3, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 408
    .local v1, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/android/exsettings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/exsettings/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 410
    new-instance v3, Lcom/android/exsettings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/exsettings/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/exsettings/applications/AppStorageSettings;)V

    iput-object v3, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/exsettings/applications/AppStorageSettings$ClearUserDataObserver;

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 414
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/exsettings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 415
    .local v2, "res":Z
    if-nez v2, :cond_1

    .line 417
    sget-object v3, Lcom/android/exsettings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/exsettings/applications/AppStorageSettings;->showDialogInner(II)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0c0582

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isCacheClearableApp()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 239
    iget-object v5, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 240
    .local v1, "currentPkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "appPackageName":[Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v4

    .line 245
    :cond_1
    array-length v3, v0

    .line 246
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 247
    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isMoveInProgress()Z
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 208
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->isPackageFrozen(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 210
    :goto_0
    return v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 429
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 430
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 431
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0c0561

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 432
    if-ne v1, v4, :cond_0

    .line 433
    sget-object v2, Lcom/android/exsettings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/exsettingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->initMoveDialog()V

    .line 341
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->initDataButtons()V

    .line 342
    return-void
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 255
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 257
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastCodeSize:J

    .line 258
    iget-boolean v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 259
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mDataSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mCacheSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mTotalSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 265
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 315
    :goto_0
    iget-boolean v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppControlRestricted:Z

    if-eqz v6, :cond_2

    .line 316
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 319
    :cond_2
    return-void

    .line 268
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mHaveSizes:Z

    .line 269
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 270
    .local v2, "codeSize":J
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 271
    .local v4, "dataSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 272
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 273
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    .line 284
    :cond_4
    :goto_1
    iget-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    .line 285
    iput-wide v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastCodeSize:J

    .line 286
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppSize:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    :cond_5
    iget-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    .line 289
    iput-wide v4, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastDataSize:J

    .line 290
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mDataSize:Landroid/preference/Preference;

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    :cond_6
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 293
    .local v0, "cacheSize":J
    iget-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_7

    .line 294
    iput-wide v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastCacheSize:J

    .line 295
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mCacheSize:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    :cond_7
    iget-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 298
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastTotalSize:J

    .line 299
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mTotalSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/exsettings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    :cond_8
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mCanClearData:Z

    if-nez v6, :cond_d

    .line 303
    :cond_9
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 308
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_a

    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->isCacheClearableApp()Z

    move-result v6

    if-nez v6, :cond_e

    .line 309
    :cond_a
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 275
    .end local v0    # "cacheSize":J
    :cond_b
    iget-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    .line 276
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastExternalCodeSize:J

    .line 277
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mExternalCodeSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/exsettings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    :cond_c
    iget-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 280
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mLastExternalDataSize:J

    .line 281
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mExternalDataSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/exsettings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 305
    .restart local v0    # "cacheSize":J
    :cond_d
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 311
    :cond_e
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const v3, 0x7f12014a

    .line 140
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0596

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0597

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 144
    const-string v1, "total_size"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mTotalSize:Landroid/preference/Preference;

    .line 145
    const-string v1, "app_size"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppSize:Landroid/preference/Preference;

    .line 146
    const-string v1, "data_size"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mDataSize:Landroid/preference/Preference;

    .line 147
    const-string v1, "external_code_size"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mExternalCodeSize:Landroid/preference/Preference;

    .line 148
    const-string v1, "external_data_size"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mExternalDataSize:Landroid/preference/Preference;

    .line 150
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "storage_category"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 152
    .local v0, "category":Landroid/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mExternalCodeSize:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mExternalDataSize:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    :cond_0
    const-string v1, "clear_data_button"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    .line 158
    const-string v1, "storage_used"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    .line 159
    const-string v1, "change_storage_button"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    .line 161
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const v2, 0x7f0c0aca

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 162
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const-string v1, "cache_size"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mCacheSize:Landroid/preference/Preference;

    .line 166
    const-string v1, "clear_cache_button"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    .line 168
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const v2, 0x7f0c0553

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 169
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f0c0585

    .line 442
    packed-switch p1, :pswitch_data_0

    .line 468
    :goto_0
    return-object v0

    .line 444
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0583

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0584

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/applications/AppStorageSettings$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/AppStorageSettings$2;-><init>(Lcom/android/exsettings/applications/AppStorageSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0586

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 456
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c058c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c058d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/exsettings/applications/AppStorageSettings$3;

    invoke-direct {v1, p0}, Lcom/android/exsettings/applications/AppStorageSettings$3;-><init>(Lcom/android/exsettings/applications/AppStorageSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 519
    const/16 v0, 0x13

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object v3, v4, p2

    .line 220
    .local v3, "targetVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 222
    .local v1, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/exsettings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    iget-object v5, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/AppStorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 228
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 229
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v1, :cond_0

    .line 176
    new-instance v1, Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v1, p0}, Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/exsettings/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;

    .line 179
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0406

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0585

    new-instance v3, Lcom/android/exsettings/applications/AppStorageSettings$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/applications/AppStorageSettings$1;-><init>(Lcom/android/exsettings/applications/AppStorageSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0586

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    .line 189
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 190
    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 197
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/applications/AppStorageSettings;->showDialogInner(II)V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->isMoveInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/AppStorageSettings;->addPreferencesFromResource(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->setupViews()V

    .line 131
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->refreshSizeInfo()V

    .line 476
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/exsettings/applications/AppInfoWithHeader;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 137
    return-void
.end method

.method protected refreshUi()Z
    .locals 4

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->retrieveAppEntry()Ljava/lang/String;

    .line 324
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_0

    .line 325
    const/4 v2, 0x0

    .line 336
    :goto_0
    return v2

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->refreshSizeInfo()V

    .line 329
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 331
    .local v0, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 332
    .local v1, "storage":Landroid/os/storage/StorageManager;
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStorageSettings;->refreshButtons()V

    .line 336
    const/4 v2, 0x1

    goto :goto_0
.end method
