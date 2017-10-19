.class public Lcom/android/exsettings/deviceinfo/StorageVolumePreference;
.super Landroid/preference/Preference;
.source "StorageVolumePreference.java"


# instance fields
.field private mColor:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "color"    # I

    .prologue
    .line 56
    invoke-direct/range {p0 .. p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 136
    new-instance v15, Lcom/android/exsettings/deviceinfo/StorageVolumePreference$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageVolumePreference;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 58
    const-class v15, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 59
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 60
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 62
    const v15, 0x7f040104

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    const-string v15, "private"

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 69
    const v15, 0x7f02018a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 74
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v9

    .line 77
    .local v9, "path":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    .line 78
    .local v6, "freeBytes":J
    invoke-virtual {v9}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v12

    .line 80
    .local v12, "totalBytes":J
    new-instance v10, Landroid/os/StatFs;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 81
    .local v10, "stat":Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    .line 84
    .local v4, "availableBytes":J
    invoke-static {v12, v13}, Lcom/android/exsettings/deviceinfo/StorageSettings;->formatRomSize(J)J

    move-result-wide v18

    sub-long v16, v18, v4

    .line 88
    .local v16, "usedBytes":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 91
    .local v14, "used":Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/exsettings/deviceinfo/StorageSettings;->formatRomSize(J)J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "total":Ljava/lang/String;
    const v15, 0x7f0c0427

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    const-wide/16 v18, 0x64

    mul-long v18, v18, v16

    div-long v18, v18, v12

    move-wide/from16 v0, v18

    long-to-int v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 96
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15, v9}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v18

    cmp-long v15, v6, v18

    if-gez v15, :cond_0

    .line 97
    sget v15, Lcom/android/exsettings/deviceinfo/StorageSettings;->COLOR_WARNING:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 98
    const v15, 0x7f0201b2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 106
    .end local v4    # "availableBytes":J
    .end local v6    # "freeBytes":J
    .end local v9    # "path":Ljava/io/File;
    .end local v10    # "stat":Landroid/os/StatFs;
    .end local v11    # "total":Ljava/lang/String;
    .end local v12    # "totalBytes":J
    .end local v14    # "used":Ljava/lang/String;
    .end local v16    # "usedBytes":J
    :cond_0
    :goto_1
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 107
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-virtual {v8, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 108
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 112
    const v15, 0x7f0400c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setWidgetLayoutResource(I)V

    .line 114
    :cond_1
    return-void

    .line 71
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const v15, 0x7f020199

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 102
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setSummary(I)V

    .line 103
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/exsettings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/StorageVolumePreference;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    const v2, 0x7f120180

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 119
    .local v1, "unmount":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 120
    const-string v2, "#8a000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_0
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 125
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iget v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 128
    iget v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 133
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 134
    return-void

    .line 130
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
