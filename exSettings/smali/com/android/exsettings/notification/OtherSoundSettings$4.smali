.class final Lcom/android/exsettings/notification/OtherSoundSettings$4;
.super Lcom/android/exsettings/notification/SettingPref;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # [I

    .prologue
    .line 100
    invoke-direct/range {p0 .. p5}, Lcom/android/exsettings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected setSetting(Landroid/content/Context;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 103
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 104
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 109
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v1

    return v1

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method
