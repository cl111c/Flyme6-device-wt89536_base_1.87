.class abstract Lcom/android/exsettings/accounts/AccountPreferenceBase;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Lcom/android/exsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field protected mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUm:Landroid/os/UserManager;

.field protected mUserHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/exsettings/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/exsettings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/accounts/AccountPreferenceBase;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 10
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "prefs":Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v6, p1}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    iget-object v6, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v6, p1}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/exsettings/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 162
    .local v4, "targetCtx":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 163
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x7f0d006e

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 164
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 165
    .local v5, "themedCtx":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    iget v7, v1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {v6, v5, v7, p2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 175
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "targetCtx":Landroid/content/Context;
    .end local v5    # "themedCtx":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v3

    .line 169
    .restart local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "AccountSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 172
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "AccountSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 82
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 104
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 105
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    .line 106
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    .line 70
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 71
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/exsettings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 73
    new-instance v1, Lcom/android/exsettings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/android/exsettings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/exsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 111
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 116
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 117
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 181
    return-void
.end method
