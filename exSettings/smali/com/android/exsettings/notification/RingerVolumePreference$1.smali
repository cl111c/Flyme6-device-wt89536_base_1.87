.class Lcom/android/exsettings/notification/RingerVolumePreference$1;
.super Landroid/os/Handler;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/RingerVolumePreference;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$1;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$1;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # invokes: Lcom/android/exsettings/notification/RingerVolumePreference;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$000(Lcom/android/exsettings/notification/RingerVolumePreference;)V

    .line 115
    return-void
.end method
