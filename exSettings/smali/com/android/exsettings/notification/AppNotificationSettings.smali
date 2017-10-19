.class public Lcom/android/exsettings/notification/AppNotificationSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z


# instance fields
.field private mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

.field private final mBackend:Lcom/android/exsettings/notification/NotificationBackend;

.field private mBlock:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mIsSystemPackage:Z

.field private mPeekable:Landroid/preference/SwitchPreference;

.field private mPriority:Landroid/preference/SwitchPreference;

.field private mSensitive:Landroid/preference/SwitchPreference;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/exsettings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/exsettings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBackend:Lcom/android/exsettings/notification/NotificationBackend;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/notification/AppNotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/AppNotificationSettings;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/notification/AppNotificationSettings;)Lcom/android/exsettings/notification/NotificationBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/AppNotificationSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBackend:Lcom/android/exsettings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/notification/AppNotificationSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/AppNotificationSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/AppNotificationSettings;->updateDependents(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/notification/AppNotificationSettings;)Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/AppNotificationSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/notification/AppNotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/AppNotificationSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/notification/NotificationBackend$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/notification/NotificationBackend$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "AppNotificationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 292
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 293
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 294
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    .line 295
    .local v4, "row":Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    if-nez v4, :cond_3

    .line 296
    sget-boolean v5, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 289
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 301
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    :cond_3
    iget-object v5, v4, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 302
    sget-boolean v5, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 307
    :cond_4
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/exsettings/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 310
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    :cond_5
    return-void
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/notification/NotificationBackend$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/notification/NotificationBackend$AppRow;>;"
    invoke-static {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 284
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/exsettings/notification/AppNotificationSettings;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 285
    return-void
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 255
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 257
    array-length v0, v4

    .line 258
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 259
    aget-object v3, v4, v2

    .line 260
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 269
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 263
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    sget-boolean v1, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AppNotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/exsettings/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    sget-object v1, Lcom/android/exsettings/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 279
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private setVisible(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "visible"    # Z

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 231
    .local v0, "isVisible":Z
    :goto_0
    if-ne v0, p2, :cond_1

    .line 237
    :goto_1
    return-void

    .line 230
    .end local v0    # "isVisible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    .restart local v0    # "isVisible":Z
    :cond_1
    if-eqz p2, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0588

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 251
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 252
    return-void
.end method

.method private updateDependents(Z)V
    .locals 7
    .param p1, "banned"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 217
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 219
    .local v2, "lockscreenSecure":Z
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 220
    .local v1, "lockscreenNotificationsEnabled":Z
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 222
    .local v0, "allowPrivate":Z
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_4

    move v3, v4

    :goto_0
    invoke-direct {p0, v6, v3}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 223
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_5

    :cond_0
    move v3, v4

    :goto_1
    invoke-direct {p0, v6, v3}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 224
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_6

    :cond_1
    move v3, v4

    :goto_2
    invoke-direct {p0, v6, v3}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 225
    iget-object v3, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v6, :cond_2

    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v3, v5}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 227
    return-void

    :cond_4
    move v3, v5

    .line 222
    goto :goto_0

    :cond_5
    move v3, v5

    .line 223
    goto :goto_1

    :cond_6
    move v3, v5

    .line 224
    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    sget-boolean v0, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppNotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mCreated:Z

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "AppNotificationSettings"

    const-string v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mCreated:Z

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/exsettings/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/exsettings/AppHeader;->createAppHeader(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x1

    .line 100
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 103
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, "args":Landroid/os/Bundle;
    sget-boolean v6, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "AppNotificationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate getIntent()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 106
    const-string v6, "AppNotificationSettings"

    const-string v7, "No intent"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->toastAndFinish()V

    .line 205
    :goto_0
    return-void

    .line 111
    :cond_1
    if-eqz v0, :cond_3

    const-string v6, "package"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "package"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "pkg":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_4

    const-string v6, "uid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "uid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    :goto_2
    iput v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    .line 117
    iget v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    if-eq v6, v9, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    :cond_2
    const-string v6, "AppNotificationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing extras: app_package was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "app_uid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->toastAndFinish()V

    goto :goto_0

    .line 111
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_3
    const-string v6, "app_package"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 114
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_4
    const-string v6, "app_uid"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    goto :goto_2

    .line 124
    :cond_5
    sget-boolean v6, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "AppNotificationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load details for pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 126
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    invoke-static {v4, v3, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 127
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_7

    .line 128
    const-string v6, "AppNotificationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find package info: app_package was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "app_uid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->toastAndFinish()V

    goto/16 :goto_0

    .line 133
    :cond_7
    invoke-static {v4, v1}, Lcom/android/exsettings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    .line 135
    const v6, 0x7f08000b

    invoke-virtual {p0, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 136
    const-string v6, "block"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    .line 137
    const-string v6, "priority"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    .line 138
    const-string v6, "peekable"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    .line 139
    const-string v6, "sensitive"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    .line 141
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBackend:Lcom/android/exsettings/notification/NotificationBackend;

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v4, v7}, Lcom/android/exsettings/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    .line 144
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 145
    .local v5, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/notification/NotificationBackend$AppRow;>;"
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v6, v6, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/exsettings/notification/AppNotificationSettings;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    .line 148
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v7, v7, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->banned:Z

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 149
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v6, v6, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->banned:Z

    invoke-direct {p0, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->updateDependents(Z)V

    .line 150
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v7, v7, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->priority:Z

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 151
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v7, v7, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->peekable:Z

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 152
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v7, v7, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->sensitive:Z

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 154
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    new-instance v7, Lcom/android/exsettings/notification/AppNotificationSettings$1;

    invoke-direct {v7, p0, v3}, Lcom/android/exsettings/notification/AppNotificationSettings$1;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    new-instance v7, Lcom/android/exsettings/notification/AppNotificationSettings$2;

    invoke-direct {v7, p0, v3}, Lcom/android/exsettings/notification/AppNotificationSettings$2;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    new-instance v7, Lcom/android/exsettings/notification/AppNotificationSettings$3;

    invoke-direct {v7, p0, v3}, Lcom/android/exsettings/notification/AppNotificationSettings$3;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    new-instance v7, Lcom/android/exsettings/notification/AppNotificationSettings$4;

    invoke-direct {v7, p0, v3}, Lcom/android/exsettings/notification/AppNotificationSettings$4;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    iget-object v6, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v6, v6, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v6, :cond_8

    .line 194
    const-string v6, "app_settings"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    new-instance v7, Lcom/android/exsettings/notification/AppNotificationSettings$5;

    invoke-direct {v7, p0}, Lcom/android/exsettings/notification/AppNotificationSettings$5;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 203
    :cond_8
    const-string v6, "app_settings"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 210
    iget v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->finish()V

    .line 214
    :cond_0
    return-void
.end method
