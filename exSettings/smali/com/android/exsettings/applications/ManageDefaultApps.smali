.class public Lcom/android/exsettings/applications/ManageDefaultApps;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/exsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private myUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    .line 210
    new-instance v0, Lcom/android/exsettings/applications/ManageDefaultApps$4;

    invoke-direct {v0}, Lcom/android/exsettings/applications/ManageDefaultApps$4;-><init>()V

    sput-object v0, Lcom/android/exsettings/applications/ManageDefaultApps;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/android/exsettings/applications/ManageDefaultApps$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/ManageDefaultApps$1;-><init>(Lcom/android/exsettings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/android/exsettings/applications/ManageDefaultApps$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/ManageDefaultApps$2;-><init>(Lcom/android/exsettings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/applications/ManageDefaultApps;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageDefaultApps;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/applications/ManageDefaultApps;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageDefaultApps;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/applications/ManageDefaultApps;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageDefaultApps;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/applications/ManageDefaultApps;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageDefaultApps;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->myUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageDefaultApps;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/applications/ManageDefaultApps;)Lcom/android/exsettings/applications/DefaultBrowserPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ManageDefaultApps;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    return-object v0
.end method

.method private updateDefaultBrowserPreference()V
    .locals 9

    .prologue
    const v8, 0x7f0c0afe

    .line 104
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    .line 106
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 108
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v5, "http:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->myUserId:I

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 118
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 119
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v3}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 121
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v2}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 123
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v8}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setSummary(I)V

    goto :goto_0

    .line 126
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v8}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setSummary(I)V

    .line 127
    sget-object v5, Lcom/android/exsettings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string v6, "Cannot set empty default Browser value!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 202
    const/16 v0, 0xb5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 133
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->addPreferencesFromResource(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->myUserId:I

    .line 140
    const-string v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/DefaultBrowserPreference;

    iput-object v1, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    .line 141
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    new-instance v2, Lcom/android/exsettings/applications/ManageDefaultApps$3;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/ManageDefaultApps$3;-><init>(Lcom/android/exsettings/applications/ManageDefaultApps;)V

    invoke-virtual {v1, v2}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->myUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    .line 168
    .local v0, "isRestrictedUser":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/applications/DefaultSmsPreference;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    const-string v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/applications/DefaultPhonePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    const-string v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/applications/DefaultEmergencyPreference;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 177
    const-string v1, "default_emergency_app"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/applications/DefaultEmergencyPreference;->isCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v1

    const-class v2, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/exsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 184
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 198
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 189
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V

    .line 190
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 191
    return-void
.end method
