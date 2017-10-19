.class final Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/OtherSoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/notification/OtherSoundSettings;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/OtherSoundSettings;

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 230
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 246
    # getter for: Lcom/android/exsettings/notification/OtherSoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;
    invoke-static {}, Lcom/android/exsettings/notification/OtherSoundSettings;->access$300()[Lcom/android/exsettings/notification/SettingPref;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/exsettings/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 247
    .local v3, "pref":Lcom/android/exsettings/notification/SettingPref;
    invoke-virtual {v3}, Lcom/android/exsettings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/OtherSoundSettings;

    # getter for: Lcom/android/exsettings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/exsettings/notification/OtherSoundSettings;->access$400(Lcom/android/exsettings/notification/OtherSoundSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/exsettings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 252
    .end local v3    # "pref":Lcom/android/exsettings/notification/SettingPref;
    :cond_0
    return-void

    .line 246
    .restart local v3    # "pref":Lcom/android/exsettings/notification/SettingPref;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public register(Z)V
    .locals 7
    .param p1, "register"    # Z

    .prologue
    .line 233
    iget-object v5, p0, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/OtherSoundSettings;

    # invokes: Lcom/android/exsettings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/exsettings/notification/OtherSoundSettings;->access$200(Lcom/android/exsettings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 234
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 235
    # getter for: Lcom/android/exsettings/notification/OtherSoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;
    invoke-static {}, Lcom/android/exsettings/notification/OtherSoundSettings;->access$300()[Lcom/android/exsettings/notification/SettingPref;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/exsettings/notification/SettingPref;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 236
    .local v4, "pref":Lcom/android/exsettings/notification/SettingPref;
    invoke-virtual {v4}, Lcom/android/exsettings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "arr$":[Lcom/android/exsettings/notification/SettingPref;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pref":Lcom/android/exsettings/notification/SettingPref;
    :cond_0
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 241
    :cond_1
    return-void
.end method
