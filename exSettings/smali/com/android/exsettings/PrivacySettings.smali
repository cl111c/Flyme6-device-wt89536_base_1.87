.class public Lcom/android/exsettings/PrivacySettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Landroid/preference/PreferenceScreen;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mEnabled:Z

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/android/exsettings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/exsettings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/exsettings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/android/exsettings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/PrivacySettings$1;-><init>(Lcom/android/exsettings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/exsettings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/PrivacySettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/PrivacySettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/exsettings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method private static collectDiagnosticsEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static factoryAndCarrierResetEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 229
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 231
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    .line 233
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 238
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.settings"

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 240
    .local v3, "vendorSpecific":Z
    :cond_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 241
    :cond_1
    const-string v4, "backup_inactive"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_2
    if-nez v3, :cond_3

    if-nez v2, :cond_4

    .line 244
    :cond_3
    const-string v4, "backup_data"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v4, "auto_restore"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v4, "configure_account"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_4
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_factory_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    const-string v4, "factory_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_5
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_network_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 254
    const-string v4, "network_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_6
    invoke-static {p0}, Lcom/android/exsettings/PrivacySettings;->factoryAndCarrierResetEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 257
    const-string v4, "factory_and_carrier_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_7
    invoke-static {p0}, Lcom/android/exsettings/PrivacySettings;->collectDiagnosticsEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 260
    const-string v4, "collect_diagnostics"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_8
    return-void

    .line 234
    .end local v3    # "vendorSpecific":Z
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c07dc

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/android/exsettings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 146
    .local v5, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 147
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 148
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 150
    .local v2, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 151
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "transport":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 153
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    iget-object v10, p0, Lcom/android/exsettings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const v7, 0x7f0c068f

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v6    # "transport":Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 165
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 167
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v3, v8

    .line 168
    .local v3, "configureEnabled":Z
    :goto_3
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 169
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 170
    invoke-direct {p0, v2}, Lcom/android/exsettings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 171
    return-void

    .line 155
    .end local v3    # "configureEnabled":Z
    .restart local v6    # "transport":Ljava/lang/String;
    :cond_0
    const v7, 0x7f0c0690

    goto :goto_0

    .line 158
    .end local v6    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 160
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    move v7, v9

    .line 163
    goto :goto_2

    :cond_2
    move v3, v9

    .line 167
    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 183
    const v0, 0x7f0c0990

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/exsettings/PrivacySettings;->mEnabled:Z

    .line 80
    iget-boolean v5, p0, Lcom/android/exsettings/PrivacySettings;->mEnabled:Z

    if-nez v5, :cond_0

    .line 107
    :goto_0
    return-void

    .line 84
    :cond_0
    const v5, 0x7f08003f

    invoke-virtual {p0, v5}, Lcom/android/exsettings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/exsettings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 86
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    const-string v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 89
    const-string v5, "backup_data"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    .line 91
    const-string v5, "auto_restore"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 92
    iget-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/exsettings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    const-string v5, "configure_account"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 96
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 97
    .local v1, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/exsettings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 98
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 99
    .local v4, "screenPreferenceCount":I
    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 100
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 101
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 106
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/PrivacySettings;->updateToggles()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 114
    iget-boolean v0, p0, Lcom/android/exsettings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/exsettings/PrivacySettings;->updateToggles()V

    .line 117
    :cond_0
    return-void
.end method
