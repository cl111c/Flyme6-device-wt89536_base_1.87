.class Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/exsettings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "restoreApnUiHandler"    # Landroid/os/Handler;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/exsettings/ApnSettings;

    .line 550
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 551
    iput-object p3, p0, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 552
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 556
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 564
    :goto_0
    return-void

    .line 558
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/exsettings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/exsettings/ApnSettings;

    # getter for: Lcom/android/exsettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/exsettings/ApnSettings;->access$400()Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/android/exsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/exsettings/ApnSettings;->access$500(Lcom/android/exsettings/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
