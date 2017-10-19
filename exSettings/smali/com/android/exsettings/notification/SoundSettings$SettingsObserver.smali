.class final Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 1

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    .line 742
    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {p1}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 732
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 734
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 736
    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 738
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 743
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 759
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 760
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # invokes: Lcom/android/exsettings/notification/SoundSettings;->updateVibrateWhenRinging()V
    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->access$1500(Lcom/android/exsettings/notification/SoundSettings;)V

    .line 763
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 746
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # invokes: Lcom/android/exsettings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$1400(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 747
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 749
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 750
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 751
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
