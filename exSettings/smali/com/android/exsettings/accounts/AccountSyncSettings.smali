.class public Lcom/android/exsettings/accounts/AccountSyncSettings;
.super Lcom/android/exsettings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mSwitches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/accounts/SyncStateSwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    .line 84
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/accounts/AccountSyncSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/accounts/AccountSyncSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/accounts/AccountSyncSettings;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 487
    if-nez p1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v3

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    .line 491
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    .line 492
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 493
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 494
    const/4 v3, 0x1

    goto :goto_0

    .line 492
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 237
    new-instance v0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 239
    .local v0, "item":Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
    invoke-virtual {v0, v6}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setPersistent(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, p2, v6, v5}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 242
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 246
    .local v2, "providerLabel":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider needs a label for authority \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :cond_1
    const v4, 0x7f0c0842

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v0, p2}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 347
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 349
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 352
    :cond_0
    return-void
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 389
    .local v1, "syncInfo":Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    const/4 v2, 0x1

    .line 393
    .end local v1    # "syncInfo":Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 377
    if-eqz p3, :cond_0

    .line 378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1, v0}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 385
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 8
    .param p1, "startSync"    # Z

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 357
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 359
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v6, v3, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;

    if-nez v6, :cond_1

    .line 357
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 362
    check-cast v5, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;

    .line 363
    .local v5, "syncPref":Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
    invoke-virtual {v5}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 366
    invoke-virtual {v5}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 369
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v5    # "syncPref":Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
    :cond_2
    iget-object v6, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_3

    .line 370
    iget-object v6, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncAdapterType;

    .line 371
    .local v4, "syncAdapter":Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 374
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_3
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 209
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 210
    .local v3, "um":Landroid/os/UserManager;
    iget-object v6, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 211
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    .line 212
    .local v2, "isWorkProfile":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 213
    .local v1, "currentTitle":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    const v6, 0x7f0c0384

    :goto_1
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "accessibilityTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v0}, Lcom/android/exsettings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    return-void

    .end local v0    # "accessibilityTitle":Ljava/lang/String;
    .end local v1    # "currentTitle":Ljava/lang/CharSequence;
    .end local v2    # "isWorkProfile":Z
    :cond_0
    move v2, v5

    .line 211
    goto :goto_0

    .line 213
    .restart local v1    # "currentTitle":Ljava/lang/CharSequence;
    .restart local v2    # "isWorkProfile":Z
    :cond_1
    const v6, 0x7f0c0385

    goto :goto_1
.end method

.method private setFeedsState()V
    .locals 28

    .prologue
    .line 408
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 409
    .local v8, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    .line 410
    .local v22, "userId":I
    invoke-static/range {v22 .. v22}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v7

    .line 411
    .local v7, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/16 v18, 0x0

    .line 414
    .local v18, "syncIsFailing":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 416
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .local v6, "count":I
    :goto_0
    if-ge v9, v6, :cond_10

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v13

    .line 418
    .local v13, "pref":Landroid/preference/Preference;
    instance-of v0, v13, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 416
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v19, v13

    .line 421
    check-cast v19, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;

    .line 423
    .local v19, "syncPref":Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
    invoke-virtual/range {v19 .. v19}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 426
    .local v2, "account":Landroid/accounts/Account;
    move/from16 v0, v22

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v14

    .line 427
    .local v14, "status":Landroid/content/SyncStatusInfo;
    move/from16 v0, v22

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    .line 429
    .local v15, "syncEnabled":Z
    if-nez v14, :cond_5

    const/4 v5, 0x0

    .line 430
    .local v5, "authorityIsPending":Z
    :goto_2
    if-nez v14, :cond_6

    const/4 v10, 0x0

    .line 432
    .local v10, "initialSync":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v4}, Lcom/android/exsettings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 433
    .local v3, "activelySyncing":Z
    if-eqz v14, :cond_7

    iget-wide v0, v14, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_7

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    const/4 v11, 0x1

    .line 437
    .local v11, "lastSyncFailed":Z
    :goto_4
    if-nez v15, :cond_1

    const/4 v11, 0x0

    .line 438
    :cond_1
    if-eqz v11, :cond_2

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 439
    const/16 v18, 0x1

    .line 441
    :cond_2
    const-string v23, "AccountSettings"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 442
    const-string v23, "AccountSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Update sync status: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " active = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " pend ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_3
    if-nez v14, :cond_8

    const-wide/16 v16, 0x0

    .line 447
    .local v16, "successEndTime":J
    :goto_5
    if-nez v15, :cond_9

    .line 448
    const v23, 0x7f0c082a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    .line 458
    :goto_6
    move/from16 v0, v22

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v20

    .line 460
    .local v20, "syncState":I
    if-eqz v3, :cond_c

    if-ltz v20, :cond_c

    if-nez v10, :cond_c

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setActive(Z)V

    .line 462
    if-eqz v5, :cond_d

    if-ltz v20, :cond_d

    if-nez v10, :cond_d

    const/16 v23, 0x1

    :goto_8
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setPending(Z)V

    .line 465
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setFailed(Z)V

    .line 466
    invoke-static/range {v22 .. v22}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v23

    if-nez v23, :cond_e

    const/4 v12, 0x1

    .line 468
    .local v12, "oneTimeSyncMode":Z
    :goto_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setOneTimeSyncMode(Z)V

    .line 469
    if-nez v12, :cond_4

    if-eqz v15, :cond_f

    :cond_4
    const/16 v23, 0x1

    :goto_a
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 429
    .end local v3    # "activelySyncing":Z
    .end local v5    # "authorityIsPending":Z
    .end local v10    # "initialSync":Z
    .end local v11    # "lastSyncFailed":Z
    .end local v12    # "oneTimeSyncMode":Z
    .end local v16    # "successEndTime":J
    .end local v20    # "syncState":I
    :cond_5
    iget-boolean v5, v14, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 430
    .restart local v5    # "authorityIsPending":Z
    :cond_6
    iget-boolean v10, v14, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 433
    .restart local v3    # "activelySyncing":Z
    .restart local v10    # "initialSync":Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 446
    .restart local v11    # "lastSyncFailed":Z
    :cond_8
    iget-wide v0, v14, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v16, v0

    goto :goto_5

    .line 449
    .restart local v16    # "successEndTime":J
    :cond_9
    if-eqz v3, :cond_a

    .line 450
    const v23, 0x7f0c082d

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    goto :goto_6

    .line 451
    :cond_a
    const-wide/16 v24, 0x0

    cmp-long v23, v16, v24

    if-eqz v23, :cond_b

    .line 452
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/exsettings/accounts/AccountSyncSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    .line 454
    .local v21, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c082c

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v21, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 456
    .end local v21    # "timeString":Ljava/lang/String;
    :cond_b
    const-string v23, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 460
    .restart local v20    # "syncState":I
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 462
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 466
    :cond_e
    const/4 v12, 0x0

    goto :goto_9

    .line 469
    .restart local v12    # "oneTimeSyncMode":Z
    :cond_f
    const/16 v23, 0x0

    goto :goto_a

    .line 471
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "activelySyncing":Z
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "authorityIsPending":Z
    .end local v10    # "initialSync":Z
    .end local v11    # "lastSyncFailed":Z
    .end local v12    # "oneTimeSyncMode":Z
    .end local v13    # "pref":Landroid/preference/Preference;
    .end local v14    # "status":Landroid/content/SyncStatusInfo;
    .end local v15    # "syncEnabled":Z
    .end local v16    # "successEndTime":J
    .end local v19    # "syncPref":Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
    .end local v20    # "syncState":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    if-eqz v18, :cond_11

    const/16 v23, 0x0

    :goto_b
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    return-void

    .line 471
    :cond_11
    const/16 v23, 0x8

    goto :goto_b
.end method

.method private showIconForVivoSim(ILcom/android/internal/telephony/OperatorSimInfo;)V
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "operatorSimInfo"    # Lcom/android/internal/telephony/OperatorSimInfo;

    .prologue
    .line 583
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/OperatorSimInfo;->isSimTypeOperator(I)Z

    move-result v0

    .line 584
    .local v0, "isSimTypeOperator":Z
    if-eqz v0, :cond_0

    .line 585
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorSimInfo;->getOperatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorSimInfo;->getOperatorDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorSimInfo;->getGenericSimDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 590
    .local v2, "subId":I
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "operatorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 339
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 341
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 344
    :cond_0
    return-void
.end method

.method private updateAccountSwitches()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 501
    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 503
    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v9}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 505
    .local v7, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v0, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v5, v7

    .local v5, "n":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 507
    aget-object v6, v7, v2

    .line 509
    .local v6, "sa":Landroid/content/SyncAdapterType;
    iget-object v9, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 506
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 511
    const-string v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 512
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAccountSwitches: added authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to accountType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    :cond_2
    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 523
    .end local v6    # "sa":Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v2, v5, :cond_4

    .line 524
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 526
    :cond_4
    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 528
    const-string v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 529
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "looking for sync adapters that match account "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_5
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "m":I
    :goto_3
    if-ge v3, v4, :cond_8

    .line 532
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    .local v1, "authority":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {v9, v1, v10}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v8

    .line 536
    .local v8, "syncState":I
    const-string v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 537
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  found authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_6
    if-lez v8, :cond_7

    .line 540
    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v9, v1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 531
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 544
    .end local v1    # "authority":Ljava/lang/String;
    .end local v8    # "syncState":I
    :cond_8
    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 545
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4
    if-ge v2, v5, :cond_9

    .line 546
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 548
    :cond_9
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 579
    const v0, 0x7f0c098e

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x9

    return v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 177
    const v0, 0x7f120004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    const v0, 0x7f120215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f120216

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f120214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 183
    return-void
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 477
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->finish()V

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 483
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 190
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 191
    const-string v1, "AccountSettings"

    const-string v2, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->finish()V

    .line 206
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 196
    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account provided does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 201
    :cond_1
    const-string v1, "AccountSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 5

    .prologue
    .line 555
    invoke-super {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 556
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 557
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_0

    .line 558
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    new-instance v2, Lcom/android/internal/telephony/OperatorSimInfo;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/OperatorSimInfo;-><init>(Landroid/content/Context;)V

    .line 563
    .local v2, "operatorSimInfo":Lcom/android/internal/telephony/OperatorSimInfo;
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorSimInfo;->isOperatorFeatureEnabled()Z

    move-result v1

    .line 565
    .local v1, "isCustomSimFeatureEnabled":Z
    if-eqz v1, :cond_0

    .line 566
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 567
    .local v0, "accountName":Ljava/lang/String;
    const-string v3, "SIM1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/exsettings/accounts/AccountSyncSettings;->showIconForVivoSim(ILcom/android/internal/telephony/OperatorSimInfo;)V

    .line 575
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "isCustomSimFeatureEnabled":Z
    .end local v2    # "operatorSimInfo":Lcom/android/internal/telephony/OperatorSimInfo;
    :cond_0
    :goto_0
    return-void

    .line 569
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "isCustomSimFeatureEnabled":Z
    .restart local v2    # "operatorSimInfo":Lcom/android/internal/telephony/OperatorSimInfo;
    :cond_1
    const-string v3, "SIM2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lcom/android/exsettings/accounts/AccountSyncSettings;->showIconForVivoSim(ILcom/android/internal/telephony/OperatorSimInfo;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 157
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 158
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->setAccessibilityTitle()V

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 161
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0c083e

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "dialog":Landroid/app/Dialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 90
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c083f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c083b

    new-instance v3, Lcom/android/exsettings/accounts/AccountSyncSettings$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/accounts/AccountSyncSettings$1;-><init>(Lcom/android/exsettings/accounts/AccountSyncSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 133
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0840

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 139
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0843

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0844

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 259
    const/4 v4, 0x1

    const v5, 0x7f0c0830

    invoke-virtual {p0, v5}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020119

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 262
    .local v2, "syncNow":Landroid/view/MenuItem;
    const/4 v4, 0x2

    const v5, 0x7f0c0831

    invoke-virtual {p0, v5}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x1080038

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 265
    .local v1, "syncCancel":Landroid/view/MenuItem;
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 266
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_modify_accounts"

    iget-object v5, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 267
    const/4 v4, 0x3

    const v5, 0x7f0c083b

    invoke-virtual {p0, v5}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020117

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 270
    .local v0, "removeAccount":Landroid/view/MenuItem;
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 273
    .end local v0    # "removeAccount":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 275
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 278
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 279
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 166
    const v2, 0x7f040001

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 169
    .local v0, "list":Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/exsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 173
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 304
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 295
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    goto :goto_0

    .line 298
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    goto :goto_0

    .line 301
    :pswitch_2
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->showDialog(I)V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onPause()V

    .line 233
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 234
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 309
    instance-of v8, p2, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;

    if-eqz v8, :cond_3

    move-object v5, p2

    .line 310
    check-cast v5, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;

    .line 311
    .local v5, "syncPref":Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
    invoke-virtual {v5}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "authority":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 313
    .local v0, "account":Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 314
    .local v6, "userId":I
    invoke-static {v0, v1, v6}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    .line 316
    .local v3, "syncAutomatically":Z
    invoke-virtual {v5}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->isOneTimeSyncMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 317
    invoke-direct {p0, v0, v1, v7}, Lcom/android/exsettings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 334
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "syncAutomatically":Z
    .end local v5    # "syncPref":Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
    .end local v6    # "userId":I
    :cond_0
    :goto_0
    return v7

    .line 319
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v3    # "syncAutomatically":Z
    .restart local v5    # "syncPref":Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
    .restart local v6    # "userId":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v4

    .line 320
    .local v4, "syncOn":Z
    move v2, v3

    .line 321
    .local v2, "oldSyncState":Z
    if-eq v4, v2, :cond_0

    .line 323
    invoke-static {v0, v1, v4, v6}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 327
    invoke-static {v6}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v4, :cond_0

    .line 328
    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lcom/android/exsettings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 334
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "oldSyncState":Z
    .end local v3    # "syncAutomatically":Z
    .end local v4    # "syncOn":Z
    .end local v5    # "syncPref":Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
    .end local v6    # "userId":I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 283
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 285
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 287
    .local v0, "syncActive":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 288
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 289
    return-void

    .end local v0    # "syncActive":Z
    :cond_0
    move v0, v2

    .line 285
    goto :goto_0

    .restart local v0    # "syncActive":Z
    :cond_1
    move v1, v2

    .line 287
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 222
    const-string v0, "dummy"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->removePreference(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 224
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 225
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 227
    invoke-super {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onResume()V

    .line 228
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->setFeedsState()V

    .line 400
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 401
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
