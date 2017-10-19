.class Lcom/android/exsettings/MusicPicker$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/MusicPicker;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MusicPicker;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/exsettings/MusicPicker$1;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$1;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-static {v1}, Lcom/android/exsettings/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$1;->this$0:Lcom/android/exsettings/MusicPicker;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 557
    return-void
.end method
