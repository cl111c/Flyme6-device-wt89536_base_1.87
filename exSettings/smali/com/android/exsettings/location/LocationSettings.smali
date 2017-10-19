.class public Lcom/android/exsettings/location/LocationSettings;
.super Lcom/android/exsettings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private injector:Lcom/android/exsettings/location/SettingsInjector;

.field private mAgpsEnabled:Z

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/exsettings/location/LocationSettingsBase;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/location/LocationSettings;)Lcom/android/exsettings/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/location/LocationSettings;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->injector:Lcom/android/exsettings/location/SettingsInjector;

    return-object v0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 376
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 378
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    invoke-static {p1}, Lcom/android/exsettings/location/IzatSettingsInjector;->getSettingInjector(Landroid/content/Context;)Lcom/android/exsettings/location/SettingsInjector;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->injector:Lcom/android/exsettings/location/SettingsInjector;

    .line 381
    iget-object v4, p0, Lcom/android/exsettings/location/LocationSettings;->injector:Lcom/android/exsettings/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/exsettings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 384
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/exsettings/location/LocationSettings$3;

    invoke-direct {v3, p0}, Lcom/android/exsettings/location/LocationSettings$3;-><init>(Lcom/android/exsettings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 399
    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 404
    :goto_1
    return-void

    .line 381
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 402
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/exsettings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/location/LocationSettings$1;-><init>(Lcom/android/exsettings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 195
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 197
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "summaryResId"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 201
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 202
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 203
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 205
    :cond_0
    const v6, 0x7f08002f

    invoke-virtual {p0, v6}, Lcom/android/exsettings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 208
    invoke-direct {p0, v5}, Lcom/android/exsettings/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 209
    const-string v6, "location_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 210
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v9, Lcom/android/exsettings/location/LocationSettings$2;

    invoke-direct {v9, p0, v0}, Lcom/android/exsettings/location/LocationSettings$2;-><init>(Lcom/android/exsettings/location/LocationSettings;Lcom/android/exsettings/SettingsActivity;)V

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f100010

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/exsettings/location/LocationSettings;->mAgpsEnabled:Z

    .line 224
    const-string v6, "assisted_gps"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 225
    iget-boolean v6, p0, Lcom/android/exsettings/location/LocationSettings;->mAgpsEnabled:Z

    if-nez v6, :cond_1

    .line 226
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    .line 230
    iget-object v9, p0, Lcom/android/exsettings/location/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "assisted_gps_enabled"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 234
    :cond_2
    const-string v6, "recent_location_requests"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 236
    new-instance v3, Lcom/android/exsettings/location/RecentLocationApps;

    invoke-direct {v3, v0}, Lcom/android/exsettings/location/RecentLocationApps;-><init>(Lcom/android/exsettings/SettingsActivity;)V

    .line 237
    .local v3, "recentApps":Lcom/android/exsettings/location/RecentLocationApps;
    invoke-virtual {v3}, Lcom/android/exsettings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v4

    .line 238
    .local v4, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 239
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4, v6}, Lcom/android/exsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 249
    :goto_1
    const/4 v2, 0x0

    .line 253
    .local v2, "lockdownOnLocationAccess":Z
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v7, "no_share_location"

    iget-object v8, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 255
    const/4 v2, 0x1

    .line 257
    :cond_3
    invoke-direct {p0, v0, v5, v2}, Lcom/android/exsettings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 259
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->refreshLocationMode()V

    .line 260
    return-object v5

    .end local v2    # "lockdownOnLocationAccess":Z
    .end local v3    # "recentApps":Lcom/android/exsettings/location/RecentLocationApps;
    .end local v4    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_4
    move v6, v8

    .line 230
    goto :goto_0

    .line 242
    .restart local v3    # "recentApps":Lcom/android/exsettings/location/RecentLocationApps;
    .restart local v4    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_5
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 243
    .local v1, "banner":Landroid/preference/Preference;
    const v6, 0x7f040089

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 244
    const v6, 0x7f0c04e4

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 245
    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 246
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private setAssistedGpsSwhitch(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 311
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 312
    const-string v6, "assisted_gps_supl_host"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v6, "assisted_gps_supl_port"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 315
    :cond_0
    const/4 v4, 0x0

    .line 317
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 318
    .local v3, "properties":Ljava/util/Properties;
    new-instance v2, Ljava/io/File;

    const-string v6, "/etc/gps.conf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 321
    const-string v6, "assisted_gps_supl_host"

    const-string v7, "SUPL_HOST"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    const-string v6, "assisted_gps_supl_port"

    const-string v7, "SUPL_PORT"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    if-eqz v5, :cond_1

    .line 332
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 339
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const-string v7, "assisted_gps_enabled"

    if-eqz p1, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 343
    return-void

    .line 325
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "LocationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    if-eqz v4, :cond_1

    .line 332
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 333
    :catch_1
    move-exception v6

    goto :goto_0

    .line 330
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_2

    .line 332
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 334
    :cond_2
    :goto_4
    throw v6

    .line 339
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 333
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "properties":Ljava/util/Properties;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 330
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "properties":Ljava/util/Properties;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 325
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/exsettings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 349
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 351
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    iput-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 355
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 430
    const v0, 0x7f0c0994

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/exsettings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 144
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 145
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 147
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const/4 v2, 0x1

    const v3, 0x7f0c0da6

    invoke-virtual {p0, v3}, Lcom/android/exsettings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/widget/SwitchBar;->setOverlayTextView(ZLjava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 149
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 151
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 408
    const/4 v0, 0x1

    const v1, 0x7f0c04ec

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 410
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 411
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->onDestroyView()V

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 157
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 435
    packed-switch p1, :pswitch_data_0

    .line 455
    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 458
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-nez p2, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 459
    iget-object v4, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 460
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 462
    invoke-direct {p0, v0}, Lcom/android/exsettings/location/LocationSettings;->setAssistedGpsSwhitch(Z)V

    .line 464
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 466
    iget-boolean v3, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_0

    .line 467
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 470
    iget-boolean v3, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_1

    .line 471
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 475
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 476
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 477
    const v1, 0x7f0c04dd

    invoke-direct {p0, v2, v1}, Lcom/android/exsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    .line 490
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->injector:Lcom/android/exsettings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/exsettings/location/SettingsInjector;->reloadStatusMessages()V

    .line 491
    return-void

    .line 437
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c04e2

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 440
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c04e1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 443
    :pswitch_2
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c04e0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 446
    :pswitch_3
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c04df

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 455
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_4
    move v3, v2

    .line 458
    goto :goto_2

    :cond_5
    move v3, v2

    .line 459
    goto :goto_3

    .line 480
    :cond_6
    if-eqz v0, :cond_7

    .line 481
    const v2, 0x7f0c0a94

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 483
    :cond_7
    const v1, 0x7f0c0a95

    invoke-direct {p0, v2, v1}, Lcom/android/exsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 416
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 424
    invoke-super {p0, p1}, Lcom/android/exsettings/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 418
    :pswitch_0
    const-class v1, Lcom/android/exsettings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c04ed

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 422
    const/4 v1, 0x1

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    .line 183
    :cond_1
    invoke-super {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->onPause()V

    .line 184
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 266
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/exsettings/location/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_4

    .line 267
    iget-object v8, p0, Lcom/android/exsettings/location/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 268
    const-string v8, "assisted_gps_supl_host"

    invoke-static {v0, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "assisted_gps_supl_port"

    invoke-static {v0, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 271
    :cond_0
    const/4 v4, 0x0

    .line 273
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 274
    .local v3, "properties":Ljava/util/Properties;
    new-instance v2, Ljava/io/File;

    const-string v8, "/etc/gps.conf"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 277
    const-string v8, "assisted_gps_supl_host"

    const-string v9, "SUPL_HOST"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    const-string v8, "assisted_gps_supl_port"

    const-string v9, "SUPL_PORT"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    if-eqz v5, :cond_1

    .line 288
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 295
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const-string v8, "assisted_gps_enabled"

    iget-object v9, p0, Lcom/android/exsettings/location/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v7

    :cond_2
    invoke-static {v0, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    :goto_1
    return v7

    .line 281
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "LocationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    if-eqz v4, :cond_1

    .line 288
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 289
    :catch_1
    move-exception v8

    goto :goto_0

    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_3

    .line 288
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 290
    :cond_3
    :goto_4
    throw v6

    .end local v4    # "stream":Ljava/io/FileInputStream;
    :cond_4
    move v7, v6

    .line 299
    goto :goto_1

    .line 289
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "properties":Ljava/util/Properties;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 286
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "properties":Ljava/util/Properties;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 281
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->onResume()V

    .line 162
    invoke-direct {p0}, Lcom/android/exsettings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 163
    iget-boolean v0, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    .line 167
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 498
    if-eqz p2, :cond_0

    .line 499
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/location/LocationSettings;->setLocationMode(I)V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
