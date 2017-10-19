.class public Lcom/android/exsettings/accounts/AccountSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/exsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;,
        Lcom/android/exsettings/accounts/AccountSettings$ProfileData;
    }
.end annotation


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mAutoSync:Landroid/view/MenuItem;

.field private mManagedProfileBroadcastReceiver:Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mProfileNotAvailablePreference:Landroid/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/exsettings/accounts/AccountSettings$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mShowOperatorAccount:Z

.field private mUm:Landroid/os/UserManager;

.field private subMenu:Landroid/view/SubMenu;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/exsettings/accounts/AccountSettings;Lcom/android/exsettings/accounts/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 112
    iput v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 114
    iput-boolean v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->mShowOperatorAccount:Z

    .line 669
    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/accounts/AccountSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/accounts/AccountSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/exsettings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/accounts/AccountSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/exsettings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/accounts/AccountSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exsettings/accounts/AccountSettings;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/accounts/AccountSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAutoSync:Landroid/view/MenuItem;

    return-object v0
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/exsettings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6
    .param p1, "helper"    # Lcom/android/exsettings/accounts/AuthenticatorHelper;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 523
    iget v4, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v4, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v2

    .line 527
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 529
    .local v0, "authoritiesForType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 530
    const-string v2, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No sync authorities for account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 531
    goto :goto_0

    .line 533
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v4, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v4, :cond_3

    .line 534
    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 538
    goto :goto_0
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 402
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 406
    return-void
.end method

.method private getAccountTypePreferences(Lcom/android/exsettings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "helper"    # Lcom/android/exsettings/accounts/AuthenticatorHelper;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exsettings/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v13

    .line 460
    .local v13, "accountTypes":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    array-length v2, v13

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    .local v12, "accountTypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v2, v13

    if-ge v15, v2, :cond_4

    .line 464
    aget-object v11, v13, v15

    .line 466
    .local v11, "accountType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/android/exsettings/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 472
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/exsettings/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/exsettings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 476
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 479
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, "titleResPackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v7

    .line 482
    .local v7, "titleResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    .line 484
    .local v14, "accounts":[Landroid/accounts/Account;
    array-length v2, v14

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v16, 0x1

    .line 487
    .local v16, "skipToAccount":Z
    :goto_2
    if-eqz v16, :cond_3

    .line 488
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v9, "fragmentArguments":Landroid/os/Bundle;
    const-string v2, "account"

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 491
    const-string v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 493
    new-instance v2, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v3, Lcom/android/exsettings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/exsettings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 484
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v16    # "skipToAccount":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 498
    .restart local v16    # "skipToAccount":Z
    :cond_3
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 499
    .restart local v9    # "fragmentArguments":Landroid/os/Bundle;
    const-string v2, "account_type"

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "account_label"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 504
    new-instance v2, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v3, Lcom/android/exsettings/accounts/ManageAccountsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/exsettings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 512
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "titleResPackageName":Ljava/lang/String;
    .end local v7    # "titleResId":I
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v14    # "accounts":[Landroid/accounts/Account;
    .end local v16    # "skipToAccount":Z
    :cond_4
    new-instance v2, Lcom/android/exsettings/accounts/AccountSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/exsettings/accounts/AccountSettings$2;-><init>(Lcom/android/exsettings/accounts/AccountSettings;)V

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 518
    return-object v12
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 384
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v3}, Lcom/android/exsettings/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 385
    .local v0, "adminApplicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 386
    const/4 v3, 0x0

    .line 389
    :goto_0
    return-object v3

    .line 388
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 389
    .local v1, "appLabel":Ljava/lang/CharSequence;
    const v3, 0x7f0c0a9e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/exsettings/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 409
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 410
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 411
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    .line 412
    .local v0, "authenticatorHelper":Lcom/android/exsettings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 410
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "authenticatorHelper":Lcom/android/exsettings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 366
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0c0821

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 367
    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 368
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 369
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 370
    return-object v0
.end method

.method private newAddOperatorAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0c0d20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 395
    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 396
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 397
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 398
    return-object v0
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0c0823

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 376
    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 377
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 378
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 379
    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 420
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 421
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    .line 422
    .local v0, "authenticatorHelper":Lcom/android/exsettings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 420
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "authenticatorHelper":Lcom/android/exsettings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/exsettings/accounts/AccountSettings$ProfileData;)V
    .locals 5
    .param p1, "profileData"    # Lcom/android/exsettings/accounts/AccountSettings$ProfileData;

    .prologue
    .line 429
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 430
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    iget-object v4, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/exsettings/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/exsettings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 433
    .local v2, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 434
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 435
    iget-object v4, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 440
    :cond_1
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 441
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 452
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;>;"
    :cond_2
    :goto_1
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 453
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 455
    :cond_3
    return-void

    .line 445
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 446
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f02004c

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 447
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f0c0822

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 450
    iget-object v3, p1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 8
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v7, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 327
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;

    invoke-direct {v1, v7}, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/exsettings/accounts/AccountSettings$1;)V

    .line 328
    .local v1, "profileData":Lcom/android/exsettings/accounts/AccountSettings$ProfileData;
    iput-object p1, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 329
    if-eqz p2, :cond_2

    .line 330
    new-instance v3, Lcom/android/exsettings/AccessiblePreferenceCategory;

    invoke-direct {v3, v0}, Lcom/android/exsettings/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    .line 331
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    iget-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f040151

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 333
    iget-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0c0381

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 334
    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/accounts/AccountSettings;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "workGroupSummary":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    check-cast v3, Lcom/android/exsettings/AccessiblePreferenceCategory;

    const v4, 0x7f0c0382

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/exsettings/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/exsettings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v0}, Lcom/android/exsettings/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    .line 344
    .end local v2    # "workGroupSummary":Ljava/lang/String;
    :goto_0
    iget-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 348
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    new-instance v3, Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-direct {v3, v0, v4, v5, p0}, Lcom/android/exsettings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/exsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    .line 351
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_modify_accounts"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    invoke-direct {p0, v0}, Lcom/android/exsettings/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    .line 353
    iget-boolean v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mShowOperatorAccount:Z

    if-eqz v3, :cond_3

    .line 354
    invoke-direct {p0, v0}, Lcom/android/exsettings/accounts/AccountSettings;->newAddOperatorAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    .line 361
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    return-void

    .line 340
    :cond_1
    iget-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0c0380

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 341
    iget-object v3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    check-cast v3, Lcom/android/exsettings/AccessiblePreferenceCategory;

    const v4, 0x7f0c0383

    invoke-virtual {p0, v4}, Lcom/android/exsettings/accounts/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/exsettings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_2
    iput-object p3, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    goto :goto_1

    .line 357
    :cond_3
    iput-object v7, v1, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0x8

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;

    .line 242
    .local v0, "profileData":Lcom/android/exsettings/accounts/AccountSettings$ProfileData;
    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, v0}, Lcom/android/exsettings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/exsettings/accounts/AccountSettings$ProfileData;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing Settings screen for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    .line 159
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    .line 160
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mShowOperatorAccount:Z

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 167
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 171
    const/high16 v0, 0x7f140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 173
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 234
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 235
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 236
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSettings;->cleanUpPreferences()V

    .line 237
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 252
    iget-object v6, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 253
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 254
    iget-object v6, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;

    .line 255
    .local v3, "profileData":Lcom/android/exsettings/accounts/AccountSettings$ProfileData;
    iget-object v6, v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-ne p1, v6, :cond_0

    .line 256
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.USER"

    iget-object v7, v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 258
    const-string v6, "authorities"

    iget-object v7, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v2}, Lcom/android/exsettings/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 283
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "profileData":Lcom/android/exsettings/accounts/AccountSettings$ProfileData;
    :goto_1
    return v5

    .line 262
    .restart local v3    # "profileData":Lcom/android/exsettings/accounts/AccountSettings$ProfileData;
    :cond_0
    iget-object v6, v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->addOperatorAccountPreference:Landroid/preference/Preference;

    if-ne p1, v6, :cond_1

    .line 263
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 264
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "com.android.email"

    const-string v7, "com.android.email.activity.setup.AccountSetupFinal"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v6, "FLOW_MODE"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v6, "FLOW_ACCOUNT_TYPE"

    const-string v7, "com.android.email.pop3"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v2}, Lcom/android/exsettings/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 270
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v6, v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-ne p1, v6, :cond_2

    .line 271
    iget-object v6, v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 272
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/exsettings/accounts/AccountSettings$1;

    invoke-direct {v7, p0, v4}, Lcom/android/exsettings/accounts/AccountSettings$1;-><init>(Lcom/android/exsettings/accounts/AccountSettings;I)V

    invoke-static {v6, v4, v7}, Lcom/android/exsettings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 253
    .end local v4    # "userId":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v3    # "profileData":Lcom/android/exsettings/accounts/AccountSettings$ProfileData;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v7, 0x7f120332

    const v6, 0x7f120331

    const v3, 0x7f0c08a6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 178
    .local v0, "currentProfile":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 185
    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->subMenu:Landroid/view/SubMenu;

    if-nez v2, :cond_1

    .line 186
    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->subMenu:Landroid/view/SubMenu;

    .line 187
    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAutoSync:Landroid/view/MenuItem;

    if-nez v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->subMenu:Landroid/view/SubMenu;

    invoke-interface {v2, v4, v4, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x62

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/exsettings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->mAutoSync:Landroid/view/MenuItem;

    .line 196
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020241

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 200
    :cond_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    :goto_0
    return-void

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 204
    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;

    iget-object v2, v2, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 206
    .local v1, "managedProfile":Landroid/os/UserHandle;
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/exsettings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 211
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/exsettings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 219
    .end local v1    # "managedProfile":Landroid/os/UserHandle;
    :cond_3
    const-string v2, "AccountSettings"

    const-string v3, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 226
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->updateUi()V

    .line 227
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 228
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountSettings;->listenToAccountUpdates()V

    .line 229
    return-void
.end method

.method updateUi()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 288
    const v8, 0x7f080003

    invoke-virtual {p0, v8}, Lcom/android/exsettings/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 290
    iget-object v8, p0, Lcom/android/exsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v8}, Lcom/android/exsettings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 292
    const-string v7, "AccountSettings"

    const-string v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings;->finish()V

    .line 322
    :cond_0
    return-void

    .line 297
    :cond_1
    const-string v8, "account"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 298
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/android/exsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 300
    iget-object v8, p0, Lcom/android/exsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 301
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v6, v7, v2}, Lcom/android/exsettings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 314
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 315
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 316
    iget-object v7, p0, Lcom/android/exsettings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;

    .line 317
    .local v3, "profileData":Lcom/android/exsettings/accounts/AccountSettings$ProfileData;
    iget-object v7, v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 318
    iget-object v7, v3, Lcom/android/exsettings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 320
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/exsettings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/exsettings/accounts/AccountSettings$ProfileData;)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "i":I
    .end local v3    # "profileData":Lcom/android/exsettings/accounts/AccountSettings$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_4
    iget-object v8, p0, Lcom/android/exsettings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 304
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 305
    .restart local v5    # "profilesCount":I
    if-le v5, v0, :cond_5

    .line 306
    .local v0, "addCategory":Z
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_2

    .line 307
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/android/exsettings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "addCategory":Z
    .end local v1    # "i":I
    :cond_5
    move v0, v7

    .line 305
    goto :goto_1
.end method
