.class public Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;
    }
.end annotation


# static fields
.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I

.field private static final ITEM_NO_SHOW_SHARED_COLOR:[I

.field private static final ITEM_SHOW_SHARED_COLOR:[I


# instance fields
.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mExplore:Landroid/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUsbConnected:Z

.field private mItemPoolIndex:I

.field private mItemPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/exsettings/deviceinfo/UsageBarPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;

.field totalBytes:J

.field totalSpace:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-array v0, v3, [I

    const v1, 0x7f0c03f8

    aput v1, v0, v2

    sput-object v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 116
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 128
    new-array v0, v3, [I

    const v1, 0x7f0e0016

    aput v1, v0, v2

    sput-object v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEM_NO_SHOW_SHARED_COLOR:[I

    .line 133
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEM_SHOW_SHARED_COLOR:[I

    return-void

    .line 116
    nop

    :array_0
    .array-data 4
        0x7f0c0d38
        0x7f0c03f8
        0x7f0c043b
        0x7f0c043c
        0x7f0c03fc
        0x7f0c03fa
        0x7f0c03fe
        0x7f0c03fd
    .end array-data

    .line 133
    :array_1
    .array-data 4
        0x7f0e0058
        0x7f0e0016
        0x7f0e0019
        0x7f0e001a
        0x7f0e001b
        0x7f0e0017
        0x7f0e001c
        0x7f0e001d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 159
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 160
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z

    .line 496
    new-instance v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 610
    new-instance v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 702
    new-instance v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$3;-><init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 875
    return-void
.end method

.method static synthetic access$002(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;
    .locals 4
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    iget v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 315
    .local v0, "category":Landroid/preference/PreferenceCategory;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 317
    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 318
    iget v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 319
    return-object v0

    .line 311
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101008c

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 313
    .restart local v0    # "category":Landroid/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addDetailItems(Landroid/preference/PreferenceGroup;ZI)V
    .locals 9
    .param p1, "category"    # Landroid/preference/PreferenceGroup;
    .param p2, "showShared"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 323
    if-eqz p2, :cond_0

    sget-object v8, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 324
    .local v8, "itemsToAdd":[I
    :goto_0
    if-eqz p2, :cond_1

    sget-object v6, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEM_SHOW_SHARED_COLOR:[I

    .line 325
    .local v6, "colorsToAdd":[I
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, v8

    if-ge v7, v0, :cond_2

    .line 326
    aget v2, v8, v7

    aget v3, v6, v7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;IILjava/lang/CharSequence;I)V

    .line 325
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 323
    .end local v6    # "colorsToAdd":[I
    .end local v7    # "i":I
    .end local v8    # "itemsToAdd":[I
    :cond_0
    sget-object v8, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    goto :goto_0

    .line 324
    .restart local v8    # "itemsToAdd":[I
    :cond_1
    sget-object v6, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEM_NO_SHOW_SHARED_COLOR:[I

    goto :goto_1

    .line 328
    .restart local v6    # "colorsToAdd":[I
    .restart local v7    # "i":I
    :cond_2
    return-void
.end method

.method private addItem(Landroid/preference/PreferenceGroup;IILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleRes"    # I
    .param p3, "colorRes"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "userId"    # I

    .prologue
    .line 333
    iget v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    .line 339
    .local v0, "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    :goto_0
    if-eqz p4, :cond_1

    .line 340
    invoke-virtual {v0, p4}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    :goto_1
    const v1, 0x7f0c03f7

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 345
    iput p5, v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 346
    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 347
    iget v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 348
    return-void

    .line 336
    .end local v0    # "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->buildItem(II)Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 337
    .restart local v0    # "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1
.end method

.method private addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 302
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 303
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 304
    return-void
.end method

.method private buildAction(I)Landroid/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 357
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 359
    return-object v0
.end method

.method private buildItem(II)Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes"    # I

    .prologue
    .line 511
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 682
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVolumeValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 170
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startStorageCleanupActivity()V
    .locals 4

    .prologue
    .line 517
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 518
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.qti.storagecleaner"

    const-string v3, "com.qti.storagecleaner.CleanerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "StorageSettings"

    const-string v3, "Can\'t start storage cleanup activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static varargs totalValues(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J
    .locals 10
    .param p0, "details"    # Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p1, "userId"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 688
    const-wide/16 v6, 0x0

    .line 689
    .local v6, "total":J
    iget-object v5, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 690
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v4, :cond_1

    .line 691
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 692
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 693
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 691
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    :cond_1
    const-string v5, "StorageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_2
    return-wide v6
.end method

.method private updateDetails(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 22
    .param p1, "details"    # Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 618
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    .line 620
    .local v9, "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    iget v13, v9, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 621
    .local v13, "userId":I
    invoke-virtual {v9}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->getTitleRes()I

    move-result v12

    .line 622
    .local v12, "itemTitleId":I
    sparse-switch v12, :sswitch_data_0

    .line 618
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 625
    :sswitch_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalSpace:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalBytes:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 628
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 638
    :sswitch_2
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v10

    .line 640
    .local v10, "imagesSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 643
    .end local v10    # "imagesSize":J
    :sswitch_3
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v16

    .line 645
    .local v16, "videosSize":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v9, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 649
    .end local v16    # "videosSize":J
    :sswitch_4
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v6

    .line 651
    .local v6, "downloadsSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v7}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 654
    .end local v6    # "downloadsSize":J
    :sswitch_5
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x2

    sget-object v20, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x3

    sget-object v20, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x4

    sget-object v20, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v4

    .line 658
    .local v4, "audioSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v5}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 661
    .end local v4    # "audioSize":J
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 664
    :sswitch_7
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 667
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 668
    .local v14, "userSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v15}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 672
    .end local v9    # "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    .end local v12    # "itemTitleId":I
    .end local v13    # "userId":I
    .end local v14    # "userSize":J
    :cond_0
    return-void

    .line 622
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x7f0c03f8 -> :sswitch_1
        0x7f0c03fa -> :sswitch_4
        0x7f0c03fc -> :sswitch_5
        0x7f0c03fd -> :sswitch_6
        0x7f0c03fe -> :sswitch_7
        0x7f0c043b -> :sswitch_2
        0x7f0c043c -> :sswitch_3
        0x7f0c0d38 -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V
    .locals 6
    .param p1, "pref"    # Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 676
    invoke-virtual {p1}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 677
    .local v0, "order":I
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalSpace:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 678
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 181
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 185
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 186
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 188
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 192
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 194
    new-instance v1, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    .line 195
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 197
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 211
    :goto_0
    return-void

    .line 202
    :cond_0
    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 205
    new-instance v1, Lcom/android/exsettings/deviceinfo/UsageBarPreference;

    invoke-direct {v1, v0}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/UsageBarPreference;

    .line 206
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 208
    const v1, 0x7f0c041b

    invoke-direct {p0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    .line 210
    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 401
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 402
    const v0, 0x7f140006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 403
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 394
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 397
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 460
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 461
    .local v6, "context":Landroid/content/Context;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v5, "args":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 493
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 464
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    move v0, v8

    .line 465
    goto :goto_0

    .line 467
    :pswitch_1
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v6, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v8

    .line 468
    goto :goto_0

    .line 470
    :pswitch_2
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-class v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0414

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v8

    .line 473
    goto :goto_0

    .line 475
    :pswitch_3
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-class v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0415

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v8

    .line 478
    goto :goto_0

    .line 480
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v7}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 483
    goto :goto_0

    .line 485
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startStorageCleanupActivity()V

    move v0, v8

    .line 486
    goto :goto_0

    .line 489
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 490
    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x7f120348
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 384
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 386
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 389
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 529
    instance-of v0, p2, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    iget v10, v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 531
    .local v10, "userId":I
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v9

    .line 532
    .local v9, "itemTitleId":I
    const/4 v8, 0x0

    .line 533
    .local v8, "intent":Landroid/content/Intent;
    sparse-switch v9, :sswitch_data_0

    .line 595
    :goto_1
    if-eqz v8, :cond_2

    .line 597
    if-ne v10, v11, :cond_1

    .line 598
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v12

    .line 607
    :goto_3
    return v0

    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "itemTitleId":I
    .end local v10    # "userId":I
    :cond_0
    move v10, v11

    .line 529
    goto :goto_0

    .line 536
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "itemTitleId":I
    .restart local v10    # "userId":I
    :sswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "classname"

    const-class v1, Lcom/android/exsettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "volumeUuid"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "volumeName"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/exsettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0c0b01

    const/4 v6, 0x0

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/exsettings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v8

    .line 545
    goto :goto_1

    .line 549
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_1
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "com.android.providers.media.documents"

    const-string v1, "images_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 551
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 555
    :sswitch_2
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "com.android.providers.media.documents"

    const-string v1, "videos_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 557
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 562
    :sswitch_3
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    .line 569
    :sswitch_4
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "com.android.providers.media.documents"

    const-string v1, "audio_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 571
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 575
    :sswitch_5
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;)V

    move v0, v12

    .line 577
    goto/16 :goto_3

    .line 581
    :sswitch_6
    invoke-static {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    move v0, v12

    .line 582
    goto/16 :goto_3

    .line 586
    :sswitch_7
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v8

    .line 587
    goto/16 :goto_1

    :sswitch_8
    move v0, v12

    .line 590
    goto/16 :goto_3

    .line 600
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 602
    :catch_0
    move-exception v7

    .line 603
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 607
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_3

    .line 533
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x7f0c03f8 -> :sswitch_0
        0x7f0c03fa -> :sswitch_3
        0x7f0c03fc -> :sswitch_4
        0x7f0c03fd -> :sswitch_5
        0x7f0c03fe -> :sswitch_6
        0x7f0c041b -> :sswitch_7
        0x7f0c043b -> :sswitch_1
        0x7f0c043c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 16
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 407
    const v13, 0x7f12034d

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 408
    .local v1, "cleanup":Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f100018

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    invoke-interface {v1, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v13

    if-nez v13, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const v13, 0x7f120348

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 413
    .local v8, "rename":Landroid/view/MenuItem;
    const v13, 0x7f120349

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 414
    .local v6, "mount":Landroid/view/MenuItem;
    const v13, 0x7f12034a

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 415
    .local v10, "unmount":Landroid/view/MenuItem;
    const v13, 0x7f12034b

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 416
    .local v2, "format":Landroid/view/MenuItem;
    const v13, 0x7f12034c

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 418
    .local v4, "migrate":Landroid/view/MenuItem;
    const v13, 0x7f12034e

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 419
    .local v12, "usb_connect":Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "user"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 420
    .local v9, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z

    if-eqz v13, :cond_2

    const-string v13, "no_usb_file_transfer"

    invoke-virtual {v9, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v11, 0x1

    .line 421
    .local v11, "usbItemVisible":Z
    :goto_1
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    const-string v13, "private"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 427
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 428
    const/4 v13, 0x0

    invoke-interface {v6, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 429
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    const/4 v13, 0x0

    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    :goto_2
    const v13, 0x7f0c0416

    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 443
    .local v7, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :goto_3
    invoke-interface {v4, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "storage_migrate"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 450
    .local v5, "migrateSp":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    .line 451
    const-string v13, "finish"

    const/4 v14, 0x1

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 454
    .local v3, "isFinished":Z
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 420
    .end local v3    # "isFinished":Z
    .end local v5    # "migrateSp":Landroid/content/SharedPreferences;
    .end local v7    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v11    # "usbItemVisible":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 432
    .restart local v11    # "usbItemVisible":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v13}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v13, 0x1

    :goto_4
    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v13}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x1

    :goto_5
    invoke-interface {v6, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v13}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v13

    invoke-interface {v10, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 435
    const/4 v13, 0x1

    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 432
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 433
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 443
    .restart local v7    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_6
    const/4 v13, 0x0

    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 368
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 373
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->update()V

    goto :goto_0
.end method

.method public update()V
    .locals 30

    .prologue
    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 299
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 230
    .local v12, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 232
    .local v18, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 237
    .local v9, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v24

    .line 238
    .local v24, "userCount":I
    const/4 v2, 0x1

    move/from16 v0, v24

    if-le v0, v2, :cond_2

    const/16 v19, 0x1

    .line 239
    .local v19, "showHeaders":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v20, 0x1

    .line 241
    .local v20, "showShared":Z
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 242
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 244
    const/4 v8, 0x0

    .line 246
    .local v8, "addedUserCount":I
    const/16 v25, 0x0

    .local v25, "userIndex":I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 247
    move/from16 v0, v25

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    .line 248
    .local v26, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v2, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    if-eqz v19, :cond_4

    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v13

    .line 251
    .local v13, "details":Landroid/preference/PreferenceGroup;
    :goto_4
    move-object/from16 v0, v26

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/preference/PreferenceGroup;ZI)V

    .line 252
    add-int/lit8 v8, v8, 0x1

    .line 246
    .end local v13    # "details":Landroid/preference/PreferenceGroup;
    :cond_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 238
    .end local v8    # "addedUserCount":I
    .end local v19    # "showHeaders":Z
    .end local v20    # "showShared":Z
    .end local v25    # "userIndex":I
    .end local v26    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 239
    .restart local v19    # "showHeaders":Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_2

    .restart local v8    # "addedUserCount":I
    .restart local v20    # "showShared":Z
    .restart local v25    # "userIndex":I
    .restart local v26    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    move-object/from16 v13, v18

    .line 249
    goto :goto_4

    .line 257
    .end local v26    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    sub-int v2, v24, v8

    if-lez v2, :cond_7

    .line 258
    const v2, 0x7f0c0424

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    .line 260
    .local v3, "otherUsers":Landroid/preference/PreferenceGroup;
    const/16 v25, 0x0

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 261
    move/from16 v0, v25

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    .line 262
    .restart local v26    # "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v2, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 263
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;IILjava/lang/CharSequence;I)V

    .line 260
    :cond_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 271
    .end local v3    # "otherUsers":Landroid/preference/PreferenceGroup;
    .end local v26    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    if-eqz v20, :cond_8

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 275
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v14

    .line 276
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalBytes:J

    .line 277
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalBytes:J

    invoke-static {v4, v5}, Lcom/android/exsettings/deviceinfo/StorageSettings;->formatRomSize(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalSpace:J

    .line 278
    invoke-virtual {v14}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v16

    .line 280
    .local v16, "freeBytes":J
    new-instance v21, Landroid/os/StatFs;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 281
    .local v21, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v10

    .line 282
    .local v10, "availableBytes":J
    const-string v2, "StorageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "available space is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalBytes:J

    sub-long v22, v4, v10

    .line 286
    .local v22, "usedBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x0

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v15

    .line 287
    .local v15, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->clear()V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/UsageBarPreference;

    const v4, 0x7f0c0428

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    iget-object v7, v15, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v15, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/UsageBarPreference;

    const v4, 0x7f0c0d39

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalSpace:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v12, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/UsageBarPreference;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalSpace:J

    div-long v6, v22, v6

    long-to-float v5, v6

    const v6, -0x777778

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->commit()V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->forceMeasure()V

    goto/16 :goto_0
.end method
