.class Lcom/android/exsettings/notification/SoundSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$4;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, "ringerMode":I
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$4;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # invokes: Lcom/android/exsettings/notification/SoundSettings;->updateRingerMode(I)V
    invoke-static {v1, v0}, Lcom/android/exsettings/notification/SoundSettings;->access$300(Lcom/android/exsettings/notification/SoundSettings;I)V

    .line 220
    .end local v0    # "ringerMode":I
    :cond_0
    return-void
.end method
