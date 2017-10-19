.class public Lcom/android/exsettings/deviceinfo/StorageSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;,
        Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;
    }
.end annotation


# static fields
.field static final COLOR_PRIVATE:[I

.field static final COLOR_PUBLIC:I

.field static final COLOR_WARNING:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final MENU_STORAGE_CLEANUP:I

.field private final MENU_STORAGE_USB_CONNECT:I

.field private mExternalCategory:Landroid/preference/PreferenceCategory;

.field private mInternalCategory:Landroid/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

.field private mIsUsbConnected:Z

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const-string v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    .line 89
    const-string v0, "#fff4511e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->COLOR_WARNING:I

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "#ff26a69a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#ffab47bc"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#fff2a600"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#ffec407a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#ffc0ca33"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    .line 548
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageSettings$3;

    invoke-direct {v0}, Lcom/android/exsettings/deviceinfo/StorageSettings$3;-><init>()V

    sput-object v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->MENU_STORAGE_CLEANUP:I

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->MENU_STORAGE_USB_CONNECT:I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mIsUsbConnected:Z

    .line 141
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 375
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/StorageSettings$2;-><init>(Lcom/android/exsettings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 506
    return-void
.end method

.method static synthetic access$000(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/deviceinfo/StorageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/StorageSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/exsettings/deviceinfo/StorageSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/StorageSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mIsUsbConnected:Z

    return p1
.end method

.method public static formatRomSize(J)J
    .locals 12
    .param p0, "romsize"    # J

    .prologue
    const-wide/32 v0, 0x10000000

    const-wide/32 v2, 0x8000000

    const-wide/32 v4, 0x4000000

    const-wide/32 v6, 0x2000000

    const-wide/32 v8, 0x1000000

    .line 620
    const-wide v10, 0x1000000000L

    cmp-long v10, p0, v10

    if-lez v10, :cond_1

    .line 621
    const-wide v0, 0x2000000000L

    .line 654
    :cond_0
    :goto_0
    return-wide v0

    .line 622
    :cond_1
    const-wide v10, 0x800000000L

    cmp-long v10, p0, v10

    if-lez v10, :cond_2

    const-wide v10, 0x1000000000L

    cmp-long v10, p0, v10

    if-gtz v10, :cond_2

    .line 623
    const-wide v0, 0x1000000000L

    goto :goto_0

    .line 624
    :cond_2
    const-wide v10, 0x400000000L

    cmp-long v10, p0, v10

    if-lez v10, :cond_3

    const-wide v10, 0x800000000L

    cmp-long v10, p0, v10

    if-gtz v10, :cond_3

    .line 625
    const-wide v0, 0x800000000L

    goto :goto_0

    .line 626
    :cond_3
    const-wide v10, 0x200000000L

    cmp-long v10, p0, v10

    if-lez v10, :cond_4

    const-wide v10, 0x400000000L

    cmp-long v10, p0, v10

    if-gtz v10, :cond_4

    .line 627
    const-wide v0, 0x400000000L

    goto :goto_0

    .line 628
    :cond_4
    const-wide v10, 0x100000000L

    cmp-long v10, p0, v10

    if-lez v10, :cond_5

    const-wide v10, 0x200000000L

    cmp-long v10, p0, v10

    if-gtz v10, :cond_5

    .line 629
    const-wide v0, 0x200000000L

    goto :goto_0

    .line 630
    :cond_5
    const-wide v10, 0x80000000L

    cmp-long v10, p0, v10

    if-lez v10, :cond_6

    const-wide v10, 0x100000000L

    cmp-long v10, p0, v10

    if-gtz v10, :cond_6

    .line 631
    const-wide v0, 0x100000000L

    goto :goto_0

    .line 632
    :cond_6
    const-wide/32 v10, 0x40000000

    cmp-long v10, p0, v10

    if-lez v10, :cond_7

    const-wide v10, 0x80000000L

    cmp-long v10, p0, v10

    if-gtz v10, :cond_7

    .line 633
    const-wide v0, 0x80000000L

    goto/16 :goto_0

    .line 639
    :cond_7
    const-wide/32 v10, 0x20000000

    cmp-long v10, p0, v10

    if-lez v10, :cond_8

    const-wide/32 v10, 0x40000000

    cmp-long v10, p0, v10

    if-gtz v10, :cond_8

    .line 640
    const-wide/32 v0, 0x40000000

    goto/16 :goto_0

    .line 641
    :cond_8
    cmp-long v10, p0, v0

    if-lez v10, :cond_9

    const-wide/32 v10, 0x20000000

    cmp-long v10, p0, v10

    if-gtz v10, :cond_9

    .line 642
    const-wide/32 v0, 0x20000000

    goto/16 :goto_0

    .line 643
    :cond_9
    cmp-long v10, p0, v2

    if-lez v10, :cond_a

    cmp-long v10, p0, v0

    if-lez v10, :cond_0

    .line 645
    :cond_a
    cmp-long v0, p0, v4

    if-lez v0, :cond_b

    cmp-long v0, p0, v2

    if-gtz v0, :cond_b

    move-wide v0, v2

    .line 646
    goto/16 :goto_0

    .line 647
    :cond_b
    cmp-long v0, p0, v6

    if-lez v0, :cond_c

    cmp-long v0, p0, v4

    if-gtz v0, :cond_c

    move-wide v0, v4

    .line 648
    goto/16 :goto_0

    .line 649
    :cond_c
    cmp-long v0, p0, v8

    if-lez v0, :cond_d

    cmp-long v0, p0, v6

    if-gtz v0, :cond_d

    move-wide v0, v6

    .line 650
    goto/16 :goto_0

    .line 651
    :cond_d
    cmp-long v0, p0, v8

    if-gtz v0, :cond_e

    move-wide v0, v8

    .line 652
    goto/16 :goto_0

    :cond_e
    move-wide v0, v8

    .line 654
    goto/16 :goto_0
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 154
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 30

    .prologue
    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 163
    .local v11, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 169
    const/16 v18, 0x0

    .line 170
    .local v18, "privateCount":I
    const-wide/16 v22, 0x0

    .line 171
    .local v22, "privateUsedBytes":J
    const-wide/16 v20, 0x0

    .line 173
    .local v20, "privateTotalBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v29

    .line 174
    .local v29, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/storage/VolumeInfo;

    .line 177
    .local v28, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 178
    sget-object v2, Lcom/android/exsettings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "privateCount":I
    .local v19, "privateCount":I
    sget-object v3, Lcom/android/exsettings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    array-length v3, v3

    rem-int v3, v18, v3

    aget v10, v2, v3

    .line 179
    .local v10, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;

    move-object/from16 v0, v28

    invoke-direct {v3, v11, v0, v10}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v16

    .line 184
    .local v16, "path":Ljava/io/File;
    new-instance v27, Landroid/os/StatFs;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 185
    .local v27, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v27 .. v27}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v8

    .line 188
    .local v8, "availableBytes":J
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings;->formatRomSize(J)J

    move-result-wide v2

    sub-long/2addr v2, v8

    add-long v22, v22, v2

    .line 193
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings;->formatRomSize(J)J

    move-result-wide v2

    add-long v20, v20, v2

    .end local v8    # "availableBytes":J
    .end local v16    # "path":Ljava/io/File;
    .end local v27    # "stat":Landroid/os/StatFs;
    :cond_1
    move/from16 v18, v19

    .line 196
    .end local v19    # "privateCount":I
    .restart local v18    # "privateCount":I
    goto :goto_0

    .end local v10    # "color":I
    :cond_2
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;

    sget v4, Lcom/android/exsettings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    move-object/from16 v0, v28

    invoke-direct {v3, v11, v0, v4}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 203
    .end local v28    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v25

    .line 204
    .local v25, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/storage/VolumeRecord;

    .line 205
    .local v24, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v2, :cond_4

    .line 208
    const v2, 0x7f020199

    invoke-virtual {v11, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 209
    .local v15, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 210
    sget v2, Lcom/android/exsettings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 212
    new-instance v17, Landroid/preference/Preference;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 213
    .local v17, "pref":Landroid/preference/Preference;
    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    const v2, 0x1040423

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 216
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 222
    .end local v15    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "pref":Landroid/preference/Preference;
    .end local v24    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v13

    .line 223
    .local v13, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .line 224
    .local v12, "disk":Landroid/os/storage/DiskInfo;
    iget v2, v12, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v2, :cond_6

    iget-wide v2, v12, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 225
    new-instance v17, Landroid/preference/Preference;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 226
    .restart local v17    # "pref":Landroid/preference/Preference;
    invoke-virtual {v12}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v12}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    const v2, 0x1040420

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 229
    const v2, 0x7f020199

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 234
    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    .end local v17    # "pref":Landroid/preference/Preference;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v26

    .line 235
    .local v26, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    const v3, 0x7f0c0428

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    const v3, 0x7f0c0429

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-wide/from16 v0, v20

    invoke-static {v11, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 251
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 255
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_a

    .line 258
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v7, "args":Landroid/os/Bundle;
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    const-string v3, "private"

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-class v2, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->finish()V

    .line 264
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_a
    return-void
.end method

.method private startStorageCleanupActivity()V
    .locals 4

    .prologue
    .line 390
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.qti.storagecleaner"

    const-string v3, "com.qti.storagecleaner.CleanerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "StorageSettings"

    const-string v3, "Can\'t start storage cleanup activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0c0983

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 129
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 131
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 133
    const-string v1, "storage_internal"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    .line 134
    const-string v1, "storage_external"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    .line 136
    new-instance v1, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    invoke-direct {v1, v0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 139
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x1

    const v2, 0x7f0c0b89

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 346
    :cond_0
    const v1, 0x7f0c041c

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 347
    .local v0, "usb_connect":Landroid/view/MenuItem;
    const v1, 0x7f020239

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 348
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 350
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 351
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 355
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 365
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 357
    :sswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startStorageCleanupActivity()V

    goto :goto_0

    .line 361
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x7f12034d -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 282
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 285
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 289
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "key":Ljava/lang/String;
    instance-of v0, p2, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;

    if-eqz v0, :cond_5

    .line 292
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 294
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 295
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    move v4, v8

    .line 336
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    :goto_0
    return v4

    .line 297
    .restart local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 298
    const v0, 0x7f0c0433

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    move v4, v8

    .line 299
    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 303
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-class v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v8

    .line 307
    goto :goto_0

    .line 309
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 312
    goto :goto_0

    .line 314
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 315
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-class v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v8

    .line 318
    goto :goto_0

    .line 322
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_5
    const-string v0, "disk:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    const v0, 0x7f0c0434

    invoke-static {p0, v0, v6}, Lcom/android/exsettings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    move v4, v8

    .line 325
    goto :goto_0

    .line 329
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 330
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-class v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0419

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v8

    .line 333
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 370
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 371
    .local v2, "usb_connect":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 372
    .local v0, "um":Landroid/os/UserManager;
    iget-boolean v3, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mIsUsbConnected:Z

    if-eqz v3, :cond_0

    const-string v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 373
    .local v1, "usbItemVisible":Z
    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    return-void

    .line 372
    .end local v1    # "usbItemVisible":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 268
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 275
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->refresh()V

    .line 276
    return-void
.end method
