.class public Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PublicVolumeSettings.java"


# instance fields
.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mFormatPrivate:Landroid/preference/Preference;

.field private mFormatPublic:Landroid/preference/Preference;

.field private mIsPermittedToAdopt:Z

.field private mMount:Landroid/preference/Preference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

.field private mUnmount:Landroid/preference/Preference;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 227
    new-instance v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;-><init>(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private addPreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 174
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 176
    return-void
.end method

.method private buildAction(I)Landroid/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 179
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 181
    return-object v0
.end method

.method private isVolumeValid()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    .line 93
    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 95
    const-string v4, "android.provider.action.DOCUMENT_ROOT_SETTINGS"

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 98
    .local v2, "rootUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "fsUuid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 105
    .end local v1    # "fsUuid":Ljava/lang/String;
    .end local v2    # "rootUri":Landroid/net/Uri;
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 126
    :cond_0
    :goto_2
    return-void

    .line 90
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "volId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    goto :goto_1

    .line 110
    .end local v3    # "volId":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    .line 111
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 115
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->addPreferencesFromResource(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 118
    new-instance v4, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    invoke-direct {v4, v0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    .line 120
    const v4, 0x7f0c0413

    invoke-direct {p0, v4}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mMount:Landroid/preference/Preference;

    .line 121
    const v4, 0x7f0c0414

    invoke-direct {p0, v4}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/preference/Preference;

    .line 122
    const v4, 0x7f0c0415

    invoke-direct {p0, v4}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/preference/Preference;

    .line 123
    iget-boolean v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v4, :cond_0

    .line 124
    const v4, 0x7f0c0417

    invoke-direct {p0, v4}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/preference/Preference;

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 203
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 208
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mMount:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 209
    new-instance v2, Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, v0, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 211
    new-instance v2, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, v0, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v2, "format_private"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v2, "format_private"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 190
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->update()V

    goto :goto_0
.end method

.method public update()V
    .locals 22

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v13

    if-nez v13, :cond_1

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 137
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 139
    .local v11, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v13}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v13}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v7

    .line 145
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v14

    .line 146
    .local v14, "totalBytes":J
    invoke-virtual {v7}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v8

    .line 148
    .local v8, "freeBytes":J
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 149
    .local v12, "stat":Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    .line 150
    .local v4, "availableBytes":J
    sub-long v16, v14, v4

    .line 153
    .local v16, "usedBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/16 v18, 0x0

    move-wide/from16 v0, v16

    move/from16 v2, v18

    invoke-static {v13, v0, v1, v2}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v10

    .line 154
    .local v10, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    const v18, 0x7f0c0428

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v10, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-object v0, v10, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    const v18, 0x7f0c0429

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    const-wide/16 v18, 0x64

    mul-long v18, v18, v16

    div-long v18, v18, v14

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    .line 161
    .end local v4    # "availableBytes":J
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "freeBytes":J
    .end local v10    # "result":Landroid/text/format/Formatter$BytesResult;
    .end local v12    # "stat":Landroid/os/StatFs;
    .end local v14    # "totalBytes":J
    .end local v16    # "usedBytes":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v13}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v13

    if-nez v13, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mMount:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    .line 164
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v13}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    .line 167
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v13}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v13, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    goto/16 :goto_0
.end method
