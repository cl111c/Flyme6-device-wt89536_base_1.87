.class public Lcom/android/exsettings/notification/NotificationStatusbar;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "NotificationStatusbar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final KEY_NOTIFICATION_SHOW:Ljava/lang/String;

.field private final KEY_NOT_DISTURB_SETTINGS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mNotDisturbObserver:Landroid/database/ContentObserver;

.field private mNotDisturbSettings:Landroid/preference/SwitchPreference;

.field private mNotificationShow:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 64
    const-string v0, "LocksreenInterfaceSettings"

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->TAG:Ljava/lang/String;

    .line 66
    const-string v0, "notification_show"

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->KEY_NOTIFICATION_SHOW:Ljava/lang/String;

    .line 67
    const-string v0, "not_disturb_settings"

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->KEY_NOT_DISTURB_SETTINGS:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/exsettings/notification/NotificationStatusbar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/NotificationStatusbar$1;-><init>(Lcom/android/exsettings/notification/NotificationStatusbar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotDisturbObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/notification/NotificationStatusbar;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationStatusbar;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/notification/NotificationStatusbar;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationStatusbar;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotDisturbSettings:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private initPreference()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    const-string v2, "notification_show"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/NotificationStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotificationShow:Landroid/preference/SwitchPreference;

    .line 97
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotificationShow:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lock_screen_show_notifications"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 100
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lock_screen_allow_private_notifications"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 102
    .local v0, "allowPrivate":Z
    :goto_1
    iget-object v5, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotificationShow:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 104
    const-string v2, "not_disturb_settings"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/NotificationStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotDisturbSettings:Landroid/preference/SwitchPreference;

    .line 105
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotDisturbSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotDisturbSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone_dnd"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 109
    return-void

    .end local v0    # "allowPrivate":Z
    .end local v1    # "enabled":Z
    :cond_1
    move v1, v4

    .line 98
    goto :goto_0

    .restart local v1    # "enabled":Z
    :cond_2
    move v0, v4

    .line 100
    goto :goto_1

    .restart local v0    # "allowPrivate":Z
    :cond_3
    move v2, v4

    .line 102
    goto :goto_2

    :cond_4
    move v3, v4

    .line 107
    goto :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/NotificationStatusbar;->addPreferencesFromResource(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->initPreference()V

    .line 94
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotDisturbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 113
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 114
    .local v1, "isChecked":Z
    const-string v4, "notification_show"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    if-eqz v1, :cond_0

    move v2, v3

    .line 116
    .local v2, "val":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_allow_private_notifications"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    .end local v2    # "val":I
    :cond_1
    :goto_0
    return v3

    .line 120
    :cond_2
    const-string v4, "not_disturb_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    if-eqz v1, :cond_3

    move v2, v3

    .line 123
    .restart local v2    # "val":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone_dnd"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.PHONEKEEPER_DND_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 138
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotDisturbSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone_dnd"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "phone_dnd"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationStatusbar;->mNotDisturbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    return-void
.end method
