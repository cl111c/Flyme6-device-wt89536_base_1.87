.class public Lcom/android/exsettings/AgpsSettings;
.super Landroid/preference/PreferenceActivity;
.source "AgpsSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAssistedType:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFirstTime:Z

.field private mNetworkType:Ljava/lang/String;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mResetType:Ljava/lang/String;

.field private mServer:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private SetValue(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 374
    const-string v5, "host"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "supl_host":Ljava/lang/String;
    const-string v5, "port"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "supl_port":Ljava/lang/String;
    const-string v5, "providerid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "agps_provid":Ljava/lang/String;
    const-string v5, "network"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "agps_network":Ljava/lang/String;
    const-string v5, "resettype"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "agps_reset_type":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 382
    iget-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_supl_host"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 388
    :goto_0
    if-eqz v4, :cond_4

    .line 389
    iget-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_supl_port"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 395
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 396
    iget-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_position_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 400
    iget-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_network"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 403
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 404
    const-string v5, "HOT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 405
    const-string v2, "2"

    .line 411
    :goto_2
    iget-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_reset_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    :cond_2
    return-void

    .line 385
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_supl_host"

    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0d6d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 392
    :cond_4
    iget-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_supl_port"

    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0d6e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 406
    :cond_5
    const-string v5, "WARM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 407
    const-string v2, "1"

    goto :goto_2

    .line 409
    :cond_6
    const-string v2, "0"

    goto :goto_2
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/exsettings/AgpsSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    const-string p1, ""

    .line 235
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object p1, Lcom/android/exsettings/AgpsSettings;->sNotSet:Ljava/lang/String;

    .line 227
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private fillUi(Z)V
    .locals 2
    .param p1, "restore"    # Z

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/exsettings/AgpsSettings;->mFirstTime:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/AgpsSettings;->mFirstTime:Z

    .line 205
    iget-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->getSuplServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->getSuplPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/exsettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/AgpsSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/exsettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/AgpsSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->setPrefAgpsType()V

    .line 212
    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->setPrefAgpsNetwork()V

    .line 213
    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->setPrefAgpsResetType()V

    .line 214
    return-void
.end method

.method private getPrefAgpsResetType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_reset_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "agps_reset_type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 264
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 265
    const-string v0, "HOT"

    .line 272
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .end local v0    # "agps_reset_type":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 266
    .restart local v0    # "agps_reset_type":Ljava/lang/String;
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 267
    const-string v0, "WARM"

    goto :goto_0

    .line 269
    :cond_2
    const-string v0, "COLD"

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0d70

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getPrefAgpsType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_position_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "agps_type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agps_type":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agps_type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0d71

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPrefNetwork()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_network"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "agps_network":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agps_network":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agps_network":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0d6f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSuplPort()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_supl_port"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "supl_port":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "supl_port":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "supl_port":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0d6e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSuplServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_supl_host"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "supl_host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "supl_host":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "supl_host":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0d6d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private restoreAgpsParam()V
    .locals 11

    .prologue
    .line 330
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 331
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 333
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 334
    .local v5, "properties":Ljava/util/Properties;
    new-instance v3, Ljava/io/File;

    const-string v8, "/etc/gps.conf"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v3, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 337
    const-string v8, "host"

    const-string v9, "SUPL_HOST"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v8, "port"

    const-string v9, "SUPL_PORT"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    if-eqz v7, :cond_4

    .line 345
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 350
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "properties":Ljava/util/Properties;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const-string v8, "MSB"

    iput-object v8, p0, Lcom/android/exsettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    .line 351
    const-string v8, "HOME"

    iput-object v8, p0, Lcom/android/exsettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    .line 352
    const-string v8, "HOT"

    iput-object v8, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    .line 353
    const-string v8, "providerid"

    iget-object v9, p0, Lcom/android/exsettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v8, "network"

    iget-object v9, p0, Lcom/android/exsettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v8, "resettype"

    iget-object v9, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v1}, Lcom/android/exsettings/AgpsSettings;->SetValue(Landroid/os/Bundle;)V

    .line 357
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/exsettings/AgpsSettings;->fillUi(Z)V

    .line 358
    const-string v8, "location"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/AgpsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 360
    .local v4, "objLocManager":Landroid/location/LocationManager;
    iget-object v8, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    const-string v9, "HOT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 361
    const-string v8, "resettype"

    const-string v9, "2"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_1
    const-string v8, "gps"

    const-string v9, "agps_parms_changed"

    invoke-virtual {v4, v8, v9, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 369
    .local v0, "bRet":Z
    const-string v8, "AGPSSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendExtraCommand ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 346
    .end local v0    # "bRet":Z
    .end local v4    # "objLocManager":Landroid/location/LocationManager;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    move-object v6, v7

    .line 347
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 340
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "properties":Ljava/util/Properties;
    :catch_1
    move-exception v2

    .line 341
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "AGPSSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    if-eqz v6, :cond_0

    .line 345
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 346
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 343
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v6, :cond_1

    .line 345
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 347
    :cond_1
    :goto_4
    throw v8

    .line 362
    .restart local v4    # "objLocManager":Landroid/location/LocationManager;
    :cond_2
    iget-object v8, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    const-string v9, "WARM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 363
    const-string v8, "resettype"

    const-string v9, "1"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_3
    const-string v8, "resettype"

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 346
    .end local v4    # "objLocManager":Landroid/location/LocationManager;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 343
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 340
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :cond_4
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private saveAgpsParams()V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "host"

    iget-object v2, p0, Lcom/android/exsettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/AgpsSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "port"

    iget-object v2, p0, Lcom/android/exsettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/AgpsSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "providerid"

    iget-object v2, p0, Lcom/android/exsettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "network"

    iget-object v2, p0, Lcom/android/exsettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    const-string v2, "HOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 319
    const-string v1, "resettype"

    const-string v2, "HOT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/AgpsSettings;->SetValue(Landroid/os/Bundle;)V

    .line 327
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    const-string v2, "WARM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 321
    const-string v1, "resettype"

    const-string v2, "WARM"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    const-string v1, "resettype"

    const-string v2, "COLD"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPrefAgpsNetwork()V
    .locals 5

    .prologue
    .line 170
    const-string v3, "agps_network"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 171
    .local v1, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "types":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->getPrefNetwork()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "defPref":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    .line 175
    const-string v3, "ALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "1"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 177
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v3, "0"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 180
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrefAgpsResetType()V
    .locals 5

    .prologue
    .line 185
    const-string v3, "agps_reset_type"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 186
    .local v1, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "types":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->getPrefAgpsResetType()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "defPref":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    .line 190
    const-string v3, "COLD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const-string v3, "2"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 192
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v3, "WARM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    const-string v3, "1"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 195
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_1
    const-string v3, "0"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 198
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrefAgpsType()V
    .locals 6

    .prologue
    .line 150
    const-string v4, "agps_pref"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 151
    .local v1, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "types":[Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 155
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->getPrefAgpsType()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "defPref":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    .line 157
    const-string v4, "MSB"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    const-string v4, "0"

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 159
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v4, "MSA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    const-string v4, "1"

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 162
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_1
    const-string v4, "2"

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 165
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 127
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/exsettings/AgpsSettings;->addPreferencesFromResource(I)V

    .line 128
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/AgpsSettings;->mFirstTime:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0d6c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/AgpsSettings;->sNotSet:Ljava/lang/String;

    .line 130
    const-string v0, "server_addr"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    .line 131
    const-string v0, "server_port"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/exsettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    .line 132
    invoke-direct {p0, v1}, Lcom/android/exsettings/AgpsSettings;->fillUi(Z)V

    .line 133
    return-void

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 285
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 286
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0490

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 290
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0498

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 294
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 308
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->saveAgpsParams()V

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/AgpsSettings;->restoreAgpsParam()V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 145
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 147
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 418
    instance-of v5, p1, Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 420
    check-cast v0, Landroid/preference/ListPreference;

    .line 421
    .local v0, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "prefKey":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 424
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 427
    .local v2, "type":I
    const-string v5, "agps_network"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 429
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "types":[Ljava/lang/String;
    if-nez v2, :cond_3

    .line 432
    const-string v5, "HOME"

    iput-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    .line 436
    :cond_0
    :goto_0
    if-ne v2, v7, :cond_1

    .line 437
    const v5, 0x7f0c0d6b

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 467
    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 468
    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 471
    .end local v0    # "pref":Landroid/preference/ListPreference;
    .end local v1    # "prefKey":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "types":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    return v7

    .line 433
    .restart local v0    # "pref":Landroid/preference/ListPreference;
    .restart local v1    # "prefKey":Ljava/lang/String;
    .restart local v2    # "type":I
    .restart local v3    # "types":[Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    if-ne v2, v7, :cond_0

    .line 434
    const-string v5, "ALL"

    iput-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    goto :goto_0

    .line 441
    .end local v3    # "types":[Ljava/lang/String;
    :cond_4
    const-string v5, "agps_reset_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 443
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0088

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 445
    .restart local v3    # "types":[Ljava/lang/String;
    if-nez v2, :cond_5

    .line 446
    const-string v5, "HOT"

    iput-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    goto :goto_1

    .line 447
    :cond_5
    if-ne v2, v7, :cond_6

    .line 448
    const-string v5, "WARM"

    iput-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    goto :goto_1

    .line 450
    :cond_6
    const-string v5, "COLD"

    iput-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mResetType:Ljava/lang/String;

    goto :goto_1

    .line 453
    .end local v3    # "types":[Ljava/lang/String;
    :cond_7
    const-string v5, "agps_pref"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 455
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0084

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 457
    .restart local v3    # "types":[Ljava/lang/String;
    if-nez v2, :cond_8

    .line 458
    const-string v5, "MSB"

    iput-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    goto :goto_1

    .line 459
    :cond_8
    if-ne v2, v7, :cond_1

    .line 460
    const-string v5, "MSA"

    iput-object v5, p0, Lcom/android/exsettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/android/exsettings/AgpsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 140
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0, p2}, Lcom/android/exsettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 218
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 219
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/AgpsSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    return-void
.end method
